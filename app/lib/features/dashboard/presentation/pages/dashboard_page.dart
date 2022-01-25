import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  @override
  void initState() {
    _refresherController = new RefreshController();
    _apiBloc = getIt<ApiBloc>();
  }

  @override
  void dispose() {
    _apiBloc.close();
    super.dispose();
  }

  void _onRefresh() async {
    _apiBloc..add(ApiEvent.getData());
  }

  void _onLoading() async {
    _apiBloc..add(ApiEvent.getData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _apiBloc,
      child: SafeArea(
        child: BlocBuilder<ApiBloc, ApiState>(
          builder: (context, state) {
            state.type.maybeMap(
              loadingSuccess: (data) {
                _refresherController.refreshCompleted();
              },
              loadingFailed: (failure) {
                _refresherController.refreshFailed();
              },
              orElse: () {});
            return Scaffold(
              appBar: PreferredSize(
                preferredSize:
                    Size(MediaQuery.of(context).size.width, kToolbarHeight),
                child: AppBarWidget(
                  title: "3 commandes",
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
                    OrderWidget(),
                    OrderWidget(),
                    OrderWidget(),
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
