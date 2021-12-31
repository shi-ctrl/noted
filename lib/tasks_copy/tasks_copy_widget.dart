import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/new_task_copy_widget.dart';
import '../components/new_task_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile_page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class TasksCopyWidget extends StatefulWidget {
  const TasksCopyWidget({Key key}) : super(key: key);

  @override
  _TasksCopyWidgetState createState() => _TasksCopyWidgetState();
}

class _TasksCopyWidgetState extends State<TasksCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0A0A0A),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 410,
                  child: NewTaskWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF030404),
                  ),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.05, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.asset(
                                      'assets/images/logo2-resized.png',
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: 'imageTag1',
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'imageTag1',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.asset(
                                  'assets/images/logo2-resized.png',
                                  width: 500,
                                  height: 50,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -1),
                                child: AuthUserStreamWidget(
                                  child: Text(
                                    currentUserDocument?.name,
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.75, -1),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: ProfilePageWidget(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/853/600',
                                      fit: BoxFit.scaleDown,
                                    ),
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
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'TODAY',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<TasksRecord>>(
                        stream: queryTasksRecord(
                          queryBuilder: (tasksRecord) =>
                              tasksRecord.where('tag', isEqualTo: 'today'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            );
                          }
                          List<TasksRecord> listViewTasksRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewTasksRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewTasksRecord =
                                  listViewTasksRecordList[listViewIndex];
                              return InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: NewTaskCopyWidget(),
                                      );
                                    },
                                  );
                                },
                                child: ListTile(
                                  title: Text(
                                    listViewTasksRecord.name,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                  subtitle: Text(
                                    dateTimeFormat(
                                        'MMMEd', listViewTasksRecord.due),
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  dense: false,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'TO DO',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<TasksRecord>>(
                        stream: queryTasksRecord(
                          queryBuilder: (tasksRecord) => tasksRecord
                              .where('tag', isEqualTo: 'doing')
                              .orderBy('due'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            );
                          }
                          List<TasksRecord> listViewTasksRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewTasksRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewTasksRecord =
                                  listViewTasksRecordList[listViewIndex];
                              return InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: NewTaskCopyWidget(),
                                      );
                                    },
                                  );
                                },
                                child: ListTile(
                                  title: Text(
                                    listViewTasksRecord.name,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                  subtitle: Text(
                                    dateTimeFormat(
                                        'MMMEd', listViewTasksRecord.due),
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF303030),
                                    size: 20,
                                  ),
                                  dense: false,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'PLAN',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/The-Eisenhower-Decision-Matrix.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100,
                            height: 75,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF2F9C1D),
                                width: 3,
                              ),
                            ),
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where('tag', isNotEqualTo: 'do'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord> listViewTasksRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewTasksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewTasksRecord =
                                        listViewTasksRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: 'Share',
                                          color: Colors.blue,
                                          icon: Icons.share,
                                          onTap: () {
                                            print(
                                                'SlidableActionWidget pressed ...');
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewTasksRecord.name,
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF2F9C1D),
                                            fontSize: 10,
                                          ),
                                        ),
                                        subtitle: Text(
                                          dateTimeFormat(
                                              'MMMEd', listViewTasksRecord.due),
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF2F9C1D),
                                            fontSize: 8,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF2F9C1D),
                                          size: 20,
                                        ),
                                        dense: false,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF229199),
                                width: 3,
                              ),
                            ),
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where('tag', isEqualTo: 'decide'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord> listViewTasksRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewTasksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewTasksRecord =
                                        listViewTasksRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: 'Share',
                                          color: Colors.blue,
                                          icon: Icons.share,
                                          onTap: () {
                                            print(
                                                'SlidableActionWidget pressed ...');
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewTasksRecord.name,
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF229199),
                                            fontSize: 10,
                                          ),
                                        ),
                                        subtitle: Text(
                                          dateTimeFormat(
                                              'MMMEd', listViewTasksRecord.due),
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF229199),
                                            fontSize: 8,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF229199),
                                          size: 20,
                                        ),
                                        dense: false,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF9E0808),
                                width: 3,
                              ),
                            ),
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where('tag', isEqualTo: 'delegate'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord> listViewTasksRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewTasksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewTasksRecord =
                                        listViewTasksRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: 'Share',
                                          color: Colors.blue,
                                          icon: Icons.share,
                                          onTap: () {
                                            print(
                                                'SlidableActionWidget pressed ...');
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewTasksRecord.name,
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF9E0808),
                                            fontSize: 10,
                                          ),
                                        ),
                                        subtitle: Text(
                                          dateTimeFormat(
                                              'MMMEd', listViewTasksRecord.due),
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF9E0808),
                                            fontSize: 8,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF9E0808),
                                          size: 20,
                                        ),
                                        dense: false,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.tertiaryColor,
                                width: 3,
                              ),
                            ),
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where('tag', isEqualTo: 'defer'),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord> listViewTasksRecordList =
                                    snapshot.data;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewTasksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewTasksRecord =
                                        listViewTasksRecordList[listViewIndex];
                                    return Slidable(
                                      actionPane:
                                          const SlidableScrollActionPane(),
                                      secondaryActions: [
                                        IconSlideAction(
                                          caption: 'Share',
                                          color: Colors.blue,
                                          icon: Icons.share,
                                          onTap: () {
                                            print(
                                                'SlidableActionWidget pressed ...');
                                          },
                                        ),
                                      ],
                                      child: ListTile(
                                        title: Text(
                                          listViewTasksRecord.name,
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Poppins',
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
                                            fontSize: 10,
                                          ),
                                        ),
                                        subtitle: Text(
                                          dateTimeFormat(
                                              'MMMEd', listViewTasksRecord.due),
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
                                            fontSize: 8,
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: FlutterFlowTheme.tertiaryColor,
                                          size: 20,
                                        ),
                                        dense: false,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
