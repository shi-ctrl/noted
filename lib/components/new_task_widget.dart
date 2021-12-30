import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../tasks_copy/tasks_copy_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTaskWidget extends StatefulWidget {
  const NewTaskWidget({Key key}) : super(key: key);

  @override
  _NewTaskWidgetState createState() => _NewTaskWidgetState();
}

class _NewTaskWidgetState extends State<NewTaskWidget> {
  DateTime datePicked1;
  TextEditingController taskDueController;
  DateTime datePicked2;
  TextEditingController taskNameController;
  String dropDownCategoryValue;
  String dropDownTagValue;
  String prioritySetValue;

  @override
  void initState() {
    super.initState();
    taskDueController = TextEditingController();
    taskNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 375,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'Add Task',
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 360,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: TextFormField(
                              controller: taskNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Task Name',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                                hintText: 'New Task Name',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
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
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: TextFormField(
                              onChanged: (_) => EasyDebounce.debounce(
                                'taskDueController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              onFieldSubmitted: (_) async {
                                await DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked1 = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: getCurrentTimestamp,
                                );
                              },
                              controller: taskDueController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Due Date',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                                hintText: dateTimeFormat('yMMMd', datePicked2),
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
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
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await DatePicker.showDatePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked2 = date);
                              },
                              currentTime: getCurrentTimestamp,
                              minTime: getCurrentTimestamp,
                            );
                          },
                          child: Icon(
                            Icons.date_range,
                            color: FlutterFlowTheme.primaryColor,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Category',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: FlutterFlowDropDown(
                              options: ['family', 'work', 'school', 'personal']
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownCategoryValue = val),
                              width: 180,
                              height: 50,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                              hidesUnderline: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Tag',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'do',
                                'decide',
                                'delegate',
                                'defer',
                                'doing',
                                'done',
                                'archived'
                              ].toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownTagValue = val),
                              width: 180,
                              height: 50,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                              hidesUnderline: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Priority',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: FlutterFlowRadioButton(
                              options: ['High', 'Medium', 'Low'],
                              onChanged: (value) {
                                setState(() => prioritySetValue = value);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor: Colors.blue,
                              inactiveRadioButtonColor: Color(0xFF9E9E9E),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xFF9E9E9E),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.1, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final tasksCreateData = createTasksRecordData(
                                created: getCurrentTimestamp,
                                due: datePicked2,
                                name: valueOrDefault<String>(
                                  taskNameController.text,
                                  'New Task',
                                ),
                                priority: prioritySetValue,
                                tag: dropDownTagValue,
                                category: dropDownCategoryValue,
                                userId: currentUserUid,
                              );
                              await TasksRecord.collection
                                  .doc()
                                  .set(tasksCreateData);
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: TasksCopyWidget(),
                                ),
                              );
                            },
                            text: 'Add ',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
