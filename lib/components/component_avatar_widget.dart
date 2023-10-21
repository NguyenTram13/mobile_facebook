import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_avatar_model.dart';
export 'component_avatar_model.dart';

class ComponentAvatarWidget extends StatefulWidget {
  const ComponentAvatarWidget({
    Key? key,
    this.image,
    this.idDetailUser,
    double? width,
    double? height,
  })  : this.width = width ?? .0,
        this.height = height ?? .0,
        super(key: key);

  final String? image;
  final int? idDetailUser;
  final double width;
  final double height;

  @override
  _ComponentAvatarWidgetState createState() => _ComponentAvatarWidgetState();
}

class _ComponentAvatarWidgetState extends State<ComponentAvatarWidget> {
  late ComponentAvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentAvatarModel());
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
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.network(
            widget.image != null && widget.image != ''
                ? widget.image!
                : FFAppState().avatarDefault,
            width: widget.width != null ? widget.width : 40.0,
            height: widget.height != null ? widget.height : 40.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
