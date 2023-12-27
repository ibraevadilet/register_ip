import 'package:auto_route/auto_route.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_ip/features/bottom_navigator/logic/bottom_navigator_cubit/bottom_navigator_cubit.dart';

@RoutePage()
class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigatorCubit, BottomNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          body: DoubleBackToCloseApp(
            snackBar: const SnackBar(
              content: Text('Нажмите еще раз, чтобы выйти'),
              duration: Duration(seconds: 1),
            ),
            child: pages[state.index],
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purple,
            selectedItemColor: Colors.white,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.black,
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            currentIndex: state.index,
            onTap: (index) {
              context.read<BottomNavigatorCubit>().getCurrentPage(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}

List<Widget> pages = [
  const Center(
    child: Text('1'),
  ),
  const Center(
    child: Text('2'),
  ),
];
