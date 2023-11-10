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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'creat_post_model.dart';
export 'creat_post_model.dart';

class CreatPostWidget extends StatefulWidget {
  const CreatPostWidget({Key? key}) : super(key: key);

  @override
  _CreatPostWidgetState createState() => _CreatPostWidgetState();
}

class _CreatPostWidgetState extends State<CreatPostWidget> {
  late CreatPostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatPostModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().contentPost);
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
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: Container(
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
                          context.safePop();
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          'Create post ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: FFButtonWidget(
                          onPressed: FFAppState().contentPost == null ||
                                  FFAppState().contentPost == ''
                              ? null
                              : () async {
                                  _model.apiResultxha =
                                      await SocialGroup.createPostCall.call(
                                    content: FFAppState().contentPost,
                                    userId: getJsonField(
                                      FFAppState().resProfile,
                                      r'''$.id''',
                                    ),
                                    accessToken: FFAppState().accessToken,
                                    urlsList: (getJsonField(
                                      _model.listImage,
                                      r'''$.arrImgs''',
                                      true,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList(),
                                  );
                                  if ((_model.apiResultxha?.succeeded ??
                                      true)) {
                                    setState(() {
                                      FFAppState().contentPost = '';
                                    });
                                    _model.apiResult5hr = await SocialGroup
                                        .getPostHomeCall
                                        .call();
                                    if ((_model.apiResult5hr?.succeeded ??
                                        true)) {
                                      FFAppState().update(() {
                                        FFAppState().resPostHome =
                                            (_model.apiResult5hr?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                      });
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Create Post Faild'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  Navigator.pop(context);

                                  setState(() {});
                                },
                          text: 'Post',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 14.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            disabledColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: wrapWithModel(
                                    model: _model.componentAvatarModel,
                                    updateCallback: () => setState(() {}),
                                    child: ComponentAvatarWidget(
                                      image: getJsonField(
                                        FFAppState().resProfile,
                                        r'''$.avatar''',
                                      ),
                                      idDetailUser: getJsonField(
                                        FFAppState().resProfile,
                                        r'''$.id''',
                                      ),
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.fullnameUserModel,
                                        updateCallback: () => setState(() {}),
                                        child: FullnameUserWidget(
                                          fullName: '${getJsonField(
                                            FFAppState().resProfile,
                                            r'''$.firstName''',
                                          ).toString()} ${getJsonField(
                                            FFAppState().resProfile,
                                            r'''$.lastName''',
                                          ).toString()}',
                                          idDetailUser: getJsonField(
                                            FFAppState().resProfile,
                                            r'''$.id''',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .dateLabelBg,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.public_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 20.0,
                                                ),
                                                Text(
                                                  'Public',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 20.0,
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .dateLabelBg,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 20.0,
                                                ),
                                                Text(
                                                  'Album',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 20.0,
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .dateLabelBg,
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 4.0, 4.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              size: 20.0,
                                            ),
                                            Text(
                                              'Off',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              size: 20.0,
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(),
                                child: Text(
                                  FFAppState().contentPost != null &&
                                          FFAppState().contentPost != ''
                                      ? FFAppState().contentPost
                                      : ' ',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.00, -1.00),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 10),
                                      () async {
                                        setState(() {
                                          FFAppState().contentPost =
                                              '${_model.textController.text}';
                                        });
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0x00FFFFFF),
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    maxLines: 5,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.loadingUploadImage == false)
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if ((_model.listImage != null) &&
                                          (_model.listImageShow.length == 1))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  getJsonField(
                                                    _model.listImage,
                                                    r'''$.arrImgs[0]''',
                                                  ),
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if ((_model.listImage != null) &&
                                          (_model.listImageShow.length > 1))
                                        Container(
                                          width: double.infinity,
                                          height: 400.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 8.0, 8.0),
                                            child: Builder(
                                              builder: (context) {
                                                final image = _model
                                                    .listImageShow
                                                    .toList();
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: image.length,
                                                  itemBuilder:
                                                      (context, imageIndex) {
                                                    final imageItem =
                                                        image[imageIndex];
                                                    return Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          '${imageItem}',
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
                                        ),
                                    ],
                                  ),
                                ),
                              if (_model.loadingUploadImage == true)
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.loadingModel,
                                    updateCallback: () => setState(() {}),
                                    child: LoadingWidget(),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: Container(
                  decoration: BoxDecoration(),
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
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: AddImagePostWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedFiles = await selectFiles(
                                multiFile: true,
                              );
                              if (selectedFiles != null) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                try {
                                  selectedUploadedFiles = selectedFiles
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                          ))
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                    selectedFiles.length) {
                                  setState(() {
                                    _model.uploadedLocalFiles =
                                        selectedUploadedFiles;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              setState(() {
                                _model.loadingUploadImage = true;
                              });
                              _model.apiResultzqb =
                                  await SocialGroup.uploadImagesCall.call(
                                imagesList: _model.uploadedLocalFiles,
                              );
                              if ((_model.apiResultzqb?.succeeded ?? true)) {
                                setState(() {
                                  _model.listImage =
                                      (_model.apiResultzqb?.jsonBody ?? '');
                                });
                                if (_model.listImageShow.length > 0) {
                                  setState(() {
                                    _model.listImageShow = functions
                                        .combieList(
                                            _model.listImageShow.toList(),
                                            (getJsonField(
                                              (_model.apiResultzqb?.jsonBody ??
                                                  ''),
                                              r'''$.arrImgs''',
                                              true,
                                            ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()!)
                                        .toList()
                                        .cast<String>();
                                  });
                                } else {
                                  setState(() {
                                    _model.listImageShow = (getJsonField(
                                      (_model.apiResultzqb?.jsonBody ?? ''),
                                      r'''$.arrImgs''',
                                      true,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()!
                                        .toList()
                                        .cast<String>();
                                  });
                                }

                                setState(() {
                                  _model.loadingUploadImage = false;
                                });
                              }

                              setState(() {});
                            },
                            child: Icon(
                              Icons.filter_sharp,
                              color: FlutterFlowTheme.of(context).success,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: FaIcon(
                          FontAwesomeIcons.tags,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.showEmoji) {
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
                            Icons.tag_faces_outlined,
                            color: FlutterFlowTheme.of(context).warning,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.location_pin,
                          color: FlutterFlowTheme.of(context).error,
                          size: 30.0,
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
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: MorePostWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 4.0, 4.0),
                            child: Icon(
                              Icons.keyboard_control,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_model.showEmoji)
          Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: custom_widgets.EmojiPickerWidget(
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: MediaQuery.sizeOf(context).height * 0.6,
              page: 'create_post',
            ),
          ),
      ],
    );
  }
}
