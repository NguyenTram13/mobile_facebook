import '/backend/api_requests/api_calls.dart';
import '/components/component_avatar_widget.dart';
import '/components/noti_inapp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'mess_page_widget.dart' show MessPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessPageModel extends FlutterFlowModel<MessPageWidget> {
  ///  Local state fields for this page.

  String text = 'rfdgjk hjgyhugil hjkftyf hufuikfyf';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Conversion)] action in MessPage widget.
  ApiCallResponse? apiResult9be;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Get Profile)] action in Container widget.
  ApiCallResponse? apiResultqqg;
  // Models for componentAvatar dynamic component.
  late FlutterFlowDynamicModels<ComponentAvatarModel> componentAvatarModels;
  // Model for noti_inapp component.
  late NotiInappModel notiInappModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    componentAvatarModels =
        FlutterFlowDynamicModels(() => ComponentAvatarModel());
    notiInappModel = createModel(context, () => NotiInappModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    componentAvatarModels.dispose();
    notiInappModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
