// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:kopa/core/repositories/database/base_database_repository.dart';
// import 'package:kopa/core/repositories/storage/storage_repository.dart';


// class DatabaseRepository extends BaseDatabaseRepository {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

//   @override
//   Stream<User> getUser(String userId) {
//     print('Getting user images from DB');
//     return _firebaseFirestore
//         .collection('users')
//         .doc(userId)
//         .snapshots()
//         .map((snap) => FirebaseAuth(snap));
//   }

//   @override
//   Stream<List<User>> getUsers(
//     String userId,
//     String gender,
//   ) {
//     return _firebaseFirestore
//         .collection('users')
//         .where('gender', isNotEqualTo: gender)
//         .snapshots()
//         .map((snap) {
//       return snap.docs.map((doc) => User.fromSnapshot(doc)).toList();
//     });
//   }

//   @override
//   Future<void> createUser(FirebaseAuth user) async {
//     await _firebaseFirestore.collection('users').doc(user.currentUser!.uid).set(user.currentUser!.uid);
//   }

//   @override
//   Future<void> updateUser(FirebaseAuth user) async {
//     return _firebaseFirestore
//         .collection('users')
//         .doc(user.currentUser!.uid)
//         .update(user.currentUser!.uid)
//         .then(
//           (value) => print('User document updated.'),
//         );
//   }

//   @override
//   Future<void> updateUserPictures(FirebaseAuth user, String imageName) async {
//     String downloadUrl =
//         await StorageRepository().getDownloadURL(user, imageName);

//     return _firebaseFirestore.collection('users').doc(user.currentUser!.uid).update({
//       'imageUrls': FieldValue.arrayUnion([downloadUrl])
//     });
//   }
// }