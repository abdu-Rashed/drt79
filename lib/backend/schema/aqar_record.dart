import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AqarRecord extends FirestoreRecord {
  AqarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Detailstitel" field.
  String? _detailstitel;
  String get detailstitel => _detailstitel ?? '';
  bool hasDetailstitel() => _detailstitel != null;

  // "Details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "imag" field.
  String? _imag;
  String get imag => _imag ?? '';
  bool hasImag() => _imag != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Usernumber" field.
  String? _usernumber;
  String get usernumber => _usernumber ?? '';
  bool hasUsernumber() => _usernumber != null;

  // "Creationdate" field.
  DateTime? _creationdate;
  DateTime? get creationdate => _creationdate;
  bool hasCreationdate() => _creationdate != null;

  // "saleorburchasing" field.
  String? _saleorburchasing;
  String get saleorburchasing => _saleorburchasing ?? '';
  bool hasSaleorburchasing() => _saleorburchasing != null;

  // "SaleorRent" field.
  String? _saleorRent;
  String get saleorRent => _saleorRent ?? '';
  bool hasSaleorRent() => _saleorRent != null;

  // "Area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "DownPyment" field.
  int? _downPyment;
  int get downPyment => _downPyment ?? 0;
  bool hasDownPyment() => _downPyment != null;

  // "PaymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "LeasePeriod" field.
  String? _leasePeriod;
  String get leasePeriod => _leasePeriod ?? '';
  bool hasLeasePeriod() => _leasePeriod != null;

  // "stateorno" field.
  bool? _stateorno;
  bool get stateorno => _stateorno ?? false;
  bool hasStateorno() => _stateorno != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _detailstitel = snapshotData['Detailstitel'] as String?;
    _details = snapshotData['Details'] as String?;
    _image = getDataList(snapshotData['image']);
    _imag = snapshotData['imag'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _usernumber = snapshotData['Usernumber'] as String?;
    _creationdate = snapshotData['Creationdate'] as DateTime?;
    _saleorburchasing = snapshotData['saleorburchasing'] as String?;
    _saleorRent = snapshotData['SaleorRent'] as String?;
    _area = snapshotData['Area'] as String?;
    _downPyment = castToType<int>(snapshotData['DownPyment']);
    _paymentType = snapshotData['PaymentType'] as String?;
    _leasePeriod = snapshotData['LeasePeriod'] as String?;
    _stateorno = snapshotData['stateorno'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AQAR');

  static Stream<AqarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AqarRecord.fromSnapshot(s));

  static Future<AqarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AqarRecord.fromSnapshot(s));

  static AqarRecord fromSnapshot(DocumentSnapshot snapshot) => AqarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AqarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AqarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AqarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AqarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAqarRecordData({
  String? type,
  double? price,
  String? detailstitel,
  String? details,
  String? imag,
  DocumentReference? user,
  String? usernumber,
  DateTime? creationdate,
  String? saleorburchasing,
  String? saleorRent,
  String? area,
  int? downPyment,
  String? paymentType,
  String? leasePeriod,
  bool? stateorno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'Price': price,
      'Detailstitel': detailstitel,
      'Details': details,
      'imag': imag,
      'user': user,
      'Usernumber': usernumber,
      'Creationdate': creationdate,
      'saleorburchasing': saleorburchasing,
      'SaleorRent': saleorRent,
      'Area': area,
      'DownPyment': downPyment,
      'PaymentType': paymentType,
      'LeasePeriod': leasePeriod,
      'stateorno': stateorno,
    }.withoutNulls,
  );

  return firestoreData;
}

class AqarRecordDocumentEquality implements Equality<AqarRecord> {
  const AqarRecordDocumentEquality();

  @override
  bool equals(AqarRecord? e1, AqarRecord? e2) {
    const listEquality = ListEquality();
    return e1?.type == e2?.type &&
        e1?.price == e2?.price &&
        e1?.detailstitel == e2?.detailstitel &&
        e1?.details == e2?.details &&
        listEquality.equals(e1?.image, e2?.image) &&
        e1?.imag == e2?.imag &&
        e1?.user == e2?.user &&
        e1?.usernumber == e2?.usernumber &&
        e1?.creationdate == e2?.creationdate &&
        e1?.saleorburchasing == e2?.saleorburchasing &&
        e1?.saleorRent == e2?.saleorRent &&
        e1?.area == e2?.area &&
        e1?.downPyment == e2?.downPyment &&
        e1?.paymentType == e2?.paymentType &&
        e1?.leasePeriod == e2?.leasePeriod &&
        e1?.stateorno == e2?.stateorno;
  }

  @override
  int hash(AqarRecord? e) => const ListEquality().hash([
        e?.type,
        e?.price,
        e?.detailstitel,
        e?.details,
        e?.image,
        e?.imag,
        e?.user,
        e?.usernumber,
        e?.creationdate,
        e?.saleorburchasing,
        e?.saleorRent,
        e?.area,
        e?.downPyment,
        e?.paymentType,
        e?.leasePeriod,
        e?.stateorno
      ]);

  @override
  bool isValidKey(Object? o) => o is AqarRecord;
}
