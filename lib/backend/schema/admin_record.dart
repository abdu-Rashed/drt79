import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminRecord extends FirestoreRecord {
  AdminRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Usernumber" field.
  double? _usernumber;
  double get usernumber => _usernumber ?? 0.0;
  bool hasUsernumber() => _usernumber != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Constructiontime" field.
  DateTime? _constructiontime;
  DateTime? get constructiontime => _constructiontime;
  bool hasConstructiontime() => _constructiontime != null;

  // "update1" field.
  DateTime? _update1;
  DateTime? get update1 => _update1;
  bool hasUpdate1() => _update1 != null;

  // "iduser" field.
  DocumentReference? _iduser;
  DocumentReference? get iduser => _iduser;
  bool hasIduser() => _iduser != null;

  void _initializeFields() {
    _usernumber = castToType<double>(snapshotData['Usernumber']);
    _password = snapshotData['Password'] as String?;
    _constructiontime = snapshotData['Constructiontime'] as DateTime?;
    _update1 = snapshotData['update1'] as DateTime?;
    _iduser = snapshotData['iduser'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin');

  static Stream<AdminRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminRecord.fromSnapshot(s));

  static Future<AdminRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminRecord.fromSnapshot(s));

  static AdminRecord fromSnapshot(DocumentSnapshot snapshot) => AdminRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminRecordData({
  double? usernumber,
  String? password,
  DateTime? constructiontime,
  DateTime? update1,
  DocumentReference? iduser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Usernumber': usernumber,
      'Password': password,
      'Constructiontime': constructiontime,
      'update1': update1,
      'iduser': iduser,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminRecordDocumentEquality implements Equality<AdminRecord> {
  const AdminRecordDocumentEquality();

  @override
  bool equals(AdminRecord? e1, AdminRecord? e2) {
    return e1?.usernumber == e2?.usernumber &&
        e1?.password == e2?.password &&
        e1?.constructiontime == e2?.constructiontime &&
        e1?.update1 == e2?.update1 &&
        e1?.iduser == e2?.iduser;
  }

  @override
  int hash(AdminRecord? e) => const ListEquality().hash(
      [e?.usernumber, e?.password, e?.constructiontime, e?.update1, e?.iduser]);

  @override
  bool isValidKey(Object? o) => o is AdminRecord;
}
