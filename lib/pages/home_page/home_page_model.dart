import '/backend/api_requests/api_calls.dart';
import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/components/input_create_post_widget.dart';
import '/components/list_post_widget.dart';
import '/components/loading_widget.dart';
import '/components/search_all_widget.dart';
import '/components/suggestions_friend_widget.dart';
import '/components/your_friends_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool showPayment = false;

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Post Home)] action in HomePage widget.
  ApiCallResponse? apiResult8v7;
  // Stores action output result for [Backend Call - API (Get Profile)] action in HomePage widget.
  ApiCallResponse? apiResulttaz;
  // Stores action output result for [Backend Call - API (Get Noti)] action in HomePage widget.
  ApiCallResponse? resNoti;
  // Stores action output result for [Backend Call - API (Get Request Friend)] action in HomePage widget.
  ApiCallResponse? resRequestFriend;
  // Stores action output result for [Backend Call - API (Get Friend)] action in HomePage widget.
  ApiCallResponse? listFriend;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for componentAvatar component.
  late ComponentAvatarModel componentAvatarModel1;
  // Model for input_create_post component.
  late InputCreatePostModel inputCreatePostModel;
  // Model for listPost component.
  late ListPostModel listPostModel;
  // Models for componentAvatar dynamic component.
  late FlutterFlowDynamicModels<ComponentAvatarModel> componentAvatarModels2;
  // Stores action output result for [Backend Call - API (Accept Friend)] action in Button widget.
  ApiCallResponse? apiResultquh;
  // Stores action output result for [Backend Call - API (Get Request Friend)] action in Button widget.
  ApiCallResponse? apiResult3aw;
  // Stores action output result for [Backend Call - API (Refuse Friend)] action in Button widget.
  ApiCallResponse? apiResultujz;
  // Stores action output result for [Backend Call - API (Get Request Friend)] action in Button widget.
  ApiCallResponse? apiResult126;
  // Stores action output result for [Backend Call - API (Read All Noti)] action in Button widget.
  ApiCallResponse? apiResult3ay;
  // Stores action output result for [Backend Call - API (Get Noti)] action in Button widget.
  ApiCallResponse? apiResult6a0;
  // Model for componentAvatar component.
  late ComponentAvatarModel componentAvatarModel3;
  // Model for fullnameUser component.
  late FullnameUserModel fullnameUserModel;
  // Stores action output result for [Backend Call - API (Generating QR Code)] action in Button widget.
  ApiCallResponse? apiResult2vb;
  // Model for loading component.
  late LoadingModel loadingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    componentAvatarModel1 = createModel(context, () => ComponentAvatarModel());
    inputCreatePostModel = createModel(context, () => InputCreatePostModel());
    listPostModel = createModel(context, () => ListPostModel());
    componentAvatarModels2 =
        FlutterFlowDynamicModels(() => ComponentAvatarModel());
    componentAvatarModel3 = createModel(context, () => ComponentAvatarModel());
    fullnameUserModel = createModel(context, () => FullnameUserModel());
    loadingModel = createModel(context, () => LoadingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    componentAvatarModel1.dispose();
    inputCreatePostModel.dispose();
    listPostModel.dispose();
    componentAvatarModels2.dispose();
    componentAvatarModel3.dispose();
    fullnameUserModel.dispose();
    loadingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
