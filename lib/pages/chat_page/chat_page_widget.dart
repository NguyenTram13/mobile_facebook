import '/components/component_avatar_widget.dart';
import '/components/fullname_user_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_page_model.dart';
export 'chat_page_model.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({Key? key}) : super(key: key);

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late ChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: wrapWithModel(
                          model: _model.componentAvatarModel3,
                          updateCallback: () => setState(() {}),
                          child: ComponentAvatarWidget(
                            image: getJsonField(
                              FFAppState().profileMessage,
                              r'''$.avatar''',
                            ),
                            idDetailUser: getJsonField(
                              FFAppState().profileMessage,
                              r'''$.id''',
                            ),
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: wrapWithModel(
                          model: _model.fullnameUserModel,
                          updateCallback: () => setState(() {}),
                          child: FullnameUserWidget(
                            fullName: '${getJsonField(
                              FFAppState().profileMessage,
                              r'''$.firstName''',
                            ).toString()} ${getJsonField(
                              FFAppState().profileMessage,
                              r'''$.lastName''',
                            ).toString()}',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.phone,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 18.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.videocam,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.info_rounded,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ],
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: MediaQuery.sizeOf(context).height * 0.08,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (FFAppState().profileMessage == null)
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (FFAppState().profileMessage == null)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/367/600',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'No Message',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                          ],
                        ),
                      ),
                    if (FFAppState().profileMessage != null)
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible:
                                          FFAppState().messageCurrently.length >
                                              0,
                                      child: Builder(
                                        builder: (context) {
                                          final message = functions
                                              .reverseArr(FFAppState()
                                                  .messageCurrently
                                                  .toList())
                                              .toList();
                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children:
                                                  List.generate(message.length,
                                                      (messageIndex) {
                                                final messageItem =
                                                    message[messageIndex];
                                                return Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if ('${getJsonField(
                                                            messageItem,
                                                            r'''$.sender''',
                                                          ).toString()}' !=
                                                          '${FFAppState().idUser.toString()}')
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .componentAvatarModels1
                                                                    .getModel(
                                                                  getJsonField(
                                                                    messageItem,
                                                                    r'''$.id''',
                                                                  ).toString(),
                                                                  messageIndex,
                                                                ),
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ComponentAvatarWidget(
                                                                  key: Key(
                                                                    'Keys7x_${getJsonField(
                                                                      messageItem,
                                                                      r'''$.id''',
                                                                    ).toString()}',
                                                                  ),
                                                                  image:
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .profileMessage,
                                                                    r'''$.avatar''',
                                                                  ),
                                                                  idDetailUser:
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .profileMessage,
                                                                    r'''$.id''',
                                                                  ),
                                                                  width: 35.0,
                                                                  height: 35.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        12.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    messageItem,
                                                                    r'''$.text''',
                                                                  ).toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 16.0)),
                                                        ),
                                                      if ('${getJsonField(
                                                            messageItem,
                                                            r'''$.sender''',
                                                          ).toString()}' ==
                                                          '${FFAppState().idUser.toString()}')
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        12.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    messageItem,
                                                                    r'''$.text''',
                                                                  ).toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .componentAvatarModels2
                                                                    .getModel(
                                                                  getJsonField(
                                                                    messageItem,
                                                                    r'''$.id''',
                                                                  ).toString(),
                                                                  messageIndex,
                                                                ),
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ComponentAvatarWidget(
                                                                  key: Key(
                                                                    'Keyap2_${getJsonField(
                                                                      messageItem,
                                                                      r'''$.id''',
                                                                    ).toString()}',
                                                                  ),
                                                                  image:
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .resProfile,
                                                                    r'''$.avatar''',
                                                                  ),
                                                                  idDetailUser:
                                                                      FFAppState()
                                                                          .idUser,
                                                                  width: 35.0,
                                                                  height: 35.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 16.0)),
                                                        ),
                                                    ],
                                                  ),
                                                );
                                              }).divide(SizedBox(height: 12.0)),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().messageCurrently.length < 1)
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(),
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    'https://picsum.photos/seed/278/600',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Text(
                                                  'No Mesage',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
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
                    if (FFAppState().profileMessage != null)
                      Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Icon(
                                    Icons.image,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Icon(
                                    Icons.mic,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController',
                                                Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'Mesage',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(0.0, 0.0,
                                                            24.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.showIcon == true) {
                                                setState(() {
                                                  _model.showIcon = false;
                                                });
                                              } else {
                                                setState(() {
                                                  _model.showIcon = true;
                                                });
                                              }
                                            },
                                            child: Icon(
                                              Icons.insert_emoticon_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.textController.text == null ||
                                        _model.textController.text == '')
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 24.0,
                                        ),
                                      ),
                                    if (_model.textController.text != null &&
                                        _model.textController.text != '')
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.send,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 24.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                if (_model.showIcon == true)
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 500.0,
                      child: custom_widgets.EmojiPickerWidget(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 500.0,
                        page: 'message',
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
