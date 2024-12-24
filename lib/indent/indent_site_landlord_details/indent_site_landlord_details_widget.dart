import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/landlordform/landlordform_widget.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indent_site_landlord_details_model.dart';
export 'indent_site_landlord_details_model.dart';

class IndentSiteLandlordDetailsWidget extends StatefulWidget {
  const IndentSiteLandlordDetailsWidget({
    super.key,
    required this.updateData,
  });

  final bool? updateData;

  @override
  State<IndentSiteLandlordDetailsWidget> createState() =>
      _IndentSiteLandlordDetailsWidgetState();
}

class _IndentSiteLandlordDetailsWidgetState
    extends State<IndentSiteLandlordDetailsWidget> {
  late IndentSiteLandlordDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndentSiteLandlordDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.updateData! && (FFAppState().siteidint > 0)) {
        _model.apiResultfoa = await SqGroup.dOADetailssteptwoCall.call(
          iIndent: FFAppState().siteidint.toString(),
          token: FFAppState().Token,
        );

        if ((_model.apiResultfoa?.succeeded ?? true)) {
          safeSetState(() {
            _model.landlordformModel.landoardNameTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].LandLordName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.percentTextController?.text = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].LandLordPercentage''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.stateValueController?.value = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].StateName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.cityValueController?.value = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].iCity''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.addressTextController?.text = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Address1''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.pincodeTextController?.text = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Pincode''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.landmarksTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].LandMark''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.contactNameTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Contact1''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.alernativenumberTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Contact2''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.emailidTextController?.text = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].EmailId''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.faxTextController?.text = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Fax''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.chequefieldTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].ChequeInFavour''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.lLchequefieldTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].LandLordPercentage''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.bankAccountNumberTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].AccountNo''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.bankBranchTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].BranchName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.iFSCCodeTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].IFSCCode''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.panNumberTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].PANCard''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.aAdharcardNoTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].Aadharcard''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.siteReferralNameTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].RefeName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.siteReferralNoTextController?.text =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].RefeId''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.stateValueController?.value = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].StateName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.cityValueController?.value = getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].CityName''',
            ).toString().toString();
          });
          safeSetState(() {
            _model.landlordformModel.bankdetailsValueController?.value =
                getJsonField(
              (_model.apiResultfoa?.jsonBody ?? ''),
              r'''$.indents[0].IndentBank''',
            ).toString().toString();
          });
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: Text('Alert'),
                content: Text('Not able to procced'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
        }
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
                                size: 24.0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Add Landlord Details',
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
                            '2/8',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                                                  fontFamily: 'Poppins',
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
                                                  fontFamily: 'Poppins',
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                            ),
                                            AutoSizeText(
                                              getJsonField(
                                                FFAppState().indentSelectedSite,
                                                r'''$.IndentId''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                            ),
                                            AutoSizeText(
                                              getJsonField(
                                                FFAppState().indentSelectedSite,
                                                r'''$.Strategy''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                      Expanded(
                        child: Container(
                          height: 2.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFD1D5DB),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 5.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Landlord-1',
                                  options: FFButtonOptions(
                                    width: 100.0,
                                    height: 30.0,
                                    padding: EdgeInsets.all(0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF2D2D2D),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: wrapWithModel(
                        model: _model.landlordformModel,
                        updateCallback: () => safeSetState(() {}),
                        child: LandlordformWidget(
                          trydata: true,
                        ),
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
                              context.safePop();
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
                                _model.updateDOADdeatils2 = await SqGroup
                                    .dOADetailsstepSECONDworddocCall
                                    .call(
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  districts: null,
                                  token: FFAppState().Token,
                                  iCity: _model.landlordformModel.cityValue,
                                  lLPercent: _model.landlordformModel
                                      .lLchequefieldTextController.text,
                                  address: _model.landlordformModel
                                      .addressTextController.text,
                                  iState:
                                      _model.landlordformModel.statefordistland,
                                  pincode: _model.landlordformModel
                                      .pincodeTextController.text,
                                  landMark: _model.landlordformModel
                                      .landmarksTextController.text,
                                  contact1: _model.landlordformModel
                                      .contactNameTextController.text,
                                  contact2: _model.landlordformModel
                                      .alernativenumberTextController.text,
                                  emailId: _model.landlordformModel
                                      .emailidTextController.text,
                                  fax: _model
                                      .landlordformModel.faxTextController.text,
                                  lLBankName: valueOrDefault<String>(
                                    _model.landlordformModel.bankdetailsValue,
                                    '1',
                                  ),
                                  landLordNameonCheque: _model.landlordformModel
                                      .chequefieldTextController.text,
                                  bankAcNo: _model.landlordformModel
                                      .bankAccountNumberTextController.text,
                                  branchName: _model.landlordformModel
                                      .bankBranchTextController.text,
                                  iFSCCode: _model.landlordformModel
                                      .iFSCCodeTextController.text,
                                  pANCard: _model.landlordformModel
                                      .panNumberTextController.text,
                                  aadharcard: _model.landlordformModel
                                      .aAdharcardNoTextController.text,
                                  landLordNames: _model.landlordformModel
                                      .landoardNameTextController.text,
                                  refeName: _model.landlordformModel
                                      .siteReferralNameTextController.text,
                                  contactNumber: null,
                                  chequePercent: _model.landlordformModel
                                      .percentTextController.text,
                                  siteId: FFAppState().siteidint > 0
                                      ? FFAppState().siteidint.toString()
                                      : null,
                                  iindent: null,
                                  targetBank: null,
                                  centres: null,
                                  comments: null,
                                  lastModStamp: null,
                                  isHold: null,
                                  istage: null,
                                  iStageText: null,
                                  locationName: null,
                                  androidKey: null,
                                  refeId: valueOrDefault<String>(
                                    _model.landlordformModel
                                        .siteReferralNoTextController.text,
                                    '1',
                                  ),
                                  errCnt: null,
                                  employeeName: null,
                                  companyName: null,
                                  isWB: '0',
                                  msg: null,
                                  isFromSiteref: false,
                                  emailIds: null,
                                );

                                _model.please = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  safeSetState(() => _model.please = false);
                                  return;
                                }
                                if (_model.landlordformModel.stateValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select State'),
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
                                  _model.please = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.landlordformModel.cityValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select City'),
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
                                  _model.please = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.landlordformModel.bankdetailsValue ==
                                    null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Landlord Bank Name'),
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
                                  _model.please = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if ((String var1) {
                                  return var1 ==
                                          "Data for Step-2 Successfully Updated."
                                      ? true
                                      : false;
                                }(getJsonField(
                                  (_model.updateDOADdeatils2?.jsonBody ?? ''),
                                  r'''$.Msg''',
                                ).toString())) {
                                  context.goNamed(
                                    'indent_site_commercial',
                                    queryParameters: {
                                      'updateData': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                      'trydata': serializeParam(
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
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert(Insident LandLord)'),
                                        content: Text(getJsonField(
                                          (_model.updateDOADdeatils2
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.Msg''',
                                        ).toString()),
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

                                safeSetState(() {});
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
      ),
    );
  }
}
