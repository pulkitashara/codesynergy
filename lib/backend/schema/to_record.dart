import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToRecord extends FirestoreRecord {
  ToRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "go" field.
  String? _go;
  String get go => _go ?? '';
  bool hasGo() => _go != null;

  // "work" field.
  String? _work;
  String get work => _work ?? '';
  bool hasWork() => _work != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _go = snapshotData['go'] as String?;
    _work = snapshotData['work'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('to')
          : FirebaseFirestore.instance.collectionGroup('to');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('to').doc();

  static Stream<ToRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToRecord.fromSnapshot(s));

  static Future<ToRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToRecord.fromSnapshot(s));

  static ToRecord fromSnapshot(DocumentSnapshot snapshot) => ToRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToRecordData({
  String? go,
  String? work,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'go': go,
      'work': work,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToRecordDocumentEquality implements Equality<ToRecord> {
  const ToRecordDocumentEquality();

  @override
  bool equals(ToRecord? e1, ToRecord? e2) {
    return e1?.go == e2?.go && e1?.work == e2?.work;
  }

  @override
  int hash(ToRecord? e) => const ListEquality().hash([e?.go, e?.work]);

  @override
  bool isValidKey(Object? o) => o is ToRecord;
}
