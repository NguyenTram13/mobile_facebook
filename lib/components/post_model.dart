import '/backend/api_requests/api_calls.dart';
import '/components/comment_widget.dart';
import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'post_widget.dart' show PostWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostModel extends FlutterFlowModel<PostWidget> {
  ///  Local state fields for this component.

  bool statusLike = false;

  ///  State fields for stateful widgets in this component.

  // Model for componentAvatar component.
  late ComponentAvatarModel componentAvatarModel;
  // Model for fullnameUser component.
  late FullnameUserModel fullnameUserModel;
  // Stores action output result for [Backend Call - API (Like Post)] action in Column widget.
  ApiCallResponse? apiResult4pw;
  // Stores action output result for [Backend Call - API (Get Post Home)] action in Column widget.
  ApiCallResponse? apiResult8es;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    componentAvatarModel = createModel(context, () => ComponentAvatarModel());
    fullnameUserModel = createModel(context, () => FullnameUserModel());
  }

  void dispose() {
    componentAvatarModel.dispose();
    fullnameUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
