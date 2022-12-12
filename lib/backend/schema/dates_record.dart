import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dates_record.g.dart';

abstract class DatesRecord implements Built<DatesRecord, DatesRecordBuilder> {
  static Serializer<DatesRecord> get serializer => _$datesRecordSerializer;

  String? get asunto;

  @BuiltValueField(wireName: 'fecha_hora')
  DateTime? get fechaHora;

  String? get notas;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatesRecordBuilder builder) => builder
    ..asunto = ''
    ..notas = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Dates');

  static Stream<DatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatesRecord._();
  factory DatesRecord([void Function(DatesRecordBuilder) updates]) =
      _$DatesRecord;

  static DatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatesRecordData({
  String? asunto,
  DateTime? fechaHora,
  String? notas,
}) {
  final firestoreData = serializers.toFirestore(
    DatesRecord.serializer,
    DatesRecord(
      (d) => d
        ..asunto = asunto
        ..fechaHora = fechaHora
        ..notas = notas,
    ),
  );

  return firestoreData;
}
