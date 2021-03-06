import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterfire_ui/database.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:foto_share/content/foru/item_public.dart';

class FotosForU extends StatelessWidget {
  const FotosForU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirestoreListView(
      query: FirebaseFirestore.instance
        .collection('fshare')
        .where('public', isEqualTo: true),
      itemBuilder: (BuildContext context, QueryDocumentSnapshot<Map<String, dynamic>> document){
        return ItemPublic(publicFData: document.data());
      }
    );
  }
}