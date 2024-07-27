import 'package:flutter/material.dart';

class _MainPagState extends StatefulWidget {
  const _MainPagState({super.key});

  @override
  State<_MainPagState> createState() => __MainPagStateState();
}

class __MainPagStateState extends State<_MainPagState> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/avatar.jpg', width: 150, height: 150),
        
      ],
    );
  }
}