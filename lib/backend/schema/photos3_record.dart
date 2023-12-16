import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Photos3Record extends FirestoreRecord {
  Photos3Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "img3" field.
  String? _img3;
  String get img3 => _img3 ?? '';
  bool hasImg3() => _img3 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _img3 = snapshotData['img3'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('photos3')
          : FirebaseFirestore.instance.collectionGroup('photos3');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('photos3').doc();

  static Stream<Photos3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Photos3Record.fromSnapshot(s));

  static Future<Photos3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Photos3Record.fromSnapshot(s));

  static Photos3Record fromSnapshot(DocumentSnapshot snapshot) =>
      Photos3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Photos3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Photos3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Photos3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Photos3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotos3RecordData({
  String? img3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img3': img3,
    }.withoutNulls,
  );

  return firestoreData;
}

class Photos3RecordDocumentEquality implements Equality<Photos3Record> {
  const Photos3RecordDocumentEquality();

  @override
  bool equals(Photos3Record? e1, Photos3Record? e2) {
    return e1?.img3 == e2?.img3;
  }

  @override
  int hash(Photos3Record? e) => const ListEquality().hash([e?.img3]);

  @override
  bool isValidKey(Object? o) => o is Photos3Record;
}
