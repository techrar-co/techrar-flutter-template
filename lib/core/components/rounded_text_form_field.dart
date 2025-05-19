import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../exports/core.dart';

class RoundedTextFormField extends StatefulWidget {
  final String? title;
  final String? hint;
  final String? label;
  final Color? fillColor;
  final bool isBordered;
  final bool minimal;
  final bool autofocus;
  final bool enabled;
  final bool center;
  final bool obscureText;
  final double? fontSize;
  final bool clearButton;
  final TextEditingController? textController;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final EdgeInsets? scrollPadding;
  final EdgeInsets? titlePadding;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextDirection? textDirection;
  final FocusNode? focusNode;
  final double? height;
  final int maxLines;
  final int errorMaxLines;
  final void Function(String)? onSubmitted;
  final int? maxLength;
  final IconData? trailingIcon;
  final bool elevated;
  final BoxDecoration? decoration;
  final bool expanded;
  final BorderRadius? borderRadius;
  final String? initialValue;
  final Function? validator;
  final AutovalidateMode? autovalidateMode;
  final bool parentDispose;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Color? focusedBorderColor;
  final Color? borderColorTextfield;
  final Color? errorColor;
  final String? disabledHint;
  const RoundedTextFormField({
    Key? key,
    this.title,
    this.hint,
    this.onChanged,
    this.keyboardType,
    this.margin,
    this.label,
    this.fillColor,
    this.isBordered = true,
    this.textController,
    this.fontSize,
    this.enabled = true,
    this.padding,
    this.scrollPadding,
    this.obscureText = false,
    this.clearButton = true,
    this.center = false,
    this.hintStyle,
    this.textDirection,
    this.focusNode,
    this.height,
    this.maxLines = 1,
    this.onSubmitted,
    this.maxLength,
    this.trailingIcon,
    this.autofocus = false,
    this.minimal = false,
    this.elevated = true,
    this.decoration,
    this.expanded = false,
    this.borderRadius,
    this.initialValue,
    this.validator,
    this.autovalidateMode,
    this.textStyle,
    this.errorMaxLines = 1,
    this.titlePadding,
    this.parentDispose = false,
    this.floatingLabelBehavior,
    this.focusedBorderColor,
    this.borderColorTextfield,
    this.errorColor,
    this.disabledHint,
  }) : super(key: key);

  @override
  State<RoundedTextFormField> createState() => _RoundedTextFormFieldState();
}

class _RoundedTextFormFieldState extends State<RoundedTextFormField> {
  TextEditingController? _textController;
  bool hidePassword = false;
  bool showClear = true;
  bool hasError = false;

  @override
  void initState() {
    _textController = widget.textController ?? TextEditingController();
    if (widget.initialValue != null) _textController!.text = widget.initialValue!;
    if (widget.clearButton || widget.obscureText) hidePassword = widget.obscureText ? true : false;
    super.initState();
  }

  @override
  void dispose() {
    if (!widget.parentDispose) {
      _textController!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: Titled(
        title: widget.title ?? '',
        padding: widget.titlePadding,
        child: Container(
          padding: widget.expanded ? const EdgeInsets.symmetric(vertical: 10) : null,
          decoration: widget.decoration ?? BoxDecoration(borderRadius: widget.borderRadius ?? Borders.mBorderRadius),
          child: TextFormField(
            scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20.0),
            enabled: widget.enabled,
            autofocus: widget.autofocus,
            autovalidateMode: widget.autovalidateMode ?? (hasError ? AutovalidateMode.onUserInteraction : null),
            textAlignVertical: widget.expanded ? TextAlignVertical.top : null,
            onTap: () => _textController!.selection =
                TextSelection.fromPosition(TextPosition(offset: _textController!.text.length)),
            validator: widget.validator != null
                ? (value) {
                    var error = widget.validator!(value);
                    hasError = error != null;
                    return error;
                  }
                : null,
            onFieldSubmitted: widget.onSubmitted,
            maxLines: widget.expanded
                ? null
                : widget.obscureText
                    ? 1
                    : widget.maxLines,
            maxLength: widget.maxLength,
            controller: _textController,
            obscureText: widget.obscureText ? hidePassword : false,
            textAlign: widget.center ? TextAlign.center : TextAlign.start,
            textDirection: widget.textDirection,
            style: widget.textStyle ??
                TextStyles.body1.copyWith(
                  color: widget.enabled ? kFontsColor : kFontsColor.withOpacity(0.80),
                  fontWeight: widget.enabled ? null : FontWeight.w500,
                ),
            keyboardType: widget.keyboardType,
            focusNode: widget.focusNode,
            decoration: InputDecoration(
              floatingLabelBehavior: widget.floatingLabelBehavior,
              // counterText: '',
              suffixIconConstraints: widget.minimal
                  ? null
                  : widget.trailingIcon != null || widget.clearButton || widget.obscureText
                      ? const BoxConstraints.tightFor(height: 40, width: 40)
                      : null,
              suffixIcon: widget.minimal
                  ? null
                  : widget.trailingIcon != null
                      ? Icon(widget.trailingIcon, color: kFontsColor)
                      : widget.clearButton || widget.obscureText
                          ? AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: _textController!.text.isNotEmpty ? 1 : 0,
                              child: InkWell(
                                onTap: () => setState(
                                  () {
                                    if (_textController!.text.isNotEmpty) {
                                      widget.obscureText ? hidePassword = !hidePassword : _textController!.clear();
                                    }
                                    if (widget.onChanged != null) widget.onChanged!(_textController?.text ?? '');
                                  },
                                ),
                                child: Icon(
                                  widget.obscureText ? CupertinoIcons.eye_solid : CupertinoIcons.clear_circled_solid,
                                  color: kFontsColor,
                                  size: widget.obscureText ? 25 : 20,
                                ),
                              ),
                            )
                          : null,
              fillColor: widget.minimal ? null : widget.fillColor ?? Colors.white,
              filled: widget.isBordered ? false : true,
              labelText: widget.label,
              contentPadding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              errorMaxLines: widget.errorMaxLines,
              focusedErrorBorder: widget.minimal
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    )
                  : OutlineInputBorder(
                      gapPadding: 5,
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: widget.borderRadius ?? Borders.mBorderRadius,
                    ),
              errorBorder: widget.minimal
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    )
                  : OutlineInputBorder(
                      gapPadding: 5,
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: widget.borderRadius ?? Borders.mBorderRadius,
                    ),
              focusedBorder: widget.minimal
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: widget.focusedBorderColor ?? kPrimaryColor,
                      ),
                    )
                  : OutlineInputBorder(
                      gapPadding: 5,
                      borderSide: BorderSide(
                          color: widget.isBordered
                              ? widget.focusedBorderColor ?? kPrimaryColor.withOpacity(0.55)
                              : kTransparent),
                      borderRadius: widget.borderRadius ?? Borders.mBorderRadius,
                    ),
              enabledBorder: widget.minimal
                  ? null
                  : OutlineInputBorder(
                      gapPadding: 5,
                      borderSide: BorderSide(
                          color: widget.isBordered ? widget.borderColorTextfield ?? Colors.grey : kTransparent),
                      borderRadius: widget.borderRadius ?? Borders.mBorderRadius,
                    ),
              disabledBorder: widget.minimal
                  ? null
                  : OutlineInputBorder(
                      gapPadding: 5,
                      borderSide: BorderSide(color: widget.isBordered ? Colors.grey.withOpacity(0.1) : kTransparent),
                      borderRadius: widget.borderRadius ?? Borders.mBorderRadius,
                    ),
              hintText: widget.enabled ? widget.hint : widget.disabledHint,
              hintStyle: widget.hintStyle ?? TextStyles.body1.withColor(kHintFontsColor),
            ),
            onChanged: (value) {
              if (widget.onChanged != null) widget.onChanged!(value);
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
