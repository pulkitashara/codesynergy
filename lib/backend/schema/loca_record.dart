import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocaRecord extends FirestoreRecord {
  LocaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('loca')
          : FirebaseFirestore.instance.collectionGroup('loca');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('loca').doc();

  static Stream<LocaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocaRecord.fromSnapshot(s));

  static Future<LocaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocaRecord.fromSnapshot(s));

  static LocaRecord fromSnapshot(DocumentSnapshot snapshot) => LocaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocaRecordData({
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocaRecordDocumentEquality implements Equality<LocaRecord> {
  const LocaRecordDocumentEquality();

  @override
  bool equals(LocaRecord? e1, LocaRecord? e2) {
    return e1?.location == e2?.location;
  }

  @override
  int hash(LocaRecord? e) => const ListEquality().hash([e?.location]);

  @override
  bool isValidKey(Object? o) => o is LocaRecord;
}
