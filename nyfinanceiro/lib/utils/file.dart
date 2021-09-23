import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'dart:io';

// Upload file to back4app server
// @param path: File path
// @return ParseFileBase?
Future<ParseFileBase?> upload(PickedFile? file) async {
  ParseFileBase? parseFile = ParseFile(File(file!.path));
  await parseFile.save();

  return parseFile;
}