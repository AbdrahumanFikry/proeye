// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gov_company_view_model_paginated_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GovCompanyViewModelPaginatedResponse>
    _$govCompanyViewModelPaginatedResponseSerializer =
    new _$GovCompanyViewModelPaginatedResponseSerializer();

class _$GovCompanyViewModelPaginatedResponseSerializer
    implements StructuredSerializer<GovCompanyViewModelPaginatedResponse> {
  @override
  final Iterable<Type> types = const [
    GovCompanyViewModelPaginatedResponse,
    _$GovCompanyViewModelPaginatedResponse
  ];
  @override
  final String wireName = 'GovCompanyViewModelPaginatedResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GovCompanyViewModelPaginatedResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.pageIndex;
    if (value != null) {
      result
        ..add('pageIndex')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GovCompanyViewModel)])));
    }
    value = object.pageSize;
    if (value != null) {
      result
        ..add('pageSize')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCount;
    if (value != null) {
      result
        ..add('totalCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPages;
    if (value != null) {
      result
        ..add('totalPages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pageIndexZeroBased;
    if (value != null) {
      result
        ..add('pageIndexZeroBased')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasPreviousPage;
    if (value != null) {
      result
        ..add('hasPreviousPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GovCompanyViewModelPaginatedResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GovCompanyViewModelPaginatedResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'pageIndex':
          result.pageIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'page':
          result.page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GovCompanyViewModel)]))
              as BuiltList<Object>);
          break;
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalPages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageIndexZeroBased':
          result.pageIndexZeroBased = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hasPreviousPage':
          result.hasPreviousPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GovCompanyViewModelPaginatedResponse
    extends GovCompanyViewModelPaginatedResponse {
  @override
  final int pageIndex;
  @override
  final BuiltList<GovCompanyViewModel> page;
  @override
  final int pageSize;
  @override
  final int totalCount;
  @override
  final int totalPages;
  @override
  final int pageIndexZeroBased;
  @override
  final bool hasPreviousPage;
  @override
  final bool hasNextPage;

  factory _$GovCompanyViewModelPaginatedResponse(
          [void Function(GovCompanyViewModelPaginatedResponseBuilder)
              updates]) =>
      (new GovCompanyViewModelPaginatedResponseBuilder()..update(updates))
          .build();

  _$GovCompanyViewModelPaginatedResponse._(
      {this.pageIndex,
      this.page,
      this.pageSize,
      this.totalCount,
      this.totalPages,
      this.pageIndexZeroBased,
      this.hasPreviousPage,
      this.hasNextPage})
      : super._();

  @override
  GovCompanyViewModelPaginatedResponse rebuild(
          void Function(GovCompanyViewModelPaginatedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GovCompanyViewModelPaginatedResponseBuilder toBuilder() =>
      new GovCompanyViewModelPaginatedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GovCompanyViewModelPaginatedResponse &&
        pageIndex == other.pageIndex &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages &&
        pageIndexZeroBased == other.pageIndexZeroBased &&
        hasPreviousPage == other.hasPreviousPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, pageIndex.hashCode), page.hashCode),
                            pageSize.hashCode),
                        totalCount.hashCode),
                    totalPages.hashCode),
                pageIndexZeroBased.hashCode),
            hasPreviousPage.hashCode),
        hasNextPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GovCompanyViewModelPaginatedResponse')
          ..add('pageIndex', pageIndex)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalCount', totalCount)
          ..add('totalPages', totalPages)
          ..add('pageIndexZeroBased', pageIndexZeroBased)
          ..add('hasPreviousPage', hasPreviousPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GovCompanyViewModelPaginatedResponseBuilder
    implements
        Builder<GovCompanyViewModelPaginatedResponse,
            GovCompanyViewModelPaginatedResponseBuilder> {
  _$GovCompanyViewModelPaginatedResponse _$v;

  int _pageIndex;
  int get pageIndex => _$this._pageIndex;
  set pageIndex(int pageIndex) => _$this._pageIndex = pageIndex;

  ListBuilder<GovCompanyViewModel> _page;
  ListBuilder<GovCompanyViewModel> get page =>
      _$this._page ??= new ListBuilder<GovCompanyViewModel>();
  set page(ListBuilder<GovCompanyViewModel> page) => _$this._page = page;

  int _pageSize;
  int get pageSize => _$this._pageSize;
  set pageSize(int pageSize) => _$this._pageSize = pageSize;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  int _pageIndexZeroBased;
  int get pageIndexZeroBased => _$this._pageIndexZeroBased;
  set pageIndexZeroBased(int pageIndexZeroBased) =>
      _$this._pageIndexZeroBased = pageIndexZeroBased;

  bool _hasPreviousPage;
  bool get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  bool _hasNextPage;
  bool get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool hasNextPage) => _$this._hasNextPage = hasNextPage;

  GovCompanyViewModelPaginatedResponseBuilder() {
    GovCompanyViewModelPaginatedResponse._initializeBuilder(this);
  }

  GovCompanyViewModelPaginatedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageIndex = $v.pageIndex;
      _page = $v.page?.toBuilder();
      _pageSize = $v.pageSize;
      _totalCount = $v.totalCount;
      _totalPages = $v.totalPages;
      _pageIndexZeroBased = $v.pageIndexZeroBased;
      _hasPreviousPage = $v.hasPreviousPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GovCompanyViewModelPaginatedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GovCompanyViewModelPaginatedResponse;
  }

  @override
  void update(
      void Function(GovCompanyViewModelPaginatedResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GovCompanyViewModelPaginatedResponse build() {
    _$GovCompanyViewModelPaginatedResponse _$result;
    try {
      _$result = _$v ??
          new _$GovCompanyViewModelPaginatedResponse._(
              pageIndex: pageIndex,
              page: _page?.build(),
              pageSize: pageSize,
              totalCount: totalCount,
              totalPages: totalPages,
              pageIndexZeroBased: pageIndexZeroBased,
              hasPreviousPage: hasPreviousPage,
              hasNextPage: hasNextPage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'page';
        _page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GovCompanyViewModelPaginatedResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
