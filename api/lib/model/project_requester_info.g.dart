// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_requester_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectRequesterInfo> _$projectRequesterInfoSerializer =
    new _$ProjectRequesterInfoSerializer();

class _$ProjectRequesterInfoSerializer
    implements StructuredSerializer<ProjectRequesterInfo> {
  @override
  final Iterable<Type> types = const [
    ProjectRequesterInfo,
    _$ProjectRequesterInfo
  ];
  @override
  final String wireName = 'ProjectRequesterInfo';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectRequesterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.requesterEmail;
    if (value != null) {
      result
        ..add('requesterEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterPhone;
    if (value != null) {
      result
        ..add('requesterPhone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterName;
    if (value != null) {
      result
        ..add('requesterName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterLandline;
    if (value != null) {
      result
        ..add('requesterLandline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterRelationToOwnerCompany;
    if (value != null) {
      result
        ..add('requesterRelationToOwnerCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CompanyUserRelationTypesEnum)));
    }
    value = object.requesterRelationToOwnerCompanyDesc;
    if (value != null) {
      result
        ..add('requesterRelationToOwnerCompanyDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectRequesterInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectRequesterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'requesterEmail':
          result.requesterEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterPhone':
          result.requesterPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterName':
          result.requesterName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterLandline':
          result.requesterLandline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterRelationToOwnerCompany':
          result.requesterRelationToOwnerCompany = serializers.deserialize(
                  value,
                  specifiedType: const FullType(CompanyUserRelationTypesEnum))
              as CompanyUserRelationTypesEnum;
          break;
        case 'requesterRelationToOwnerCompanyDesc':
          result.requesterRelationToOwnerCompanyDesc = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectRequesterInfo extends ProjectRequesterInfo {
  @override
  final String requesterEmail;
  @override
  final String requesterPhone;
  @override
  final String requesterName;
  @override
  final String requesterLandline;
  @override
  final CompanyUserRelationTypesEnum requesterRelationToOwnerCompany;
  @override
  final String requesterRelationToOwnerCompanyDesc;

  factory _$ProjectRequesterInfo(
          [void Function(ProjectRequesterInfoBuilder) updates]) =>
      (new ProjectRequesterInfoBuilder()..update(updates)).build();

  _$ProjectRequesterInfo._(
      {this.requesterEmail,
      this.requesterPhone,
      this.requesterName,
      this.requesterLandline,
      this.requesterRelationToOwnerCompany,
      this.requesterRelationToOwnerCompanyDesc})
      : super._();

  @override
  ProjectRequesterInfo rebuild(
          void Function(ProjectRequesterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectRequesterInfoBuilder toBuilder() =>
      new ProjectRequesterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectRequesterInfo &&
        requesterEmail == other.requesterEmail &&
        requesterPhone == other.requesterPhone &&
        requesterName == other.requesterName &&
        requesterLandline == other.requesterLandline &&
        requesterRelationToOwnerCompany ==
            other.requesterRelationToOwnerCompany &&
        requesterRelationToOwnerCompanyDesc ==
            other.requesterRelationToOwnerCompanyDesc;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, requesterEmail.hashCode),
                        requesterPhone.hashCode),
                    requesterName.hashCode),
                requesterLandline.hashCode),
            requesterRelationToOwnerCompany.hashCode),
        requesterRelationToOwnerCompanyDesc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectRequesterInfo')
          ..add('requesterEmail', requesterEmail)
          ..add('requesterPhone', requesterPhone)
          ..add('requesterName', requesterName)
          ..add('requesterLandline', requesterLandline)
          ..add('requesterRelationToOwnerCompany',
              requesterRelationToOwnerCompany)
          ..add('requesterRelationToOwnerCompanyDesc',
              requesterRelationToOwnerCompanyDesc))
        .toString();
  }
}

class ProjectRequesterInfoBuilder
    implements Builder<ProjectRequesterInfo, ProjectRequesterInfoBuilder> {
  _$ProjectRequesterInfo _$v;

  String _requesterEmail;
  String get requesterEmail => _$this._requesterEmail;
  set requesterEmail(String requesterEmail) =>
      _$this._requesterEmail = requesterEmail;

  String _requesterPhone;
  String get requesterPhone => _$this._requesterPhone;
  set requesterPhone(String requesterPhone) =>
      _$this._requesterPhone = requesterPhone;

  String _requesterName;
  String get requesterName => _$this._requesterName;
  set requesterName(String requesterName) =>
      _$this._requesterName = requesterName;

  String _requesterLandline;
  String get requesterLandline => _$this._requesterLandline;
  set requesterLandline(String requesterLandline) =>
      _$this._requesterLandline = requesterLandline;

  CompanyUserRelationTypesEnum _requesterRelationToOwnerCompany;
  CompanyUserRelationTypesEnum get requesterRelationToOwnerCompany =>
      _$this._requesterRelationToOwnerCompany;
  set requesterRelationToOwnerCompany(
          CompanyUserRelationTypesEnum requesterRelationToOwnerCompany) =>
      _$this._requesterRelationToOwnerCompany = requesterRelationToOwnerCompany;

  String _requesterRelationToOwnerCompanyDesc;
  String get requesterRelationToOwnerCompanyDesc =>
      _$this._requesterRelationToOwnerCompanyDesc;
  set requesterRelationToOwnerCompanyDesc(
          String requesterRelationToOwnerCompanyDesc) =>
      _$this._requesterRelationToOwnerCompanyDesc =
          requesterRelationToOwnerCompanyDesc;

  ProjectRequesterInfoBuilder() {
    ProjectRequesterInfo._initializeBuilder(this);
  }

  ProjectRequesterInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requesterEmail = $v.requesterEmail;
      _requesterPhone = $v.requesterPhone;
      _requesterName = $v.requesterName;
      _requesterLandline = $v.requesterLandline;
      _requesterRelationToOwnerCompany = $v.requesterRelationToOwnerCompany;
      _requesterRelationToOwnerCompanyDesc =
          $v.requesterRelationToOwnerCompanyDesc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectRequesterInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectRequesterInfo;
  }

  @override
  void update(void Function(ProjectRequesterInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectRequesterInfo build() {
    final _$result = _$v ??
        new _$ProjectRequesterInfo._(
            requesterEmail: requesterEmail,
            requesterPhone: requesterPhone,
            requesterName: requesterName,
            requesterLandline: requesterLandline,
            requesterRelationToOwnerCompany: requesterRelationToOwnerCompany,
            requesterRelationToOwnerCompanyDesc:
                requesterRelationToOwnerCompanyDesc);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
