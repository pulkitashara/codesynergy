import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodoRecord extends FirestoreRecord {
  TodoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task" field.
  String? _task;
  String get task => _task ?? '';
  bool hasTask() => _task != null;

  // "desp" field.
  String? _desp;
  String get desp => _desp ?? '';
  bool hasDesp() => _desp != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _task = snapshotData['task'] as String?;
    _desp = snapshotData['desp'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('todo')
          : FirebaseFirestore.instance.collectionGroup('todo');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('todo').doc();

  static Stream<TodoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodoRecord.fromSnapshot(s));

  static Future<TodoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodoRecord.fromSnapshot(s));

  static TodoRecord fromSnapshot(DocumentSnapshot snapshot) => TodoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodoRecordData({
  String? task,
  String? desp,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task': task,
      'desp': desp,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodoRecordDocumentEquality implements Equality<TodoRecord> {
  const TodoRecordDocumentEquality();

  @override
  bool equals(TodoRecord? e1, TodoRecord? e2) {
    return e1?.task == e2?.task && e1?.desp == e2?.desp && e1?.time == e2?.time;
  }

  @override
  int hash(TodoRecord? e) =>
      const ListEquality().hash([e?.task, e?.desp, e?.time]);

  @override
  bool isValidKey(Object? o) => o is TodoRecord;
}
