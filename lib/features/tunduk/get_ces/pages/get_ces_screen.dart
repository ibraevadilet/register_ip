import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:register_ip/features/tunduk/get_ces/pages/widgets/get_ces_main.dart';

@RoutePage()
class GetCesScreen extends StatefulWidget {
  const GetCesScreen({super.key});

  @override
  State<GetCesScreen> createState() => _GetCesScreenState();
}

class _GetCesScreenState extends State<GetCesScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _innController = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _innController.dispose();
    _phoneNumber.dispose();
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Удаленное получение ОЭП',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: GetCesMain(
        emailController: _emailController,
        idController: _idController,
        passwordController: _passwordController,
        innController: _innController,
        phoneNumbe: _phoneNumber,
      ),
    );
  }
}
