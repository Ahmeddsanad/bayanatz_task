import 'package:flutter/material.dart';
 
bool isTablet(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final diagonal = size.width * size.width + size.height * size.height;
  return diagonal > 1100 * 1100; 
}

 bool isMobile(BuildContext context) {
  return !isTablet(context);
}
