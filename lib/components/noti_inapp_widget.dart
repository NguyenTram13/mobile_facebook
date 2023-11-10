import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noti_inapp_model.dart';
export 'noti_inapp_model.dart';

class NotiInappWidget extends StatefulWidget {
  const NotiInappWidget({Key? key}) : super(key: key);

  @override
  _NotiInappWidgetState createState() => _NotiInappWidgetState();
}

class _NotiInappWidgetState extends State<NotiInappWidget> {
  late NotiInappModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotiInappModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, -1.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 20.0),
        child: Material(
          color: Colors.transparent,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            width: 430.0,
            height: 85.0,
            constraints: BoxConstraints(
              minWidth: 200.0,
              minHeight: 50.0,
              maxWidth: 430.0,
              maxHeight: 200.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33777777),
                  offset: Offset(0.0, 2.0),
                )
              ],
              borderRadius: BorderRadius.circular(20.0),
              shape: BoxShape.rectangle,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/479/600',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getJsonField(
                            FFAppState().alertMessage,
                            r'''$.nameSender''',
                          ).toString().maybeHandleOverflow(
                                maxChars: 34,
                                replacement: '…',
                              ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Roboto',
                                color: Color(0xFF111417),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: AutoSizeText(
                            getJsonField(
                              FFAppState().alertMessage,
                              r'''$.text''',
                            ).toString().maybeHandleOverflow(
                                  maxChars: 34,
                                  replacement: '…',
                                ),
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF57636C),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodySmallFamily),
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
        ),
      ),
    );
  }
}
