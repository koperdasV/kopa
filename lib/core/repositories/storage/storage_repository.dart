import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:kopa/core/repositories/storage/base_storage_repository.dart';

class StorageRepository extends BaseStorageRepository {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  @override
  Future<void> uploadImage(FirebaseAuth user, XFile image) async {
    try {
      await storage.ref('${user.currentUser!.uid}/${image.name}').putFile(
            File(image.path),
          );
    } catch (err) {
      print(err);
    }
  }

  @override
  Future<String> getDownloadURL(FirebaseAuth user, String imageName) async {
    String downloadURL = await storage
        .ref('${user.currentUser!.uid}/$imageName')
        .getDownloadURL();
    return downloadURL;
  }
}
