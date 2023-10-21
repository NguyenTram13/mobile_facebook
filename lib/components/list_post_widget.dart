import '/components/post_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_post_model.dart';
export 'list_post_model.dart';

class ListPostWidget extends StatefulWidget {
  const ListPostWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final List<dynamic>? data;

  @override
  _ListPostWidgetState createState() => _ListPostWidgetState();
}

class _ListPostWidgetState extends State<ListPostWidget> {
  late ListPostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListPostModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.data!.length > 0)
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent2,
            ),
            child: Visibility(
              visible: widget.data!.length > 0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final post = widget.data?.toList() ?? [];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(post.length, (postIndex) {
                        final postItem = post[postIndex];
                        return wrapWithModel(
                          model: _model.postModels.getModel(
                            getJsonField(
                              postItem,
                              r'''$.id''',
                            ).toString(),
                            postIndex,
                          ),
                          updateCallback: () => setState(() {}),
                          child: PostWidget(
                            key: Key(
                              'Key8se_${getJsonField(
                                postItem,
                                r'''$.id''',
                              ).toString()}',
                            ),
                            data: postItem,
                          ),
                        );
                      }).divide(SizedBox(height: 4.0)),
                    );
                  },
                ),
              ),
            ),
          ),
        if (widget.data!.length < 1)
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'No Post',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).accent3,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
