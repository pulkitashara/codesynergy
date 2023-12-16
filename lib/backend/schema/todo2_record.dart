import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Todo2Record extends FirestoreRecord {
  Todo2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task2" field.
  String? _task2;
  String get task2 => _task2 ?? '';
  bool hasTask2() => _task2 != null;

  // "desp2" field.
  String? _desp2;
  String get desp2 => _desp2 ?? '';
  bool hasDesp2() => _desp2 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _task2 = snapshotData['task2'] as String?;
    _desp2 = snapshotData['desp2'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('todo2')
          : FirebaseFirestore.instance.collectionGroup('todo2');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('todo2').doc();

  static Stream<Todo2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Todo2Record.fromSnapshot(s));

  static Future<Todo2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Todo2Record.fromSnapshot(s));

  static Todo2Record fromSnapshot(DocumentSnapshot snapshot) => Todo2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Todo2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Todo2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Todo2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Todo2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodo2RecordData({
  String? task2,
  String? desp2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task2': task2,
      'desp2': desp2,
    }.withoutNulls,
  );

  return firestoreData;
}

class Todo2RecordDocumentEquality implements Equality<Todo2Record> {
  const Todo2RecordDocumentEquality();

  @override
  bool equals(Todo2Record? e1, Todo2Record? e2) {
    return e1?.task2 == e2?.task2 && e1?.desp2 == e2?.desp2;
  }

  @override
  int hash(Todo2Record? e) => const ListEquality().hash([e?.task2, e?.desp2]);

  @override
  bool isValidKey(Object? o) => o is Todo2Record;
}
