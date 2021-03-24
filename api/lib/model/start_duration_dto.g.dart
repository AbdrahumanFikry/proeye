// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'start_duration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StartDurationDto> _$startDurationDtoSerializer =
    new _$StartDurationDtoSerializer();

class _$StartDurationDtoSerializer
    implements StructuredSerializer<StartDurationDto> {
  @override
  final Iterable<Type> types = const [StartDurationDto, _$StartDurationDto];
  @override
  final String wireName = 'StartDurationDto';

  @override
  Iterable<Object> serialize(Serializers serializers, StartDurationDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.durationDays;
    if (value != null) {
      result
        ..add('durationDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  StartDurationDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StartDurationDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'durationDays':
          result.durationDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$StartDurationDto extends StartDurationDto {
  @override
  final DateTime start;
  @override
  final int durationDays;
  @override
  final DateTime end;
  @override
  final bool isActive;

  factory _$StartDurationDto(
          [void Function(StartDurationDtoBuilder) updates]) =>
      (new StartDurationDtoBuilder()..update(updates)).build();

  _$StartDurationDto._({this.start, this.durationDays, this.end, this.isActive})
      : super._();

  @override
  StartDurationDto rebuild(void Function(StartDurationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartDurationDtoBuilder toBuilder() =>
      new StartDurationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartDurationDto &&
        start == other.start &&
        durationDays == other.durationDays &&
        end == other.end &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, start.hashCode), durationDays.hashCode), end.hashCode),
        isActive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StartDurationDto')
          ..add('start', start)
          ..add('durationDays', durationDays)
          ..add('end', end)
          ..add('isActive', isActive))
        .toString();
  }
}

class StartDurationDtoBuilder
    implements Builder<StartDurationDto, StartDurationDtoBuilder> {
  _$StartDurationDto _$v;

  DateTime _start;
  DateTime get start => _$this._start;
  set start(DateTime start) => _$this._start = start;

  int _durationDays;
  int get durationDays => _$this._durationDays;
  set durationDays(int durationDays) => _$this._durationDays = durationDays;

  DateTime _end;
  DateTime get end => _$this._end;
  set end(DateTime end) => _$this._end = end;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  StartDurationDtoBuilder() {
    StartDurationDto._initializeBuilder(this);
  }

  StartDurationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _durationDays = $v.durationDays;
      _end = $v.end;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartDurationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartDurationDto;
  }

  @override
  void update(void Function(StartDurationDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartDurationDto build() {
    final _$result = _$v ??
        new _$StartDurationDto._(
            start: start,
            durationDays: durationDays,
            end: end,
            isActive: isActive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
