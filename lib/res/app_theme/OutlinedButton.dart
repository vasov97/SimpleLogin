import 'package:flutter/material.dart';

class OutlinedIconButton extends StatelessWidget {
  final String text;
  final ImageProvider? imageProvider;
  final IconData? iconData;
  final double fontSize;
  final Color textColor;
  final Color iconColor;
  final Color borderColor;
  final double imageSize;
  final double borderRadius;
  final double? width;
  final double? height;
  final VoidCallback onPressed;

  const OutlinedIconButton({super.key,
    required this.text,
    this.imageProvider,
    this.iconData,
    this.fontSize = 16.0,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    this.borderColor = Colors.grey,
    this.imageSize = 16.0,
    this.borderRadius = 10.0,
    this.width,
    this.height=50,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: borderColor),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (imageProvider != null)
              Image(
                image: imageProvider!,
                width: imageSize,
                height: imageSize,
              ),
            if (iconData != null)
              Icon(
                iconData,
                size: imageSize,
                color: iconColor,
              ),
            if (imageProvider != null || iconData != null)const SizedBox(width: 8.0),
            // ignore: unnecessary_null_comparison
            if (text!=null)
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  color: textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

























// import 'package:flutter/material.dart';
//
// class OutlinedIconButton extends StatelessWidget {
//   final String text;
//   final ImageProvider? imageProvider;
//   final IconData? iconData;
//   final double fontSize;
//   final Color textColor;
//   final Color iconColor;
//   final Color borderColor;
//   final double imageSize;
//   final double borderRadius;
//   final VoidCallback onPressed;
//
//   OutlinedIconButton({
//     required this.text,
//     this.imageProvider,
//     this.iconData,
//     this.fontSize = 16.0,
//     this.textColor = Colors.black,
//     this.iconColor = Colors.black,
//     this.borderColor = Colors.black,
//     this.imageSize = 12.0,
//     this.borderRadius = 10.0,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: onPressed,
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all<OutlinedBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(borderRadius),
//           ),
//         ),
//         side: MaterialStateProperty.all<BorderSide>(
//           BorderSide(color: borderColor),
//         ),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           if (imageProvider != null)
//             Image(
//               image: imageProvider!,
//               width: imageSize,
//               height: imageSize,
//             ),
//           if (iconData != null)
//             Icon(
//               iconData,
//               size: imageSize,
//               color: iconColor,
//             ),
//           if (imageProvider != null || iconData != null) SizedBox(width: 8.0),
//           if (text != null)
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: fontSize,
//                 color: textColor,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

























// import 'package:flutter/material.dart';
//
// class OutlinedIconButton extends StatelessWidget {
//   final String? text;
//   final String? imagePath;
//   final IconData? iconData;
//   final double fontSize;
//   final Color textColor;
//   final Color iconColor;
//   final Color borderColor;
//   final double imageSize;
//   final double borderRadius;
//   final VoidCallback onPressed;
//
//   OutlinedIconButton({super.key,
//     this.text,
//     this.imagePath,
//     this.iconData,
//     this.fontSize = 16.0,
//     this.textColor = Colors.black,
//     this.iconColor = Colors.black,
//     this.borderColor = Colors.black,
//     this.imageSize = 12.0,
//     this.borderRadius = 10.0,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: onPressed,
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all<OutlinedBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(borderRadius),
//           ),
//         ),
//         side: MaterialStateProperty.all<BorderSide>(
//           BorderSide(color: borderColor),
//         ),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           if (imagePath != null)
//             Image.asset(
//               imagePath!,
//               width: imageSize,
//               height: imageSize,
//             ),
//           if (iconData != null)
//             Icon(
//               iconData,
//               size: imageSize,
//               color: iconColor,
//             ),
//           if (imagePath != null || iconData != null) SizedBox(width: 8.0),
//           if (text != null)
//             Text(
//               text!,
//               style: TextStyle(
//                 fontSize: fontSize,
//                 color: textColor,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
