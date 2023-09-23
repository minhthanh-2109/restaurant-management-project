import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordFormField({super.key, required this.controller});

  @override
  State<PasswordFormField> createState() {
    return _PasswordFormFieldState();
  }
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscurePassword,
        decoration: InputDecoration(
          labelText: 'Mật Khẩu',
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
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
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
