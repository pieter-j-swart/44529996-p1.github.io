import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  /// HomePage
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() => _model.apiRequestCompleter = null);
      await _model.waitForApiRequestCompleted();
    });

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).secondary,
                    const Color(0xFF2B3759)
                  ],
                  stops: const [0.0, 0.7],
                  begin: const AlignmentDirectional(0.0, -1.0),
                  end: const AlignmentDirectional(0, 1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome, ${FFAppState().userFirstName}',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: const Color(0xFF2B3759),
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Be alert and vigilant',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF333333),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 24.0,
                          buttonSize: 48.0,
                          fillColor: FlutterFlowTheme.of(context).tertiary,
                          icon: const Icon(
                            Icons.logout,
                            color: Color(0xFF2B3759),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            _model.apiResultt4k =
                                await TripleTechTitansAPIGroup.logoutCall.call(
                              bearerAuth: FFAppState().authAccessToken,
                              refresh: FFAppState().authRefreshToken,
                            );

                            FFAppState().logoutStatusCode =
                                (_model.apiResultt4k?.statusCode ?? 200)
                                    .toString();
                            if (FFAppState().logoutStatusCode == '205') {
                              context.pushNamed('LoginPage');
                            } else {
                              FFAppState().isErrorLogout = true;
                              safeSetState(() {});
                            }

                            safeSetState(() {});
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Emergency List',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: const Color(0xFF2B3759),
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: (_model.apiRequestCompleter ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(
                                                  TripleTechTitansAPIGroup
                                                      .getAssignmentsCall
                                                      .call(
                                                bearerAuth: FFAppState()
                                                    .authAccessToken,
                                              )))
                                        .future,
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewGetAssignmentsResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final assignments = getJsonField(
                                            listViewGetAssignmentsResponse
                                                .jsonBody,
                                            r'''$''',
                                          ).toList();

                                          return RefreshIndicator(
                                            onRefresh: () async {},
                                            child: ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: assignments.length,
                                              itemBuilder:
                                                  (context, assignmentsIndex) {
                                                final assignmentsItem =
                                                    assignments[
                                                        assignmentsIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      AutoSizeText(
                                                        getJsonField(
                                                          assignmentsItem,
                                                          r'''$.id''',
                                                        )
                                                            .toString()
                                                            .maybeHandleOverflow(
                                                              maxChars: 23,
                                                              replacement: '…',
                                                            ),
                                                        minFontSize: 14.0,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          FFAppState()
                                                                  .emergencyIdToLocate =
                                                              getJsonField(
                                                            assignmentsItem,
                                                            r'''$.emergency''',
                                                          ).toString();
                                                          FFAppState()
                                                                  .assignmentIdToLocate =
                                                              getJsonField(
                                                            assignmentsItem,
                                                            r'''$.id''',
                                                          ).toString();
                                                          safeSetState(() {});
                                                          _model.apiResultysr =
                                                              await TripleTechTitansAPIGroup
                                                                  .getEmergencyByUUIDCall
                                                                  .call(
                                                            bearerAuth: FFAppState()
                                                                .authAccessToken,
                                                            uuid: FFAppState()
                                                                .emergencyIdToLocate,
                                                          );

                                                          FFAppState()
                                                                  .emergencyStatusCode =
                                                              (_model.apiResultysr
                                                                          ?.statusCode ??
                                                                      200)
                                                                  .toString();
                                                          safeSetState(() {});
                                                          if (FFAppState()
                                                                  .emergencyStatusCode ==
                                                              '200') {
                                                            FFAppState()
                                                                    .locationToLocate =
                                                                TripleTechTitansAPIGroup
                                                                    .getEmergencyByUUIDCall
                                                                    .locationToLocate(
                                                              (_model.apiResultysr
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;
                                                            FFAppState()
                                                                    .userToLocateStudentNumber =
                                                                TripleTechTitansAPIGroup
                                                                    .getEmergencyByUUIDCall
                                                                    .userToLocateStudentNumber(
                                                              (_model.apiResultysr
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;
                                                            safeSetState(() {});
                                                            _model.apiResultlqw =
                                                                await TripleTechTitansAPIGroup
                                                                    .getLocationByUUIDCall
                                                                    .call(
                                                              uuid: FFAppState()
                                                                  .locationToLocate,
                                                              bearerAuth:
                                                                  FFAppState()
                                                                      .authAccessToken,
                                                            );

                                                            FFAppState()
                                                                    .locationStatusCode =
                                                                (_model.apiResultlqw
                                                                            ?.statusCode ??
                                                                        200)
                                                                    .toString();
                                                            safeSetState(() {});
                                                            if (FFAppState()
                                                                    .locationStatusCode ==
                                                                '200') {
                                                              FFAppState()
                                                                      .locationToLocateLatitude =
                                                                  TripleTechTitansAPIGroup
                                                                      .getLocationByUUIDCall
                                                                      .locationToLocateLatitude(
                                                                        (_model.apiResultlqw?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                      .toString();
                                                              FFAppState()
                                                                      .locationToLocateLongitude =
                                                                  TripleTechTitansAPIGroup
                                                                      .getLocationByUUIDCall
                                                                      .locationToLocateLongitude(
                                                                        (_model.apiResultlqw?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                      .toString();
                                                              FFAppState()
                                                                      .userToLocateId =
                                                                  TripleTechTitansAPIGroup
                                                                      .getLocationByUUIDCall
                                                                      .userToLocateId(
                                                                (_model.apiResultlqw
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!;
                                                              FFAppState()
                                                                      .emergencySelected =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState()
                                                                      .destinationLocation =
                                                                  functions.latLngToLatLng(
                                                                      FFAppState()
                                                                          .locationToLocateLatitude,
                                                                      FFAppState()
                                                                          .locationToLocateLongitude);
                                                              safeSetState(
                                                                  () {});
                                                              _model.destinationLocation =
                                                                  FFAppState()
                                                                      .destinationLocation;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              FFAppState()
                                                                      .emergencySelected =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                        text: 'Go!',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter Tight',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 500.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (!FFAppState().emergencySelected)
                                  Text(
                                    'Select an emergency to display the route.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF2B3759),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                if (FFAppState().emergencySelected)
                                  Expanded(
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: custom_widgets.RouteViewStatic(
                                        width: double.infinity,
                                        height: double.infinity,
                                        lineColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        iOSGoogleMapsApiKey:
                                            'AIzaSyCphzNwy2ogvvfLD4wyCmslH4-qMJ8cXnE',
                                        androidGoogleMapsApiKey:
                                            'AIzaSyCphzNwy2ogvvfLD4wyCmslH4-qMJ8cXnE',
                                        webGoogleMapsApiKey:
                                            'AIzaSyCphzNwy2ogvvfLD4wyCmslH4-qMJ8cXnE',
                                        startCoordinate:
                                            currentUserLocationValue!,
                                        endCoordinate:
                                            _model.destinationLocation!,
                                      ),
                                    ),
                                  ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 24.0))
                      .around(const SizedBox(height: 24.0)),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
