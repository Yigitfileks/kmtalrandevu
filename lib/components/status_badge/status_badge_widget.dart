import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_badge_model.dart';
export 'status_badge_model.dart';

class StatusBadgeWidget extends StatefulWidget {
  const StatusBadgeWidget({
    super.key,
    String? status,
  }) : this.status = status ?? 'pending';

  final String status;

  @override
  State<StatusBadgeWidget> createState() => _StatusBadgeWidgetState();
}

class _StatusBadgeWidgetState extends State<StatusBadgeWidget> {
  late StatusBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadgeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: () {
          if (widget!.status == 'approved') {
            return FlutterFlowTheme.of(context).success15;
          } else if (widget!.status == 'Rejected') {
            return FlutterFlowTheme.of(context).error15;
          } else if (widget!.status == 'Completed') {
            return FlutterFlowTheme.of(context).primary15;
          } else {
            return FlutterFlowTheme.of(context).hint15;
          }
        }(),
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget!.status,
              'pending',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: () {
                    if (widget!.status == 'approved') {
                      return FlutterFlowTheme.of(context).success;
                    } else if (widget!.status == 'Rejected') {
                      return FlutterFlowTheme.of(context).error;
                    } else if (widget!.status == 'Completed') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryText;
                    }
                  }(),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ),
      ),
    );
  }
}
