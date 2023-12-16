import 'package:assessment/helper/extensions/num_extenstion.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnTxt;
  final double? height, width;
  final bool? loading, isDisabled;
  final VoidCallback onPressed;
  final Color? btnClr, textClr;

  const CustomButton({
    super.key,
    required this.btnTxt,
    required this.onPressed,
    this.height,
    this.width,
    this.loading,
    this.btnClr,
    this.textClr,
    this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled == false
          ? () {
              if (FocusScope.of(context).hasFocus) {
                FocusScope.of(context).unfocus();
              }

              if (FocusManager.instance.primaryFocus?.hasFocus ?? false) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
              onPressed();
            }
          : null,
      child: Container(
        height: height ?? 45,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnClr ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 1.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (loading ?? false)
              const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeCap: StrokeCap.butt,
                ),
              ),
            if (loading ?? false) 10.sizedWidth,
            Text(
              btnTxt,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: textClr ?? Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
