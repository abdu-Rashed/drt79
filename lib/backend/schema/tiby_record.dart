import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TibyRecord extends FirestoreRecord {
  TibyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "home" field.
  String? _home;
  String get home => _home ?? '';
  bool hasHome() => _home != null;

  void _initializeFields() {
    _home = snapshotData['home'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tiby');

  static Stream<TibyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TibyRecord.fromSnapshot(s));

  static Future<TibyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TibyRecord.fromSnapshot(s));

  static TibyRecord fromSnapshot(DocumentSnapshot snapshot) => TibyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TibyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TibyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TibyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TibyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTibyRecordData({
  String? home,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'home': home,
    }.withoutNulls,
  );

  return firestoreData;
}

class TibyRecordDocumentEquality implements Equality<TibyRecord> {
  const TibyRecordDocumentEquality();

  @override
  bool equals(TibyRecord? e1, TibyRecord? e2) {
    return e1?.home == e2?.home;
  }

  @override
  int hash(TibyRecord? e) => const ListEquality().hash([e?.home]);

  @override
  bool isValidKey(Object? o) => o is TibyRecord;
}
