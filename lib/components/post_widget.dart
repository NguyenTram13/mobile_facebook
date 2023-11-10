import '/backend/api_requests/api_calls.dart';
import '/components/comment_widget.dart';
import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_model.dart';
export 'post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final dynamic data;

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  late PostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.statusLike = functions.checkLike(
            getJsonField(
              widget.data,
              r'''$.like_data''',
              true,
            )!,
            getJsonField(
              FFAppState().resProfile,
              r'''$.id''',
            ));
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.componentAvatarModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentAvatarWidget(
                              image: getJsonField(
                                        widget.data,
                                        r'''$.user_data.avatar''',
                                      ) !=
                                      null
                                  ? getJsonField(
                                      widget.data,
                                      r'''$.user_data.avatar''',
                                    )
                                  : FFAppState().avatarDefault,
                              idDetailUser: getJsonField(
                                widget.data,
                                r'''$.user_data.id''',
                              ),
                              width: 40.0,
                              height: 40.0,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.00, 1.00),
                                child: wrapWithModel(
                                  model: _model.fullnameUserModel,
                                  updateCallback: () => setState(() {}),
                                  child: FullnameUserWidget(
                                    fullName: '${getJsonField(
                                      widget.data,
                                      r'''$.user_data.firstName''',
                                    ).toString()} ${getJsonField(
                                      widget.data,
                                      r'''$.user_data.lastName''',
                                    ).toString()}',
                                    idDetailUser: getJsonField(
                                      widget.data,
                                      r'''$.user_data.id''',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    functions.getTimeAgo(getJsonField(
                                      widget.data,
                                      r'''$.createdAt''',
                                    ).toString()),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 12.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Icon(
                                    Icons.public,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ].divide(SizedBox(width: 6.0)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.keyboard_control,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Text(
                getJsonField(
                          widget.data,
                          r'''$.content''',
                        ) !=
                        null
                    ? getJsonField(
                        widget.data,
                        r'''$.content''',
                      ).toString()
                    : ' ',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
          if (functions
                  .getLengthArray(getJsonField(
                    widget.data,
                    r'''$.file_data''',
                    true,
                  )!)
                  .toString() ==
              '1')
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  getJsonField(
                            widget.data,
                            r'''$.file_data[0]''',
                          ) !=
                          null
                      ? getJsonField(
                          widget.data,
                          r'''$.file_data[0].link''',
                        )
                      : ' ',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (functions
                  .getLengthArray(getJsonField(
                    widget.data,
                    r'''$.file_data''',
                    true,
                  )!)
                  .toString() !=
              '1')
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Builder(
                builder: (context) {
                  final image = getJsonField(
                    widget.data,
                    r'''$.file_data''',
                  ).toList();
                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: image.length,
                    itemBuilder: (context, imageIndex) {
                      final imageItem = image[imageIndex];
                      return Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            getJsonField(
                              imageItem,
                              r'''$.link''',
                            ),
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 16.0,
                      ),
                      Text(
                        functions
                            .getLengthArray(getJsonField(
                              widget.data,
                              r'''$.like_data''',
                              true,
                            )!)
                            .toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        functions
                            .getLengthArray(getJsonField(
                              widget.data,
                              r'''$.comment_data''',
                              true,
                            )!)
                            .toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      Text(
                        'comments',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).info,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (_model.statusLike) {
                        setState(() {
                          _model.statusLike = false;
                        });
                      } else {
                        setState(() {
                          _model.statusLike = true;
                        });
                      }

                      _model.apiResult4pw = await SocialGroup.likePostCall.call(
                        avatarLike: getJsonField(
                                  FFAppState().resProfile,
                                  r'''$.avatar''',
                                ) !=
                                null
                            ? getJsonField(
                                FFAppState().resProfile,
                                r'''$.avatar''',
                              ).toString()
                            : '',
                        ownPost: getJsonField(
                          widget.data,
                          r'''$.user_data.id''',
                        ),
                        postId: getJsonField(
                          widget.data,
                          r'''$.id''',
                        ),
                        text: '${getJsonField(
                          widget.data,
                          r'''$.user_data.firstName''',
                        ).toString()} ${getJsonField(
                          widget.data,
                          r'''$.user_data.lastName''',
                        ).toString()} Đã thích bài viết của bạn',
                        userId: getJsonField(
                          FFAppState().resProfile,
                          r'''$.id''',
                        ),
                        accessToken: FFAppState().accessToken,
                      );
                      if ((_model.apiResult4pw?.succeeded ?? true)) {
                        _model.apiResult8es =
                            await SocialGroup.getPostHomeCall.call();
                        if ((_model.apiResult8es?.succeeded ?? true)) {
                          FFAppState().update(() {
                            FFAppState().resPostHome =
                                (_model.apiResult8es?.jsonBody ?? '')
                                    .toList()
                                    .cast<dynamic>();
                          });
                        }
                      }

                      setState(() {});
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.statusLike == false)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.thumb_up_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Text(
                                'Like',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 14.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        if (_model.statusLike == true)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.thumb_up_outlined,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 24.0,
                              ),
                              Text(
                                'Like',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontSize: 14.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Color(0x71101213),
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.8,
                              child: CommentWidget(
                                dataComment: getJsonField(
                                  widget.data,
                                  r'''$.comment_data''',
                                  true,
                                ),
                                dataLike: getJsonField(
                                  widget.data,
                                  r'''$.like_data''',
                                  true,
                                ),
                                postId: getJsonField(
                                  widget.data,
                                  r'''$.id''',
                                ),
                                ownPost: getJsonField(
                                  widget.data,
                                  r'''$.user_data.id''',
                                ),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Comment',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 14.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Text(
                        'Share',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 14.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
