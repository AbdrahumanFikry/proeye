//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_object.g.dart';

abstract class StatsObject implements Built<StatsObject, StatsObjectBuilder> {
  @nullable
  @BuiltValueField(wireName: r'allProjects')
  int get allProjects;

  @nullable
  @BuiltValueField(wireName: r'refusedProjects')
  int get refusedProjects;

  @nullable
  @BuiltValueField(wireName: r'pendingEngManagementProjects')
  int get pendingEngManagementProjects;

  @nullable
  @BuiltValueField(wireName: r'pendingCenterProjects')
  int get pendingCenterProjects;

  @nullable
  @BuiltValueField(wireName: r'acceptedProjects')
  int get acceptedProjects;

  @nullable
  @BuiltValueField(wireName: r'incompleteProjects')
  int get incompleteProjects;

  @nullable
  @BuiltValueField(wireName: r'completedProjects')
  int get completedProjects;

  @nullable
  @BuiltValueField(wireName: r'initialWarrantyProjects')
  int get initialWarrantyProjects;

  @nullable
  @BuiltValueField(wireName: r'finalWarrantyProjects')
  int get finalWarrantyProjects;

  @nullable
  @BuiltValueField(wireName: r'outsideFinalWarrantyProjects')
  int get outsideFinalWarrantyProjects;

  // Boilerplate code needed to wire-up generated code
  StatsObject._();

  static void _initializeBuilder(StatsObjectBuilder b) => b;

  factory StatsObject([void updates(StatsObjectBuilder b)]) = _$StatsObject;
  static Serializer<StatsObject> get serializer => _$statsObjectSerializer;
}
