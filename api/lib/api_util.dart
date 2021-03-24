import 'package:built_value/serializer.dart';

/// Format the given parameter object into string.
String parameterToString(Serializers serializers, dynamic value,
    {FullType type = FullType.unspecified}) {
  if (value == null) {
    return '';
  } else {
    var serialized = serializers.serialize(value, specifiedType: type);
    if (serialized is String) {
      return serialized;
    } else if (serialized is List) {
      return serialized.join(",");
    } else {
      return serialized.toString();
    }
  }
}
