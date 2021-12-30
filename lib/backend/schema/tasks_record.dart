import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tasks_record.g.dart';

abstract class TasksRecord implements Built<TasksRecord, TasksRecordBuilder> {
  static Serializer<TasksRecord> get serializer => _$tasksRecordSerializer;

  @nullable
  DateTime get created;

  @nullable
  DateTime get due;

  @nullable
  String get name;

  @nullable
  String get priority;

  @nullable
  String get category;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  String get userId;

  @nullable
  String get tag;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TasksRecordBuilder builder) => builder
    ..name = ''
    ..priority = ''
    ..category = ''
    ..userId = ''
    ..tag = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TasksRecord._();
  factory TasksRecord([void Function(TasksRecordBuilder) updates]) =
      _$TasksRecord;

  static TasksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTasksRecordData({
  DateTime created,
  DateTime due,
  String name,
  String priority,
  String category,
  String userId,
  String tag,
}) =>
    serializers.toFirestore(
        TasksRecord.serializer,
        TasksRecord((t) => t
          ..created = created
          ..due = due
          ..name = name
          ..priority = priority
          ..category = category
          ..userId = userId
          ..tag = tag));
