import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/commercial_advance/commercial_advance_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'open_site_commercial_model.dart';
export 'open_site_commercial_model.dart';

class OpenSiteCommercialWidget extends StatefulWidget {
  const OpenSiteCommercialWidget({super.key});

  @override
  State<OpenSiteCommercialWidget> createState() =>
      _OpenSiteCommercialWidgetState();
}

class _OpenSiteCommercialWidgetState extends State<OpenSiteCommercialWidget> {
  late OpenSiteCommercialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenSiteCommercialModel());

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Add Site Commercial',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '3/8',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
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
                        'Site Details',
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
                        'Landlord Details',
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
                        'Commercial',
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
                        'Site Dimensions',
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
                    FaIcon(
                      FontAwesomeIcons.dotCircle,
                      color: Color(0xFF07D95A),
                      size: 20.0,
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
                    FaIcon(
                      FontAwesomeIcons.dotCircle,
                      color: Color(0xFFD1D5DB),
                      size: 20.0,
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
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: wrapWithModel(
                    model: _model.commercialAdvanceModel,
                    updateCallback: () => setState(() {}),
                    child: CommercialAdvanceWidget(),
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
                            context.pushNamed('open_site_landlord_details');
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
                              var _shouldSetState = false;
                              if (_model
                                      .commercialAdvanceModel.rentaltypeValue ==
                                  'Advance Rent') {
                                _model.tDOADetailsThirdWordAdvance =
                                    await SqGroup.dOADetailsstepTHIRDworddocCall
                                        .call(
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  rentFreePeriod: _model.commercialAdvanceModel
                                      .rentFreePeriodAdvanceValue,
                                  rentalType: 'Advance Rent',
                                  token: FFAppState().Token,
                                  rent: _model.commercialAdvanceModel
                                      .advanceRentAmountRENTTextController.text,
                                  advanceDeposit: _model.commercialAdvanceModel
                                      .advanceAmountAdvanceTextController.text,
                                  totalDeposit: _model
                                      .commercialAdvanceModel
                                      .totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                                      .text,
                                  securityDeposit: _model.commercialAdvanceModel
                                      .advanceRentMonthRentOrSecurityMonthsValue,
                                  agreementPeriod: _model.commercialAdvanceModel
                                      .agreementPeriodsAdvanceValue,
                                  escalationPeriod: _model
                                      .commercialAdvanceModel
                                      .escalationPeriodAdvanceValue,
                                  isAdvance: valueOrDefault<String>(
                                    _model.commercialAdvanceModel.rentaltype
                                        .toString(),
                                    '1',
                                  ),
                                  fullDeposit: _model.commercialAdvanceModel
                                      .balanceAmountAdvanceTextController.text,
                                  oneMonthDeposit: _model.commercialAdvanceModel
                                      .advanceRentAmountRENTTextController.text,
                                  balanceDeposit: _model.commercialAdvanceModel
                                      .balanceAmountAdvanceTextController.text,
                                  totalAdvSec: _model.commercialAdvanceModel
                                      .advanceRentMonthRentOrSecurityMonthsValue,
                                  rentEscalation: _model.commercialAdvanceModel
                                      .rentFreePeriodAdvanceValue,
                                  siteId: FFAppState().SiteId,
                                  iindent: null,
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
                                  months: _model.commercialAdvanceModel
                                      .intialAdvanceValue,
                                  isWB: '0',
                                  employeeName: null,
                                  companyName: null,
                                  contactNumber: null,
                                  emailId: null,
                                  isExl: '0',
                                  monthlybpcltranslitefee: null,
                                  commType: null,
                                  commDeposite: null,
                                  errCnt: null,
                                  isFromSiteref: null,
                                  msg: null,
                                );

                                _shouldSetState = true;
                                if ((_model.tDOADetailsThirdWordAdvance
                                        ?.succeeded ??
                                    true)) {
                                  context.goNamed('indent_site_dimensions');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert (Dimesions)'),
                                        content: Text((_model
                                                .tDOADetailsThirdWordAdvance
                                                ?.bodyText ??
                                            '')),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                if (_shouldSetState) setState(() {});
                                return;
                              } else {
                                _model.dOADetailsThirdWordsecur = await SqGroup
                                    .dOADetailsstepTHIRDworddocCall
                                    .call(
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  rentFreePeriod: _model.commercialAdvanceModel
                                      .rentFreePeriodsSecurityValue,
                                  rentalType: 'Security Deposit',
                                  token: FFAppState().Token,
                                  rent: _model
                                      .commercialAdvanceModel
                                      .securityRentRentPerMonthTextController
                                      .text,
                                  advanceDeposit: '00',
                                  totalDeposit: _model
                                      .commercialAdvanceModel
                                      .balanceSDAmountSecurityTextController
                                      .text,
                                  securityDeposit: _model.commercialAdvanceModel
                                      .securityDepositValue,
                                  agreementPeriod: _model.commercialAdvanceModel
                                      .agreementPeriodsSecurityValue,
                                  escalationPeriod: _model
                                      .commercialAdvanceModel
                                      .escalationPeriodSecurityValue,
                                  isAdvance: valueOrDefault<String>(
                                    _model.commercialAdvanceModel.rentaltype
                                        .toString(),
                                    '0',
                                  ),
                                  fullDeposit: _model
                                      .commercialAdvanceModel
                                      .balanceSDAmountSecurityTextController
                                      .text,
                                  oneMonthDeposit: _model
                                      .commercialAdvanceModel
                                      .securityRentRentPerMonthTextController
                                      .text,
                                  balanceDeposit: _model
                                      .commercialAdvanceModel
                                      .balanceSDAmountSecurityTextController
                                      .text,
                                  totalAdvSec: _model.commercialAdvanceModel
                                      .totalSecurityDepositTextController.text,
                                  rentEscalation: _model.commercialAdvanceModel
                                      .rentEscalationPerSecurityValue,
                                  siteId: FFAppState().SiteId,
                                  iindent: null,
                                  months: _model.commercialAdvanceModel
                                      .intialAdvancemonthSecurityValue,
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
                                  isWB: null,
                                  companyName: null,
                                  employeeName: null,
                                  contactNumber: null,
                                  emailId: null,
                                  isExl: '0',
                                  monthlybpcltranslitefee: null,
                                  errCnt: null,
                                  commType: null,
                                  commDeposite: null,
                                  msg: null,
                                  isFromSiteref: '0',
                                );

                                _shouldSetState = true;
                                if ((_model
                                        .dOADetailsThirdWordsecur?.succeeded ??
                                    true)) {
                                  context.goNamed('indent_site_dimensions');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert (Dimesions)'),
                                        content: Text((_model
                                                .dOADetailsThirdWordsecur
                                                ?.bodyText ??
                                            '')),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                if (_shouldSetState) setState(() {});
                                return;
                              }

                              if (_shouldSetState) setState(() {});
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
