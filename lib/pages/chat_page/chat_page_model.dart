import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  Local state fields for this page.

  bool showIcon = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for componentAvatar dynamic component.
  late FlutterFlowDynamicModels<ComponentAvatarModel> componentAvatarModels1;
  // Models for componentAvatar dynamic component.
  late FlutterFlowDynamicModels<ComponentAvatarModel> componentAvatarModels2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for componentAvatar component.
  late ComponentAvatarModel componentAvatarModel3;
  // Model for fullnameUser component.
  late FullnameUserModel fullnameUserModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    componentAvatarModels1 =
        FlutterFlowDynamicModels(() => ComponentAvatarModel());
    componentAvatarModels2 =
        FlutterFlowDynamicModels(() => ComponentAvatarModel());
    componentAvatarModel3 = createModel(context, () => ComponentAvatarModel());
    fullnameUserModel = createModel(context, () => FullnameUserModel());
  }

  void dispose() {
    unfocusNode.dispose();
    componentAvatarModels1.dispose();
    componentAvatarModels2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    componentAvatarModel3.dispose();
    fullnameUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
