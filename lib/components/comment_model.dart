import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'comment_widget.dart' show CommentWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CommentModel extends FlutterFlowModel<CommentWidget> {
  ///  Local state fields for this component.

  bool likeStatus = false;

  bool showEmoji = false;

  String contentComment = '';

  int ownPost = 1;

  List<dynamic> dataCommentState = [];
  void addToDataCommentState(dynamic item) => dataCommentState.add(item);
  void removeFromDataCommentState(dynamic item) =>
      dataCommentState.remove(item);
  void removeAtIndexFromDataCommentState(int index) =>
      dataCommentState.removeAt(index);
  void insertAtIndexInDataCommentState(int index, dynamic item) =>
      dataCommentState.insert(index, item);
  void updateDataCommentStateAtIndex(int index, Function(dynamic) updateFn) =>
      dataCommentState[index] = updateFn(dataCommentState[index]);

  bool loading = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Comment)] action in Icon widget.
  ApiCallResponse? apiResultk34;
  // Stores action output result for [Backend Call - API (Get Post Home)] action in Icon widget.
  ApiCallResponse? apiResult3ue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
