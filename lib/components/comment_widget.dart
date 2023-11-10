import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'comment_model.dart';
export 'comment_model.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    Key? key,
    this.dataComment,
    this.dataLike,
    this.postId,
    int? ownPost,
  })  : this.ownPost = ownPost ?? 0,
        super(key: key);

  final List<dynamic>? dataComment;
  final List<dynamic>? dataLike;
  final int? postId;
  final int ownPost;

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  late CommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.likeStatus = functions.checkLike(
            widget.dataLike!.toList(),
            getJsonField(
              FFAppState().resProfile,
              r'''$.id''',
            ));
        _model.dataCommentState = widget.dataComment!.toList().cast<dynamic>();
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: AlignmentDirectional(0, 0),
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 24,
                          ),
                          Text(
                            widget.dataLike!.length.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 14.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.likeStatus == false)
                          Icon(
                            Icons.thumb_up_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                        if (_model.likeStatus)
                          Icon(
                            Icons.thumb_up_outlined,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 24,
                          ),
                      ],
                    ),
                  ].divide(SizedBox(width: 4)),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'All coomment',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                                if (widget.dataComment!.length > 0)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          width: MediaQuery.sizeOf(context).width *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: widget.dataComment!.length > 0,
                                            child: Builder(
                                              builder: (context) {
                                                final comment = _model
                                                    .dataCommentState
                                                    .toList();
                                                return Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children:
                                                      List.generate(comment.length,
                                                          (commentIndex) {
                                                    final commentItem =
                                                        comment[commentIndex];
                                                    return Container(
                                                      decoration: BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.0),
                                                                ),
                                                                child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.0),
                                                                  child:
                                                                      Image.network(
                                                                    getJsonField(
                                                                              commentItem,
                                                                              r'''$.user_data.avatar''',
                                                                            ) !=
                                                                            null
                                                                        ? getJsonField(
                                                                            commentItem,
                                                                            r'''$.user_data.avatar''',
                                                                          )
                                                                        : FFAppState()
                                                                            .avatarDefault,
                                                                    width: 50.0,
                                                                    height: 50.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(
                                                                                  context)
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFEEE8E8),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                10.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                                8.0,
                                                                                8.0,
                                                                                8.0,
                                                                                8.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize
                                                                                  .max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment
                                                                                  .start,
                                                                          children: [
                                                                            Container(
                                                                              width:
                                                                                  MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration:
                                                                                  BoxDecoration(),
                                                                              child:
                                                                                  Text(
                                                                                '${getJsonField(
                                                                                  commentItem,
                                                                                  r'''$.user_data.firstName''',
                                                                                ).toString()} ${getJsonField(
                                                                                  commentItem,
                                                                                  r'''$.user_data.lastName''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 18.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width:
                                                                                  MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration:
                                                                                  BoxDecoration(),
                                                                              child:
                                                                                  Text(
                                                                                getJsonField(
                                                                                  commentItem,
                                                                                  r'''$.text''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          functions
                                                                              .getTimeAgo(
                                                                                  getJsonField(
                                                                            commentItem,
                                                                            r'''$.createdAt''',
                                                                          ).toString()),
                                                                          style: FlutterFlowTheme.of(
                                                                                  context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily:
                                                                                    FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color:
                                                                                    FlutterFlowTheme.of(context).secondaryText,
                                                                                fontWeight:
                                                                                    FontWeight.w600,
                                                                                useGoogleFonts:
                                                                                    GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          'Like',
                                                                          style: FlutterFlowTheme.of(
                                                                                  context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily:
                                                                                    FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color:
                                                                                    FlutterFlowTheme.of(context).secondaryText,
                                                                                fontWeight:
                                                                                    FontWeight.w600,
                                                                                useGoogleFonts:
                                                                                    GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          'Reply',
                                                                          style: FlutterFlowTheme.of(
                                                                                  context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily:
                                                                                    FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color:
                                                                                    FlutterFlowTheme.of(context).secondaryText,
                                                                                fontWeight:
                                                                                    FontWeight.w600,
                                                                                useGoogleFonts:
                                                                                    GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                          width:
                                                                              12.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }).divide(SizedBox(height: 16.0)),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (widget.dataComment!.length <= 0)
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://picsum.photos/seed/371/600',
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text(
                                              'No Comment',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional(1, 0),
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).accent2,
                              ),
                            ),
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFAppState().contentComment,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController',
                                Duration(milliseconds: 10),
                                () async {
                                  setState(() {
                                    FFAppState().contentComment =
                                        '${_model.textController.text}';
                                  });
                                },
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      color: Color(0x00606061),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0x00101213),
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.showEmoji == true) {
                                  setState(() {
                                    _model.showEmoji = false;
                                  });
                                } else {
                                  setState(() {
                                    _model.showEmoji = true;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.tag_faces_sharp,
                                color: FlutterFlowTheme.of(context).warning,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.loading == false)
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                _model.loading = true;
                              });
                              _model.apiResultk34 =
                                  await SocialGroup.commentCall.call(
                                accessToken: FFAppState().accessToken,
                                content: FFAppState().contentComment,
                                postId: widget.postId,
                                userId: getJsonField(
                                  FFAppState().resProfile,
                                  r'''$.id''',
                                ),
                                avatarComment: getJsonField(
                                          FFAppState().resProfile,
                                          r'''$.avatar''',
                                        ) !=
                                        null
                                    ? getJsonField(
                                        FFAppState().resProfile,
                                        r'''$.avatar''',
                                      ).toString()
                                    : ' ',
                                ownPost: widget.ownPost,
                                text: '${getJsonField(
                                  FFAppState().resProfile,
                                  r'''$.firstName''',
                                ).toString()} ${getJsonField(
                                  FFAppState().resProfile,
                                  r'''$.lastName''',
                                ).toString()} commented on your post',
                              );
                              if ((_model.apiResultk34?.succeeded ?? true)) {
                                setState(() {
                                  _model.dataCommentState = functions
                                      .updateDataComment(
                                          _model.dataCommentState.toList(),
                                          (_model.apiResultk34?.jsonBody ?? ''))
                                      .toList()
                                      .cast<dynamic>();
                                  _model.loading = false;
                                });
                                setState(() {
                                  FFAppState().contentComment = '';
                                });
                                _model.apiResult3ue =
                                    await SocialGroup.getPostHomeCall.call();
                                if ((_model.apiResult3ue?.succeeded ?? true)) {
                                  FFAppState().update(() {
                                    FFAppState().resPostHome =
                                        (_model.apiResult3ue?.jsonBody ?? '')
                                            .toList()
                                            .cast<dynamic>();
                                  });
                                }
                              } else {
                                setState(() {
                                  _model.loading = false;
                                });
                              }

                              setState(() {});
                            },
                            child: Icon(
                              Icons.send,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 36,
                            ),
                          ),
                        if (_model.loading == true)
                          Lottie.asset(
                            'assets/lottie_animations/Loading_Animation.json',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                      ],
                    ),
                  ].divide(SizedBox(width: 4)),
                ),
              ].divide(SizedBox(height: 8)),
            ),
          ),
        ),
        if (_model.showEmoji == true)
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: custom_widgets.EmojiPickerWidget(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).height * 0.6,
              page: 'comment',
            ),
          ),
      ],
    );
  }
}
