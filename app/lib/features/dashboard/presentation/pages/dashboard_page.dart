import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popina_flutter_test/core/data/models/till_model.dart';
import 'package:popina_flutter_test/core/errors/failures/failure.dart';
import 'package:popina_flutter_test/core/injectable/injection.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/dashboard/presentation/bloc/api_bloc/api_bloc.dart';
import 'package:popina_flutter_test/features/dashboard/presentation/widgets/order_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late RefreshController _refresherController;
  late ApiBloc _apiBloc;
  TillModel? tillModel;

  @override
  void initState() {
    // Pull to refresh controller
    _refresherController = new RefreshController(initialRefresh: true);
    _apiBloc = getIt<ApiBloc>();
  }

  @override
  void dispose() {
    // Close bloc after finishing using the stream
    _apiBloc.close();
    super.dispose();
  }

  void _onRefresh() async {
    // Add event to invoke the getData function to get data from API
    _apiBloc..add(ApiEvent.getData());
  }

  void _onLoading() async {
    // Add event to invoke the getData function to get data from API
    _apiBloc..add(ApiEvent.getData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _apiBloc,
      child: SafeArea(
        child: BlocBuilder<ApiBloc, ApiState>(
          builder: (context, state) {

            // Build ui depends on the state of the HTTP request
            String message = "";
            state.type.maybeWhen(
              initial: () {
                message = "";
              },
              loadingInProgress: () {
                message = "Loading ...";
              },
              loadingSuccess: () {
                // On success get data
                _refresherController.refreshCompleted();
                tillModel = state.tillModel;
                message = "";
              },
              loadingFailed: (failure) {
                // On error show a message
                _refresherController.refreshFailed();
                if (failure is ServerFailure)
                  message = "Server Error";
                else if (failure is NetworkFailure)
                  message = "Network Error";
                else
                  message = "Error";
              },
              orElse: () {});
            return Scaffold(
              appBar: PreferredSize(
                preferredSize:
                    Size(MediaQuery.of(context).size.width, kToolbarHeight),
                child: AppBarWidget(
                  title: tillModel != null ? tillModel!.orders!.length.toString() + " commandes" : message,
                ),
              ),
              backgroundColor: Colors.grey[100],
              body: SmartRefresher(
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                controller: _refresherController,
                child: ListView(
                  children: [
                    SizedBox(height: 5,),
                    // Check if there is no orders
                    if (tillModel != null)
                      ...tillModel!.orders!.map((order) => OrderWidget(orderModel: order)).toList(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
