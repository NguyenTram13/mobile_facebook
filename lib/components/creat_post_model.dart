import '/backend/api_requests/api_calls.dart';
import '/components/add_image_post_widget.dart';
import '/components/more_post_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'creat_post_widget.dart' show CreatPostWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatPostModel extends FlutterFlowModel<CreatPostWidget> {
  ///  Local state fields for this component.

  String contentPost = '';

  bool showEmoji = false;

  dynamic listImage;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Upload images)] action in Button widget.
  ApiCallResponse? images;
  // Stores action output result for [Backend Call - API (Create Post)] action in Button widget.
  ApiCallResponse? apiResultxha;
  // Stores action output result for [Backend Call - API (Get Post Home)] action in Button widget.
  ApiCallResponse? apiResult5hr;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
