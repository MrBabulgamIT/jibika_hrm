import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/color_widget.dart';

class ReusableDropdownButtonFormFieldBoderLess<T> extends FormField<T> {
  final bool extraPadding;
  final String labelText;
  final List<DropdownMenuItem<T>> items;
  final T value;
  // final ValueChanged<T> onChange;
  final Function(T?)? onChange;

  ReusableDropdownButtonFormFieldBoderLess({
    Key? key,
    this.extraPadding = false,
    required this.labelText,
    required this.items,
    required this.value,
    required this.onChange,
    FormFieldSetter<T>? onSaved,
    FormFieldValidator<T>? validator,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          builder: (FormFieldState<T> state) {
            return InputDecorator(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  bottom: 0.h,
                ),
                prefixIconConstraints: const BoxConstraints(),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: colorSecondary, width: 1)),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: colorSecondary, width: 1)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Image(
                    image: const AssetImage("images/business.png"),
                    height: 19.h,
                    color: colorPrimary,
                    width: 19.w,
                  ),
                ),
                suffixIconColor: colorPrimary,
              ),
              child: Container(
                padding: extraPadding
                    ? const EdgeInsets.symmetric(vertical: 5)
                    : null,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<T>(
                    value: value,
                    items: items,
                    onChanged: onChange,
                    isExpanded: true,
                  ),
                ),
              ),
            );
          },
        );
}
