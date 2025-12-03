import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('is true Admin Page'),
      ),
      body: const Center(
        child: Text('ここはリダイレクトしないと入れない管理者ページです'),
      ),
    );
  }
}