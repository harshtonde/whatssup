import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login_and_signup_page/login_and_signup_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'WhatsApp',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Roboto',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.search_outlined,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.more_vert,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            iconSize: 30,
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await signOut();
          await Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginAndSignupPageWidget(),
            ),
            (r) => false,
          );
        },
        backgroundColor: Color(0xFF25D366),
        elevation: 8,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
            DefaultTabController(
              length: 4,
              initialIndex: 1,
              child: Column(
                children: [
                  TabBar(
                    labelColor: FlutterFlowTheme.tertiaryColor,
                    indicatorColor: FlutterFlowTheme.tertiaryColor,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.photo_camera,
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                      ),
                      Tab(
                        text: 'Chats',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                      Tab(
                        text: 'Calls',
                      )
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Text(
                          'Tab View 1',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          'Tab View 2',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          'Tab View 3',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 32,
                          ),
                        ),
                        Stack(
                          children: [
                            Text(
                              'Tab View 4',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Roboto',
                                fontSize: 32,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
