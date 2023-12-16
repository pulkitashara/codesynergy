import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Todo3Record extends FirestoreRecord {
  Todo3Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task3" field.
  String? _task3;
  String get task3 => _task3 ?? '';
  bool hasTask3() => _task3 != null;

  // "desp3" field.
  String? _desp3;
  String get desp3 => _desp3 ?? '';
  bool hasDesp3() => _desp3 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _task3 = snapshotData['task3'] as String?;
    _desp3 = snapshotData['desp3'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('todo3')
          : FirebaseFirestore.instance.collectionGroup('todo3');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('todo3').doc();

  static Stream<Todo3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Todo3Record.fromSnapshot(s));

  static Future<Todo3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Todo3Record.fromSnapshot(s));

  static Todo3Record fromSnapshot(DocumentSnapshot snapshot) => Todo3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Todo3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Todo3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Todo3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Todo3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodo3RecordData({
  String? task3,
  String? desp3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task3': task3,
      'desp3': desp3,
    }.withoutNulls,
  );

  return firestoreData;
}

class Todo3RecordDocumentEquality implements Equality<Todo3Record> {
  const Todo3RecordDocumentEquality();

  @override
  bool equals(Todo3Record? e1, Todo3Record? e2) {
    return e1?.task3 == e2?.task3 && e1?.desp3 == e2?.desp3;
  }

  @override
  int hash(Todo3Record? e) => const ListEquality().hash([e?.task3, e?.desp3]);

  @override
  bool isValidKey(Object? o) => o is Todo3Record;
}
