//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_duration_dto.g.dart';

abstract class StartDurationDto
    implements Built<StartDurationDto, StartDurationDtoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'start')
  DateTime get start;

  @nullable
  @BuiltValueField(wireName: r'durationDays')
  int get durationDays;

  @nullable
  @BuiltValueField(wireName: r'end')
  DateTime get end;

  @nullable
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  // Boilerplate code needed to wire-up generated code
  StartDurationDto._();

  static void _initializeBuilder(StartDurationDtoBuilder b) => b;

  factory StartDurationDto([void updates(StartDurationDtoBuilder b)]) =
      _$StartDurationDto;
  static Serializer<StartDurationDto> get serializer =>
      _$startDurationDtoSerializer;
}
