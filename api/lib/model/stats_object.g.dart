// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'stats_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatsObject> _$statsObjectSerializer = new _$StatsObjectSerializer();

class _$StatsObjectSerializer implements StructuredSerializer<StatsObject> {
  @override
  final Iterable<Type> types = const [StatsObject, _$StatsObject];
  @override
  final String wireName = 'StatsObject';

  @override
  Iterable<Object> serialize(Serializers serializers, StatsObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.allProjects;
    if (value != null) {
      result
        ..add('allProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.refusedProjects;
    if (value != null) {
      result
        ..add('refusedProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pendingEngManagementProjects;
    if (value != null) {
      result
        ..add('pendingEngManagementProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pendingCenterProjects;
    if (value != null) {
      result
        ..add('pendingCenterProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.acceptedProjects;
    if (value != null) {
      result
        ..add('acceptedProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.incompleteProjects;
    if (value != null) {
      result
        ..add('incompleteProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.completedProjects;
    if (value != null) {
      result
        ..add('completedProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.initialWarrantyProjects;
    if (value != null) {
      result
        ..add('initialWarrantyProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.finalWarrantyProjects;
    if (value != null) {
      result
        ..add('finalWarrantyProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.outsideFinalWarrantyProjects;
    if (value != null) {
      result
        ..add('outsideFinalWarrantyProjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  StatsObject deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'allProjects':
          result.allProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'refusedProjects':
          result.refusedProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pendingEngManagementProjects':
          result.pendingEngManagementProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pendingCenterProjects':
          result.pendingCenterProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'acceptedProjects':
          result.acceptedProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'incompleteProjects':
          result.incompleteProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'completedProjects':
          result.completedProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'initialWarrantyProjects':
          result.initialWarrantyProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'finalWarrantyProjects':
          result.finalWarrantyProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'outsideFinalWarrantyProjects':
          result.outsideFinalWarrantyProjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$StatsObject extends StatsObject {
  @override
  final int allProjects;
  @override
  final int refusedProjects;
  @override
  final int pendingEngManagementProjects;
  @override
  final int pendingCenterProjects;
  @override
  final int acceptedProjects;
  @override
  final int incompleteProjects;
  @override
  final int completedProjects;
  @override
  final int initialWarrantyProjects;
  @override
  final int finalWarrantyProjects;
  @override
  final int outsideFinalWarrantyProjects;

  factory _$StatsObject([void Function(StatsObjectBuilder) updates]) =>
      (new StatsObjectBuilder()..update(updates)).build();

  _$StatsObject._(
      {this.allProjects,
      this.refusedProjects,
      this.pendingEngManagementProjects,
      this.pendingCenterProjects,
      this.acceptedProjects,
      this.incompleteProjects,
      this.completedProjects,
      this.initialWarrantyProjects,
      this.finalWarrantyProjects,
      this.outsideFinalWarrantyProjects})
      : super._();

  @override
  StatsObject rebuild(void Function(StatsObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsObjectBuilder toBuilder() => new StatsObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsObject &&
        allProjects == other.allProjects &&
        refusedProjects == other.refusedProjects &&
        pendingEngManagementProjects == other.pendingEngManagementProjects &&
        pendingCenterProjects == other.pendingCenterProjects &&
        acceptedProjects == other.acceptedProjects &&
        incompleteProjects == other.incompleteProjects &&
        completedProjects == other.completedProjects &&
        initialWarrantyProjects == other.initialWarrantyProjects &&
        finalWarrantyProjects == other.finalWarrantyProjects &&
        outsideFinalWarrantyProjects == other.outsideFinalWarrantyProjects;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, allProjects.hashCode),
                                        refusedProjects.hashCode),
                                    pendingEngManagementProjects.hashCode),
                                pendingCenterProjects.hashCode),
                            acceptedProjects.hashCode),
                        incompleteProjects.hashCode),
                    completedProjects.hashCode),
                initialWarrantyProjects.hashCode),
            finalWarrantyProjects.hashCode),
        outsideFinalWarrantyProjects.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatsObject')
          ..add('allProjects', allProjects)
          ..add('refusedProjects', refusedProjects)
          ..add('pendingEngManagementProjects', pendingEngManagementProjects)
          ..add('pendingCenterProjects', pendingCenterProjects)
          ..add('acceptedProjects', acceptedProjects)
          ..add('incompleteProjects', incompleteProjects)
          ..add('completedProjects', completedProjects)
          ..add('initialWarrantyProjects', initialWarrantyProjects)
          ..add('finalWarrantyProjects', finalWarrantyProjects)
          ..add('outsideFinalWarrantyProjects', outsideFinalWarrantyProjects))
        .toString();
  }
}

class StatsObjectBuilder implements Builder<StatsObject, StatsObjectBuilder> {
  _$StatsObject _$v;

  int _allProjects;
  int get allProjects => _$this._allProjects;
  set allProjects(int allProjects) => _$this._allProjects = allProjects;

  int _refusedProjects;
  int get refusedProjects => _$this._refusedProjects;
  set refusedProjects(int refusedProjects) =>
      _$this._refusedProjects = refusedProjects;

  int _pendingEngManagementProjects;
  int get pendingEngManagementProjects => _$this._pendingEngManagementProjects;
  set pendingEngManagementProjects(int pendingEngManagementProjects) =>
      _$this._pendingEngManagementProjects = pendingEngManagementProjects;

  int _pendingCenterProjects;
  int get pendingCenterProjects => _$this._pendingCenterProjects;
  set pendingCenterProjects(int pendingCenterProjects) =>
      _$this._pendingCenterProjects = pendingCenterProjects;

  int _acceptedProjects;
  int get acceptedProjects => _$this._acceptedProjects;
  set acceptedProjects(int acceptedProjects) =>
      _$this._acceptedProjects = acceptedProjects;

  int _incompleteProjects;
  int get incompleteProjects => _$this._incompleteProjects;
  set incompleteProjects(int incompleteProjects) =>
      _$this._incompleteProjects = incompleteProjects;

  int _completedProjects;
  int get completedProjects => _$this._completedProjects;
  set completedProjects(int completedProjects) =>
      _$this._completedProjects = completedProjects;

  int _initialWarrantyProjects;
  int get initialWarrantyProjects => _$this._initialWarrantyProjects;
  set initialWarrantyProjects(int initialWarrantyProjects) =>
      _$this._initialWarrantyProjects = initialWarrantyProjects;

  int _finalWarrantyProjects;
  int get finalWarrantyProjects => _$this._finalWarrantyProjects;
  set finalWarrantyProjects(int finalWarrantyProjects) =>
      _$this._finalWarrantyProjects = finalWarrantyProjects;

  int _outsideFinalWarrantyProjects;
  int get outsideFinalWarrantyProjects => _$this._outsideFinalWarrantyProjects;
  set outsideFinalWarrantyProjects(int outsideFinalWarrantyProjects) =>
      _$this._outsideFinalWarrantyProjects = outsideFinalWarrantyProjects;

  StatsObjectBuilder() {
    StatsObject._initializeBuilder(this);
  }

  StatsObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allProjects = $v.allProjects;
      _refusedProjects = $v.refusedProjects;
      _pendingEngManagementProjects = $v.pendingEngManagementProjects;
      _pendingCenterProjects = $v.pendingCenterProjects;
      _acceptedProjects = $v.acceptedProjects;
      _incompleteProjects = $v.incompleteProjects;
      _completedProjects = $v.completedProjects;
      _initialWarrantyProjects = $v.initialWarrantyProjects;
      _finalWarrantyProjects = $v.finalWarrantyProjects;
      _outsideFinalWarrantyProjects = $v.outsideFinalWarrantyProjects;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatsObject;
  }

  @override
  void update(void Function(StatsObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatsObject build() {
    final _$result = _$v ??
        new _$StatsObject._(
            allProjects: allProjects,
            refusedProjects: refusedProjects,
            pendingEngManagementProjects: pendingEngManagementProjects,
            pendingCenterProjects: pendingCenterProjects,
            acceptedProjects: acceptedProjects,
            incompleteProjects: incompleteProjects,
            completedProjects: completedProjects,
            initialWarrantyProjects: initialWarrantyProjects,
            finalWarrantyProjects: finalWarrantyProjects,
            outsideFinalWarrantyProjects: outsideFinalWarrantyProjects);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
