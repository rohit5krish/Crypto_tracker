import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:triveous_machine_test/domain/coins_model/coins_model.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future addFavDb({required CoinsModel crypto}) async {
    List dbFavDatas = await getSavedFavorites();
    dbFavDatas.add({
      "id": crypto.id,
      "symbol": crypto.symbol,
      "name": crypto.name,
      "image": crypto.image,
      "current_price": crypto.currentPrice,
    });
    await _firestore
        .collection('userDetails')
        .doc(_auth.currentUser!.uid)
        .update({"favorites": dbFavDatas});
  }

  Future deleteFavDb({required int index}) async {
    List dbFavDatas = await getSavedFavorites();
    dbFavDatas.removeAt(index);
    await _firestore
        .collection('userDetails')
        .doc(_auth.currentUser!.uid)
        .update({"favorites": dbFavDatas});
  }

  Future<List> getSavedFavorites() async {
    DocumentSnapshot snap = await _firestore
        .collection('userDetails')
        .doc(_auth.currentUser!.uid)
        .get();
    var snapshot = snap.data() as Map<String, dynamic>;
    final List favDetails = snapshot["favorites"];
    // (snapshot["favorites"] as List).map((e) {
    //   return CoinsModel.fromJson(e);
    // }).toList();
    if (favDetails.isEmpty) {
      List favs = [];
      return favs;
    }
    return favDetails;
  }
}
