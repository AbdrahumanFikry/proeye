// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_complete_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqCompleteTask> _$reqCompleteTaskSerializer =
    new _$ReqCompleteTaskSerializer();

class _$ReqCompleteTaskSerializer
    implements StructuredSerializer<ReqCompleteTask> {
  @override
  final Iterable<Type> types = const [ReqCompleteTask, _$ReqCompleteTask];
  @override
  final String wireName = 'ReqCompleteTask';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqCompleteTask object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.actualEnd;
    if (value != null) {
      result
        ..add('actualEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.warrantyPeriodStart;
    if (value != null) {
      result
        ..add('warrantyPeriodStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.warrantyDurationDays;
    if (value != null) {
      result
        ..add('warrantyDurationDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReqCompleteTask deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqCompleteTaskBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'actualEnd':
          result.actualEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'warrantyPeriodStart':
          result.warrantyPeriodStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'warrantyDurationDays':
          result.warrantyDurationDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqCompleteTask extends ReqCompleteTask {
  @override
  final DateTime actualEnd;
  @override
  final DateTime warrantyPeriodStart;
  @override
  final int warrantyDurationDays;

  factory _$ReqCompleteTask([void Function(ReqCompleteTaskBuilder) updates]) =>
      (new ReqCompleteTaskBuilder()..update(updates)).build();

  _$ReqCompleteTask._(
      {this.actualEnd, this.warrantyPeriodStart, this.warrantyDurationDays})
      : super._();

  @override
  ReqCompleteTask rebuild(void Function(ReqCompleteTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqCompleteTaskBuilder toBuilder() =>
      new ReqCompleteTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqCompleteTask &&
        actualEnd == other.actualEnd &&
        warrantyPeriodStart == other.warrantyPeriodStart &&
        warrantyDurationDays == other.warrantyDurationDays;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, actualEnd.hashCode), warrantyPeriodStart.hashCode),
        warrantyDurationDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqCompleteTask')
          ..add('actualEnd', actualEnd)
          ..add('warrantyPeriodStart', warrantyPeriodStart)
          ..add('warrantyDurationDays', warrantyDurationDays))
        .toString();
  }
}

class ReqCompleteTaskBuilder
    implements Builder<ReqCompleteTask, ReqCompleteTaskBuilder> {
  _$ReqCompleteTask _$v;

  DateTime _actualEnd;
  DateTime get actualEnd => _$this._actualEnd;
  set actualEnd(DateTime actualEnd) => _$this._actualEnd = actualEnd;

  DateTime _warrantyPeriodStart;
  DateTime get warrantyPeriodStart => _$this._warrantyPeriodStart;
  set warrantyPeriodStart(DateTime warrantyPeriodStart) =>
      _$this._warrantyPeriodStart = warrantyPeriodStart;

  int _warrantyDurationDays;
  int get warrantyDurationDays => _$this._warrantyDurationDays;
  set warrantyDurationDays(int warrantyDurationDays) =>
      _$this._warrantyDurationDays = warrantyDurationDays;

  ReqCompleteTaskBuilder() {
    ReqCompleteTask._initializeBuilder(this);
  }

  ReqCompleteTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actualEnd = $v.actualEnd;
      _warrantyPeriodStart = $v.warrantyPeriodStart;
      _warrantyDurationDays = $v.warrantyDurationDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqCompleteTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqCompleteTask;
  }

  @override
  void update(void Function(ReqCompleteTaskBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqCompleteTask build() {
    final _$result = _$v ??
        new _$ReqCompleteTask._(
            actualEnd: actualEnd,
            warrantyPeriodStart: warrantyPeriodStart,
            warrantyDurationDays: warrantyDurationDays);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
