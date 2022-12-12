import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditacitaWidget extends StatefulWidget {
  const EditacitaWidget({
    Key? key,
    this.cita,
  }) : super(key: key);

  final DocumentReference? cita;

  @override
  _EditacitaWidgetState createState() => _EditacitaWidgetState();
}

class _EditacitaWidgetState extends State<EditacitaWidget> {
  DateTimeRange? calendarSelectedDay;
  TextEditingController? textController1;
  TextEditingController? textController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Reagendar cita',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<DatesRecord>(
            stream: DatesRecord.getDocument(widget.cita!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              final columnDatesRecord = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: textController1 ??= TextEditingController(
                            text: columnDatesRecord.asunto,
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Asunto',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        TextFormField(
                          controller: textController2 ??= TextEditingController(
                            text: columnDatesRecord.notas,
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Notas',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          maxLines: 5,
                        ),
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          weekFormat: false,
                          weekStartsMonday: false,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(
                                () => calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle: TextStyle(),
                          dayOfWeekStyle: TextStyle(),
                          dateStyle: TextStyle(),
                          selectedDateStyle: TextStyle(),
                          inactiveDateStyle: TextStyle(),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datesUpdateData = createDatesRecordData(
                              fechaHora: calendarSelectedDay?.start,
                              notas: textController2?.text ?? '',
                              asunto: textController1?.text ?? '',
                            );
                            await widget.cita!.update(datesUpdateData);

                            context.pushNamed('Miscitas');
                          },
                          text: 'Guardar Cambios',
                          options: FFButtonOptions(
                            width: 200,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
