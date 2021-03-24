import 'package:get/get.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/generated/l10n.dart';

class ChatRouteInputs {
  final String roomId;
  final String projectId;
  final String roomName;

  ChatRouteInputs({
    this.roomId,
    this.projectId,
    this.roomName,
  });
}

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    var args = Get.arguments as ChatRouteInputs;
    Get.lazyPut(
      () => ChatController(
        roomId: args.roomId,
        projectId: args.projectId,
        roomName: args.roomName ?? S.current.chat,
      ),
    );
  }
}
