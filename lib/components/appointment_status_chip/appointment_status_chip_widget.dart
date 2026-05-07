import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'appointment_status_chip_model.dart';
export 'appointment_status_chip_model.dart';

class AppointmentStatusChipWidget extends StatefulWidget {
  const AppointmentStatusChipWidget({
    super.key,
    String? status,
  }) : this.status = status ?? 'approved';

  final String status;

  @override
  State<AppointmentStatusChipWidget> createState() =>
      _AppointmentStatusChipWidgetState();
}

class _AppointmentStatusChipWidgetState
    extends State<AppointmentStatusChipWidget> {
  late AppointmentStatusChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointmentStatusChipModel());

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
          if (widget!.status == 'pending') {
            return Color(0x00000000);
          } else if (widget!.status == 'rejected') {
            return Color(0x00000000);
          } else {
            return FlutterFlowTheme.of(context).success15;
          }
        }(),
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget!.status,
              'approved',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: () {
                    if (widget!.status == 'pending') {
                      return Color(0x00000000);
                    } else if (widget!.status == 'rejected') {
                      return Color(0x00000000);
                    } else {
                      return FlutterFlowTheme.of(context).success;
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
