import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiscitasWidget extends StatefulWidget {
  const MiscitasWidget({Key? key}) : super(key: key);

  @override
  _MiscitasWidgetState createState() => _MiscitasWidgetState();
}

class _MiscitasWidgetState extends State<MiscitasWidget> {
  DateTimeRange? calendarSelectedDay;
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
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Mis Citas',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('NuevaCita');
                      },
                      text: 'Nueva Cita',
                      options: FFButtonOptions(
                        width: 130,
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
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 388.9,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<List<DatesRecord>>(
                  stream: queryDatesRecord(),
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
                    List<DatesRecord> columnDatesRecordList = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnDatesRecordList.length,
                          (columnIndex) {
                        final columnDatesRecord =
                            columnDatesRecordList[columnIndex];
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF0DB7D),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'Editacita',
                                    queryParams: {
                                      'cita': serializeParam(
                                        columnDatesRecord.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await columnDatesRecord.reference
                                            .delete();
                                      },
                                      text: 'X',
                                      options: FFButtonOptions(
                                        width: 40,
                                        height: 30,
                                        color: Color(0xFFE50000),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 6,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Text(
                                        columnDatesRecord.fechaHora!
                                            .toString()
                                            .maybeHandleOverflow(maxChars: 10),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Text(
                                      columnDatesRecord.asunto!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 30,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primaryColor,
                weekFormat: false,
                weekStartsMonday: false,
                onChange: (DateTimeRange? newSelectedDate) {
                  setState(() => calendarSelectedDay = newSelectedDate);
                },
                titleStyle: TextStyle(),
                dayOfWeekStyle: TextStyle(),
                dateStyle: TextStyle(),
                selectedDateStyle: TextStyle(),
                inactiveDateStyle: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
