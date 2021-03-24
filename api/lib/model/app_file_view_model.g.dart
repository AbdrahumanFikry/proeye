// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'app_file_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppFileViewModel> _$appFileViewModelSerializer =
    new _$AppFileViewModelSerializer();

class _$AppFileViewModelSerializer
    implements StructuredSerializer<AppFileViewModel> {
  @override
  final Iterable<Type> types = const [AppFileViewModel, _$AppFileViewModel];
  @override
  final String wireName = 'AppFileViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AppFileViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.fullUrl;
    if (value != null) {
      result
        ..add('fullUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uploaderId;
    if (value != null) {
      result
        ..add('uploaderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fileName;
    if (value != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tag;
    if (value != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uploadedAt;
    if (value != null) {
      result
        ..add('uploadedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.relativeUrl;
    if (value != null) {
      result
        ..add('relativeUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.md5Hash;
    if (value != null) {
      result
        ..add('md5Hash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppFileViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppFileViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'fullUrl':
          result.fullUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uploaderId':
          result.uploaderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uploadedAt':
          result.uploadedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'relativeUrl':
          result.relativeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'md5Hash':
          result.md5Hash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppFileViewModel extends AppFileViewModel {
  @override
  final String fullUrl;
  @override
  final String uploaderId;
  @override
  final String fileName;
  @override
  final String tag;
  @override
  final DateTime uploadedAt;
  @override
  final String relativeUrl;
  @override
  final String md5Hash;

  factory _$AppFileViewModel(
          [void Function(AppFileViewModelBuilder) updates]) =>
      (new AppFileViewModelBuilder()..update(updates)).build();

  _$AppFileViewModel._(
      {this.fullUrl,
      this.uploaderId,
      this.fileName,
      this.tag,
      this.uploadedAt,
      this.relativeUrl,
      this.md5Hash})
      : super._();

  @override
  AppFileViewModel rebuild(void Function(AppFileViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppFileViewModelBuilder toBuilder() =>
      new AppFileViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppFileViewModel &&
        fullUrl == other.fullUrl &&
        uploaderId == other.uploaderId &&
        fileName == other.fileName &&
        tag == other.tag &&
        uploadedAt == other.uploadedAt &&
        relativeUrl == other.relativeUrl &&
        md5Hash == other.md5Hash;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, fullUrl.hashCode), uploaderId.hashCode),
                        fileName.hashCode),
                    tag.hashCode),
                uploadedAt.hashCode),
            relativeUrl.hashCode),
        md5Hash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppFileViewModel')
          ..add('fullUrl', fullUrl)
          ..add('uploaderId', uploaderId)
          ..add('fileName', fileName)
          ..add('tag', tag)
          ..add('uploadedAt', uploadedAt)
          ..add('relativeUrl', relativeUrl)
          ..add('md5Hash', md5Hash))
        .toString();
  }
}

class AppFileViewModelBuilder
    implements Builder<AppFileViewModel, AppFileViewModelBuilder> {
  _$AppFileViewModel _$v;

  String _fullUrl;
  String get fullUrl => _$this._fullUrl;
  set fullUrl(String fullUrl) => _$this._fullUrl = fullUrl;

  String _uploaderId;
  String get uploaderId => _$this._uploaderId;
  set uploaderId(String uploaderId) => _$this._uploaderId = uploaderId;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  DateTime _uploadedAt;
  DateTime get uploadedAt => _$this._uploadedAt;
  set uploadedAt(DateTime uploadedAt) => _$this._uploadedAt = uploadedAt;

  String _relativeUrl;
  String get relativeUrl => _$this._relativeUrl;
  set relativeUrl(String relativeUrl) => _$this._relativeUrl = relativeUrl;

  String _md5Hash;
  String get md5Hash => _$this._md5Hash;
  set md5Hash(String md5Hash) => _$this._md5Hash = md5Hash;

  AppFileViewModelBuilder() {
    AppFileViewModel._initializeBuilder(this);
  }

  AppFileViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullUrl = $v.fullUrl;
      _uploaderId = $v.uploaderId;
      _fileName = $v.fileName;
      _tag = $v.tag;
      _uploadedAt = $v.uploadedAt;
      _relativeUrl = $v.relativeUrl;
      _md5Hash = $v.md5Hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppFileViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppFileViewModel;
  }

  @override
  void update(void Function(AppFileViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppFileViewModel build() {
    final _$result = _$v ??
        new _$AppFileViewModel._(
            fullUrl: fullUrl,
            uploaderId: uploaderId,
            fileName: fileName,
            tag: tag,
            uploadedAt: uploadedAt,
            relativeUrl: relativeUrl,
            md5Hash: md5Hash);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
