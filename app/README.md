
# Popina Test

Popina  Test project in flutter

## Getting Started

## How to Use

**Step 1:**

Download or clone this repo

```
git clone https://github.com/yassinereptor/test-flutter.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

**Step 3:**

This project uses `freezed` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

**Step 4:**

This command installs the flutter app in selected device:

```
flutter install 
```

**Step 5:**

This command compiles to release mode:

```
flutter run --release 
```

## Project Features:

* Orders Screen
* Items Screen

### Libraries & Tools Used

* FlutterBloC : State Manager
* Dio : HTTP Client
* DotEnv : Enviroment variables manager
* Injectable : To Add Injecatables to your dependencies

## Porject Principles

### Inroduction

My Approach was inspired by [Our friendly Uncle Bob](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)  and ResoCoder, we should all strive to separate code into independent layers and depend on abstractions instead of concrete implementations.

![enter image description here](https://i1.wp.com/resocoder.com/wp-content/uploads/2019/08/CleanArchitecture.jpg?w=772&ssl=1)

![enter image description here](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1)

### Steps

* Analysing the api and the data that we will manipulate
* Creating the basic foldes and files structure
* Creating the matching basic UI without logic
* Add repositories to get from the remote source
* Add global and orders and item models
* Add remote source to get from api with Dio
* Populate and test models with data
* Add error managment (Exceptions, Failures)
* Create bloc folder and generate bloc basic files
* Add logic to bloc and manage states with returning the corresponding error type in case of failure and yeild success if we get data successfuly
* Fill Orders and Items pages with data i got from the api
* Test everything 
* Add Comments and push to remote repository