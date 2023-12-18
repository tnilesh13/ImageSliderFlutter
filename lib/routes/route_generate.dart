// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class RouteGenerate {
//   static const String splashScreen = "/splash";
//   static const String homeScreen = "/home";
//   static const String productDetailsScreen = "/product_details_screen";
//   static const String cartScreen = "/cart_screen";

//   static Widget TransitionBuilderMethod(
//     BuildContext context,
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//     Widget child) {
//       const begin = Offset(1.0, 0.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//       position: animation.drive(tween),
//       child: child,
//     );
//   }

//   static Route<dynamic> generateRoute(RouteSettings setting) {
//     final args = setting.arguments;
//     switch (setting.name) {
//       case homeScreen:
//         return PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//             MultiBlocProvider(providers: [
//             BlocProvider<SearchScreenBloc>(create: (context) {
//               return SearchScreenBloc();
//             }),
//             BlocProvider<CategoryScreenBloc>(create: (context) {
//               return CategoryScreenBloc();
//             }),
//             BlocProvider<MoreScreenBloc>(create: (context) {
//               return MoreScreenBloc();
//             }),
//             BlocProvider<HomeBloc>(create: (context) {
//               return HomeBloc();
//             }),
//           ], child: const DashboardBaseScreen()),
//           transitionsBuilder: TransitionBuilderMethod,
//         );

//       case productDetailsScreen:
//         return PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               BlocProvider<ProductDetailsScreenBloc>(
//                   create: (context) {
//                     return ProductDetailsScreenBloc(
//                         (args as Set<String?>).elementAt(0).toString());
//                   },
//                   child: ProductDetailsScreen()),
//           transitionsBuilder: TransitionBuilderMethod,
//         );

//       case cartScreen:
//         return PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               BlocProvider<CartScreenBloc>(
//                   create: (context) {
//                     return CartScreenBloc();
//                   },
//                   child: CartScreen()),
//           transitionsBuilder: TransitionBuilderMethod,
//         );

//       // case splashScreen:
//       //   return MaterialPageRoute(
//       //       builder: (context) => BlocProvider<SplashScreenBloc>(
//       //           create: (context) {
//       //             return SplashScreenBloc();
//       //           },
//       //           child: SplashScreen()));

//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("Error"),
//           centerTitle: true,
//         ),
//         body: const Center(
//           child: Text('Page Not Found'),
//         ),
//       );
//     });
//   }
// }