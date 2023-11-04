import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fullname_user_model.dart';
export 'fullname_user_model.dart';

class FullnameUserWidget extends StatefulWidget {
  const FullnameUserWidget({
    Key? key,
    this.fullName,
    this.idDetailUser,
  }) : super(key: key);

  final String? fullName;
  final int? idDetailUser;

  @override
  _FullnameUserWidgetState createState() => _FullnameUserWidgetState();
}

class _FullnameUserWidgetState extends State<FullnameUserWidget> {
  late FullnameUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullnameUserModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        FFAppState().update(() {
          FFAppState().idDetailUser = widget.idDetailUser!;
        });

        context.pushNamed(
          'Profile',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      },
      child: Text(
        valueOrDefault<String>(
          widget.fullName != null && widget.fullName != ''
              ? widget.fullName
              : 'Loading...',
          'a',
        ),
        style: FlutterFlowTheme.of(context).bodySmall.override(
              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
              fontWeight: FontWeight.w600,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
            ),
      ),
    );
  }
}
