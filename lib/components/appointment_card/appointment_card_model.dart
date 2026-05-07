import '/components/appointment_status_chip/appointment_status_chip_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'appointment_card_widget.dart' show AppointmentCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppointmentCardModel extends FlutterFlowModel<AppointmentCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AppointmentStatusChip.
  late AppointmentStatusChipModel appointmentStatusChipModel;

  @override
  void initState(BuildContext context) {
    appointmentStatusChipModel =
        createModel(context, () => AppointmentStatusChipModel());
  }

  @override
  void dispose() {
    appointmentStatusChipModel.dispose();
  }
}
