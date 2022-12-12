// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatesRecord> _$datesRecordSerializer = new _$DatesRecordSerializer();

class _$DatesRecordSerializer implements StructuredSerializer<DatesRecord> {
  @override
  final Iterable<Type> types = const [DatesRecord, _$DatesRecord];
  @override
  final String wireName = 'DatesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.asunto;
    if (value != null) {
      result
        ..add('asunto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaHora;
    if (value != null) {
      result
        ..add('fecha_hora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.notas;
    if (value != null) {
      result
        ..add('notas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DatesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'asunto':
          result.asunto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha_hora':
          result.fechaHora = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'notas':
          result.notas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DatesRecord extends DatesRecord {
  @override
  final String? asunto;
  @override
  final DateTime? fechaHora;
  @override
  final String? notas;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatesRecord([void Function(DatesRecordBuilder)? updates]) =>
      (new DatesRecordBuilder()..update(updates))._build();

  _$DatesRecord._({this.asunto, this.fechaHora, this.notas, this.ffRef})
      : super._();

  @override
  DatesRecord rebuild(void Function(DatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatesRecordBuilder toBuilder() => new DatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatesRecord &&
        asunto == other.asunto &&
        fechaHora == other.fechaHora &&
        notas == other.notas &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, asunto.hashCode), fechaHora.hashCode), notas.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatesRecord')
          ..add('asunto', asunto)
          ..add('fechaHora', fechaHora)
          ..add('notas', notas)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatesRecordBuilder implements Builder<DatesRecord, DatesRecordBuilder> {
  _$DatesRecord? _$v;

  String? _asunto;
  String? get asunto => _$this._asunto;
  set asunto(String? asunto) => _$this._asunto = asunto;

  DateTime? _fechaHora;
  DateTime? get fechaHora => _$this._fechaHora;
  set fechaHora(DateTime? fechaHora) => _$this._fechaHora = fechaHora;

  String? _notas;
  String? get notas => _$this._notas;
  set notas(String? notas) => _$this._notas = notas;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatesRecordBuilder() {
    DatesRecord._initializeBuilder(this);
  }

  DatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asunto = $v.asunto;
      _fechaHora = $v.fechaHora;
      _notas = $v.notas;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatesRecord;
  }

  @override
  void update(void Function(DatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatesRecord build() => _build();

  _$DatesRecord _build() {
    final _$result = _$v ??
        new _$DatesRecord._(
            asunto: asunto, fechaHora: fechaHora, notas: notas, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
