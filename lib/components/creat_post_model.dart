import '/backend/api_requests/api_calls.dart';
import '/components/add_image_post_widget.dart';
import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/components/loading_widget.dart';
import '/components/more_post_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
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

  bool loadingUploadImage = false;

  List<String> listImageShow = [];
  void addToListImageShow(String item) => listImageShow.add(item);
  void removeFromListImageShow(String item) => listImageShow.remove(item);
  void removeAtIndexFromListImageShow(int index) =>
      listImageShow.removeAt(index);
  void insertAtIndexInListImageShow(int index, String item) =>
      listImageShow.insert(index, item);
  void updateListImageShowAtIndex(int index, Function(String) updateFn) =>
      listImageShow[index] = updateFn(listImageShow[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Create Post)] action in Button widget.
  ApiCallResponse? apiResultxha;
  // Stores action output result for [Backend Call - API (Get Post Home)] action in Button widget.
  ApiCallResponse? apiResult5hr;
  // Model for componentAvatar component.
  late ComponentAvatarModel componentAvatarModel;
  // Model for fullnameUser component.
  late FullnameUserModel fullnameUserModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for loading component.
  late LoadingModel loadingModel;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (Upload images)] action in Icon widget.
  ApiCallResponse? apiResultzqb;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    componentAvatarModel = createModel(context, () => ComponentAvatarModel());
    fullnameUserModel = createModel(context, () => FullnameUserModel());
    loadingModel = createModel(context, () => LoadingModel());
  }

  void dispose() {
    componentAvatarModel.dispose();
    fullnameUserModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    loadingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
