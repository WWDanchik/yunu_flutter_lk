import 'dart:io';
import 'package:flutter/material.dart';

bool isNetworkImage(String path) {
  return path.startsWith('http://') || path.startsWith('https://');
}

Widget buildImage(String path, {BoxFit fit = BoxFit.cover}) {
  if (isNetworkImage(path)) {
    return Image.network(path, fit: fit);
  } else {
    return Image.file(File(path), fit: fit);
  }
}
