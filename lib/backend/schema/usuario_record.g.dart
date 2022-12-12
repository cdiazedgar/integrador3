// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.correoE;
    if (value != null) {
      result
        ..add('Correo_e')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
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
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Correo_e':
          result.correoE = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
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

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String? correoE;
  @override
  final String? password;
  @override
  final String? nombre;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder)? updates]) =>
      (new UsuarioRecordBuilder()..update(updates))._build();

  _$UsuarioRecord._({this.correoE, this.password, this.nombre, this.ffRef})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        correoE == other.correoE &&
        password == other.password &&
        nombre == other.nombre &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, correoE.hashCode), password.hashCode), nombre.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioRecord')
          ..add('correoE', correoE)
          ..add('password', password)
          ..add('nombre', nombre)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord? _$v;

  String? _correoE;
  String? get correoE => _$this._correoE;
  set correoE(String? correoE) => _$this._correoE = correoE;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correoE = $v.correoE;
      _password = $v.password;
      _nombre = $v.nombre;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioRecord build() => _build();

  _$UsuarioRecord _build() {
    final _$result = _$v ??
        new _$UsuarioRecord._(
            correoE: correoE, password: password, nombre: nombre, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
