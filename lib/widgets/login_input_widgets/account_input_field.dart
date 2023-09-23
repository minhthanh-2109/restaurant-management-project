import 'package:flutter/material.dart';

class AccountInputField extends StatefulWidget {
  final TextEditingController controller;
  const AccountInputField({super.key, required this.controller});

  State<AccountInputField> createState() {
    return _AccountInputFiledState();
  }
}

class _AccountInputFiledState extends State<AccountInputField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: TextFormField(
        controller: widget.controller,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Tài Khoản',
          hintStyle: const TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF0B191E),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFF1F4F8),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        style: const TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          color: Color(0xFF0B191E),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
