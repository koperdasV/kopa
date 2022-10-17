// ignore_for_file: avoid_print

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kopa/resources/constant.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class PhotoGridViewWidget extends StatefulWidget {
  const PhotoGridViewWidget({
    Key? key,
    // this.imageUrl,
  }) : super(key: key);

  // final String? imageUrl;

  @override
  State<PhotoGridViewWidget> createState() => _PhotoGridViewWidgetState();
}

class _PhotoGridViewWidgetState extends State<PhotoGridViewWidget> {
  File? image;
  Future pickImage(int index) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.cardColor,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () async {
                  pickImage(index);
                },
                child: (image != null)
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.file(image!),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: AppColor.kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
              ));
        },
      ),
    );
  }
}
