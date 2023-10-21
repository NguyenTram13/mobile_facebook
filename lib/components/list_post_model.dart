import '/components/post_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_post_widget.dart' show ListPostWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListPostModel extends FlutterFlowModel<ListPostWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for post dynamic component.
  late FlutterFlowDynamicModels<PostModel> postModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    postModels = FlutterFlowDynamicModels(() => PostModel());
  }

  void dispose() {
    postModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
