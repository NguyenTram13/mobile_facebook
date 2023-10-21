import '/backend/api_requests/api_calls.dart';
import '/components/input_create_post_widget.dart';
import '/components/list_post_widget.dart';
import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'profile_widget.dart' show ProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  List<dynamic> postProfile = [];
  void addToPostProfile(dynamic item) => postProfile.add(item);
  void removeFromPostProfile(dynamic item) => postProfile.remove(item);
  void removeAtIndexFromPostProfile(int index) => postProfile.removeAt(index);
  void insertAtIndexInPostProfile(int index, dynamic item) =>
      postProfile.insert(index, item);
  void updatePostProfileAtIndex(int index, Function(dynamic) updateFn) =>
      postProfile[index] = updateFn(postProfile[index]);

  bool loading = false;

  bool statusFriendRequest = false;

  bool statusFriend = false;

  dynamic dataRequestFriend;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Profile)] action in Profile widget.
  ApiCallResponse? apiResultdwt;
  // Stores action output result for [Backend Call - API (Get Post Home)] action in Profile widget.
  ApiCallResponse? apiResultj0t;
  // Stores action output result for [Backend Call - API (Get Friend)] action in Profile widget.
  ApiCallResponse? apiResultpkx;
  // Stores action output result for [Backend Call - API (Get About Profile)] action in Profile widget.
  ApiCallResponse? apiResultjkr;
  // Stores action output result for [Backend Call - API (Accept Friend)] action in Button widget.
  ApiCallResponse? apiResult6mq;
  // Stores action output result for [Backend Call - API (Get Request Friend)] action in Button widget.
  ApiCallResponse? apiResultpoi;
  // Stores action output result for [Backend Call - API (Get Friend)] action in Button widget.
  ApiCallResponse? apiResultcas;
  // Stores action output result for [Backend Call - API (Add Friend)] action in Button widget.
  ApiCallResponse? apiResult14l;
  // Model for input_create_post component.
  late InputCreatePostModel inputCreatePostModel;
  // Model for listPost component.
  late ListPostModel listPostModel;
  // Model for loading component.
  late LoadingModel loadingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputCreatePostModel = createModel(context, () => InputCreatePostModel());
    listPostModel = createModel(context, () => ListPostModel());
    loadingModel = createModel(context, () => LoadingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    inputCreatePostModel.dispose();
    listPostModel.dispose();
    loadingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
