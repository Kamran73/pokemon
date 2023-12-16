import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  final String name;
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final bool? enabled;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? hintColor;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final AutovalidateMode? autoValidateMode;
  final InputBorder? errorBorder;
  final Function(String? value)? onChanged;
  final Function(String? value)? onFieldSubmitted;
  final String? Function(String? value)? validator;
  final InputBorder? border;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Function()? onEditingComplete;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final BoxConstraints? prefixBoxConstraints;
  final BoxConstraints? suffixBoxConstraints;

  const CustomFormBuilderTextField({
    Key? key,
    this.readOnly,
    required this.name,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText,
    this.enabled = true,
    this.prefixBoxConstraints,
    this.suffixBoxConstraints,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.fillColor,
    this.maxLines,
    this.minLines,
    this.textStyle,
    this.hintStyle,
    this.errorStyle,
    this.hintColor,
    this.errorText,
    this.contentPadding,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.autoValidateMode,
    this.errorBorder,
    this.border,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.borderRadius,
    this.enabledBorder,
    this.onTap,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onTap: onTap,
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.done,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      enabled: enabled ?? true,
      focusNode: focusNode,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      textAlignVertical: TextAlignVertical.center,
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        prefixIconConstraints: prefixBoxConstraints ??
            const BoxConstraints(
              minWidth: 48,
              maxWidth: 48,
              minHeight: 21,
              maxHeight: 21,
            ),
        suffixIconConstraints: suffixBoxConstraints ??
            const BoxConstraints(
              minWidth: 48,
              maxWidth: 48,
              minHeight: 18,
              maxHeight: 18,
            ),
        isDense: true,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
        enabledBorder: enabledBorder ??
            border ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
        border: border ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
        hintText: hintText,
        hintStyle: hintStyle,
        errorStyle: errorStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
                fontWeight: FontWeight.w700),
        errorText: errorText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? Colors.transparent,
        filled: true,
        errorMaxLines: 2,
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
        disabledBorder: disabledBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(50),
            ),
      ),
      cursorColor: Colors.black,
      onEditingComplete: onEditingComplete,
      name: name,
    );
  }
}
