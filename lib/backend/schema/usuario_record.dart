import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  @BuiltValueField(wireName: 'Correo_e')
  String? get correoE;

  String? get password;

  String? get nombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..correoE = ''
    ..password = ''
    ..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioRecordData({
  String? correoE,
  String? password,
  String? nombre,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioRecord.serializer,
    UsuarioRecord(
      (u) => u
        ..correoE = correoE
        ..password = password
        ..nombre = nombre,
    ),
  );

  return firestoreData;
}
