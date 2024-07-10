import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/nearestatm/nearestatm_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'open_site_nearest_atm_model.dart';
export 'open_site_nearest_atm_model.dart';

class OpenSiteNearestAtmWidget extends StatefulWidget {
  const OpenSiteNearestAtmWidget({super.key});

  @override
  State<OpenSiteNearestAtmWidget> createState() =>
      _OpenSiteNearestAtmWidgetState();
}

class _OpenSiteNearestAtmWidgetState extends State<OpenSiteNearestAtmWidget> {
  late OpenSiteNearestAtmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenSiteNearestAtmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            'open_review_details',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 22.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Add Nearest ATM',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Site Photo',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Nearest Branch',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Nearest ATM',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Workbench',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.check_circle_sharp,
                      color: Color(0xFF07D95A),
                      size: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF07D95A),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF07D95A),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.check_circle_sharp,
                      color: Color(0xFF07D95A),
                      size: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF07D95A),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF07D95A),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_nearest_atm');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFF07D95A),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_remark');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFFD1D5DB),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'ATM-1',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 30.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF2D2D2D),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: wrapWithModel(
                    model: _model.nearestatmModel,
                    updateCallback: () => setState(() {}),
                    child: NearestatmWidget(),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2D2D2D),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('open_site_nearest_branch');
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              190.0, 0.0, 25.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.updateNearestATM =
                                  await SqGroup.updatenearestATMCall.call(
                                indentId: null,
                                token: FFAppState().Token,
                                atmid: _model
                                    .nearestatmModel.atmidTextController.text,
                                bankName: valueOrDefault<String>(
                                  _model.nearestatmModel.aTMNameValue,
                                  '1',
                                ),
                                distance: _model.nearestatmModel
                                    .distanceKMTextController.text,
                                direction: _model.nearestatmModel
                                    .directionTextController.text,
                                avgOffusTransDA: _model
                                    .nearestatmModel.avgOnusTextController.text,
                                avgOnusTransDA: _model
                                    .nearestatmModel.avgOnusTextController.text,
                                avgtxns: _model.nearestatmModel
                                    .avgApproxTxnsDayTextController.text,
                                siteId: FFAppState().SiteId,
                                iindent: null,
                                avgTotaltransDA: _model.nearestatmModel
                                    .avgApproxTotalDayTextController.text,
                                targetBank: null,
                                district: null,
                                centre: null,
                                comment: null,
                                lastModStamp: null,
                                isHold: null,
                                istage: null,
                                iStageText: null,
                                locationName: null,
                                androidKey: null,
                                isPrizm: '0',
                                pinCode: getJsonField(
                                  FFAppState().indentSelectedSite,
                                  r'''$.Pincode''',
                                ).toString(),
                                errCnt: null,
                                isWB: '0',
                                msg: null,
                                emailId: null,
                                contactNumber: null,
                                employeeName: null,
                                companyName: null,
                                iDevice: null,
                                isBranch: valueOrDefault<String>(
                                  _model.nearestatmModel.atmStatus.toString(),
                                  '1',
                                ),
                                isFromSiteref: false,
                              );

                              if ((String var1) {
                                return var1 == "DATA ADDED" ? true : false;
                              }(getJsonField(
                                (_model.updateNearestATM?.jsonBody ?? ''),
                                r'''$.Msg''',
                              ).toString())) {
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed(
                                  'open_site_remark',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Alert(UpdateNearestATM)'),
                                      content: Text(
                                          (_model.updateNearestATM?.bodyText ??
                                              '')),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              setState(() {});
                            },
                            text: 'Save & Next',
                            options: FFButtonOptions(
                              width: 118.0,
                              height: 40.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFFF0026),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
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
      ),
    );
  }
}
