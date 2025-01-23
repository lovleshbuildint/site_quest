import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/commercial_advance/commercial_advance_widget.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indent_site_commercial_model.dart';
export 'indent_site_commercial_model.dart';

class IndentSiteCommercialWidget extends StatefulWidget {
  const IndentSiteCommercialWidget({
    super.key,
    required this.updateData,
    required this.trydata,
  });

  final bool? updateData;
  final bool? trydata;

  @override
  State<IndentSiteCommercialWidget> createState() =>
      _IndentSiteCommercialWidgetState();
}

class _IndentSiteCommercialWidgetState
    extends State<IndentSiteCommercialWidget> {
  late IndentSiteCommercialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndentSiteCommercialModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.updateData! && (FFAppState().siteidint > 0)) {
        _model.apiResultuyr = await SqGroup.dOADetailsstepthreeCall.call(
          iIndent: FFAppState().siteidint.toString(),
          token: FFAppState().Token,
        );

        if ((_model.apiResultuyr?.succeeded ?? true)) {
          safeSetState(() {
            _model.commercialAdvanceModel.rentaltypeValueController?.value =
                _model.commercialAdvanceModel.rentaltypeValue!;
          });
          safeSetState(() {
            _model.commercialAdvanceModel.eBillingRentAdvanceValueController
                ?.value = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].isEnclEB''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel.advanceRentAmountRENTTextController
                ?.text = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].Rent''',
            ).toString().toString();
          });
          safeSetState(() {
            _model
                .commercialAdvanceModel
                .advanceRentMonthRentOrSecurityMonthsValueController
                ?.value = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].EscalationPeriod''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel
                .rentFreePeriodAdvancesssValueController?.value = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].RentFreePeriod''',
            ).toString().toString();
          });
          safeSetState(() {
            _model
                .commercialAdvanceModel
                .totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                ?.text = FFAppState().TotalAdvanceAmountopencommercial;
          });
          safeSetState(() {
            _model.commercialAdvanceModel.intialAdvanceValueController?.value =
                getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].SecurityDeposit''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel.balanceAmountAdvanceTextController
                ?.text = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].AdvanceDeposit''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel.advanceAmountAdvanceTextController
                ?.text = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].AdvanceDeposit''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel.rentEscaltionAdvanceValueController
                ?.value = FFAppState().rentescalationPerOpencommercial;
          });
          safeSetState(() {
            _model.commercialAdvanceModel.agreementPeriodsAdvanceValueController
                ?.value = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].AgreementPeriod''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.commercialAdvanceModel.escalationPeriodAdvanceValueController
                ?.value = getJsonField(
              (_model.apiResultuyr?.jsonBody ?? ''),
              r'''$.indents[0].EscalationPeriod''',
            ).toString().toString();
          });
        } else {
          return;
        }
      } else {
        return;
      }
    });
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
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
                                  'indent_review_details',
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
                                      font: GoogleFonts.poppins(),
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(),
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
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      minHeight: 126.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color(0x58404042),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xFFD8D8D8),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/591/900',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 25.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            'Customer',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                          AutoSizeText(
                                            getJsonField(
                                              FFAppState().indentSelectedSite,
                                              r'''$.CustomerBank''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              'Indent Number',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(),
                                                    color: Colors.black,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                            AutoSizeText(
                                              getJsonField(
                                                FFAppState().indentSelectedSite,
                                                r'''$.IndentId''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              'Strategy',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(),
                                                    color: Colors.black,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                            AutoSizeText(
                                              getJsonField(
                                                FFAppState().indentSelectedSite,
                                                r'''$.Strategy''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'City',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.poppins(),
                                                      color: Colors.black,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                              AutoSizeText(
                                                getJsonField(
                                                  FFAppState()
                                                      .indentSelectedSite,
                                                  r'''$.City''',
                                                ).toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.poppins(),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Site Details',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
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
                      updateCallback: () => safeSetState(() {}),
                      child: CommercialAdvanceWidget(
                        updatedatatest: true,
                      ),
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'indent_site_landlord_details',
                                queryParameters: {
                                  'updateData': serializeParam(
                                    true,
                                    ParamType.bool,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              FFAppState().testdatatry = true;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                _model.tDOADetailsThirdWordAdvance =
                                    await SqGroup.dOADetailsstepTHIRDworddocCall
                                        .call(
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  rentFreePeriod: _model.commercialAdvanceModel
                                      .rentFreePeriodAdvancesssValue,
                                  rentalType: _model
                                      .commercialAdvanceModel.rentaltypeValue,
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
                                        ?.toString(),
                                    '1',
                                  ),
                                  fullDeposit: _model.commercialAdvanceModel
                                      .balanceAmountAdvanceTextController.text,
                                  oneMonthDeposit: _model.commercialAdvanceModel
                                      .advanceRentAmountRENTTextController.text,
                                  balanceDeposit: _model.commercialAdvanceModel
                                      .balanceAmountAdvanceTextController.text,
                                  totalAdvSec: _model.commercialAdvanceModel
                                      .advanceAmountAdvanceTextController.text,
                                  rentEscalation: _model.commercialAdvanceModel
                                      .rentFreePeriodAdvancesssValue,
                                  siteId: FFAppState().siteidint.toString(),
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
                                  isFromSiteref: false.toString(),
                                  msg: null,
                                );

                                _shouldSetState = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.commercialAdvanceModel
                                        .rentaltypeValue ==
                                    null) {
                                  return;
                                }
                                if (_model.commercialAdvanceModel
                                        .rentFreePeriodAdvancesssValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Rent Free Period'),
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
                                  return;
                                }
                                if (_model.commercialAdvanceModel
                                        .intialAdvanceValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select  Intials Advance'),
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
                                  return;
                                }
                                if (_model.commercialAdvanceModel
                                        .rentEscaltionAdvanceValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select  Rent Escaltion'),
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
                                  return;
                                }
                                if (_model.commercialAdvanceModel
                                        .escalationPeriodAdvanceValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Escalation periods'),
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
                                  return;
                                }
                                if ((String var1) {
                                  return var1 ==
                                          "Data for Step-3 Successfully Updated."
                                      ? true
                                      : false;
                                }(getJsonField(
                                  (_model.tDOADetailsThirdWordAdvance
                                          ?.jsonBody ??
                                      ''),
                                  r'''$.Msg''',
                                ).toString())) {
                                  context.goNamed(
                                    'indent_site_dimensions',
                                    queryParameters: {
                                      'updateData': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert (commerical)'),
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
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
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
                                      font: GoogleFonts.poppins(),
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
      ),
    );
  }
}
