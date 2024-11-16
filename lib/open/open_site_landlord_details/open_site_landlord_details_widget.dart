import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/indent/landlordform/landlordform_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'open_site_landlord_details_model.dart';
export 'open_site_landlord_details_model.dart';

class OpenSiteLandlordDetailsWidget extends StatefulWidget {
  const OpenSiteLandlordDetailsWidget({
    super.key,
    required this.updateData,
  });

  final bool? updateData;

  @override
  State<OpenSiteLandlordDetailsWidget> createState() =>
      _OpenSiteLandlordDetailsWidgetState();
}

class _OpenSiteLandlordDetailsWidgetState
    extends State<OpenSiteLandlordDetailsWidget> {
  late OpenSiteLandlordDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenSiteLandlordDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.updateData == true) {
        safeSetState(() {
          _model.landlordformModel.landoardNameTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.LandlordName''',
          ).toString().toString();
          _model.landlordformModel.landoardNameFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.landoardNameTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.landoardNameTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.percentTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Percent''',
          ).toString().toString();
          _model.landlordformModel.percentFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.percentTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.percentTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.addressTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Address''',
          ).toString().toString();
          _model.landlordformModel.addressFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.addressTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.addressTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.districtValueController?.value =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.District''',
          ).toString().toString();
        });
        safeSetState(() {
          _model.landlordformModel.stateValueController?.value = getJsonField(
            FFAppState().landlordopensite,
            r'''$.State''',
          ).toString().toString();
        });
        safeSetState(() {
          _model.landlordformModel.cityValueController?.value = getJsonField(
            FFAppState().landlordopensite,
            r'''$.City''',
          ).toString().toString();
        });
        safeSetState(() {
          _model.landlordformModel.pincodeTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Pincode''',
          ).toString().toString();
          _model.landlordformModel.pincodeFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.pincodeTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.pincodeTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.landmarksTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Landmarks''',
          ).toString().toString();
          _model.landlordformModel.landmarksFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.landmarksTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.landmarksTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.contactNameTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.ContactName''',
          ).toString().toString();
          _model.landlordformModel.contactNameFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.contactNameTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.contactNameTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.alernativenumberTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.Alernativenumber''',
          ).toString().toString();
          _model.landlordformModel.alernativenumberFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.alernativenumberTextController?.selection =
                TextSelection.collapsed(
              offset: _model.landlordformModel.alernativenumberTextController!
                  .text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.emailidTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Emailid''',
          ).toString().toString();
          _model.landlordformModel.emailidFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.emailidTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.emailidTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.faxTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.Fax''',
          ).toString().toString();
          _model.landlordformModel.faxFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.faxTextController?.selection =
                TextSelection.collapsed(
              offset: _model.landlordformModel.faxTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.bankdetailsValueController?.value =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.LandlordBankName''',
          ).toString().toString();
        });
        safeSetState(() {
          _model.landlordformModel.chequefieldTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.chequefield''',
          ).toString().toString();
          _model.landlordformModel.chequefieldFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.chequefieldTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.chequefieldTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.lLchequefieldTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.LLchequefield''',
          ).toString().toString();
          _model.landlordformModel.lLchequefieldFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.lLchequefieldTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.lLchequefieldTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.bankAccountNumberTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.BankAccountNumber''',
          ).toString().toString();
          _model.landlordformModel.bankAccountNumberFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.bankAccountNumberTextController
                ?.selection = TextSelection.collapsed(
              offset: _model.landlordformModel.bankAccountNumberTextController!
                  .text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.bankBranchTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.BankBranch''',
          ).toString().toString();
          _model.landlordformModel.bankBranchFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.bankBranchTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.bankBranchTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.iFSCCodeTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.IFSCCode''',
          ).toString().toString();
          _model.landlordformModel.iFSCCodeFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.iFSCCodeTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.iFSCCodeTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.panNumberTextController?.text = getJsonField(
            FFAppState().landlordopensite,
            r'''$.PanNumber''',
          ).toString().toString();
          _model.landlordformModel.panNumberFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.panNumberTextController?.selection =
                TextSelection.collapsed(
              offset:
                  _model.landlordformModel.panNumberTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.aAdharcardNoTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.AAdharcardNo''',
          ).toString().toString();
          _model.landlordformModel.aAdharcardNoFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.aAdharcardNoTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.aAdharcardNoTextController!.text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.siteReferralNameTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.SiteReferralName''',
          ).toString().toString();
          _model.landlordformModel.siteReferralNameFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.siteReferralNameTextController?.selection =
                TextSelection.collapsed(
              offset: _model.landlordformModel.siteReferralNameTextController!
                  .text.length,
            );
          });
        });
        safeSetState(() {
          _model.landlordformModel.siteReferralNoTextController?.text =
              getJsonField(
            FFAppState().landlordopensite,
            r'''$.siteReferralNo''',
          ).toString().toString();
          _model.landlordformModel.siteReferralNoFocusNode?.requestFocus();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _model.landlordformModel.siteReferralNoTextController?.selection =
                TextSelection.collapsed(
              offset: _model
                  .landlordformModel.siteReferralNoTextController!.text.length,
            );
          });
        });
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
      onTap: () => FocusScope.of(context).unfocus(),
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
                        text: 'Landlord-1',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 30.0,
                          padding: EdgeInsets.all(0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                      model: _model.landlordformModel,
                      updateCallback: () => safeSetState(() {}),
                      child: LandlordformWidget(),
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
                                'open_site_details',
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
                                _model.updateDOADdeatilssecondwordSite =
                                    await SqGroup
                                        .dOADetailsstepSECONDworddocCall
                                        .call(
                                  indentId: 'null',
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
                                  siteId: FFAppState().siteidint.toString(),
                                  iindent: null,
                                  targetBank: null,
                                  centres: null,
                                  comments: null,
                                  lastModStamp: null,
                                  isHold: null,
                                  istage: null,
                                  iStageText: null,
                                  locationName: null,
                                  chequePercent: _model.landlordformModel
                                      .percentTextController.text,
                                  androidKey: null,
                                  refeId: _model.landlordformModel
                                      .siteReferralNoTextController.text,
                                  isWB: '0',
                                  companyName: null,
                                  employeeName: null,
                                  errCnt: null,
                                  msg: null,
                                  isFromSiteref: false,
                                  emailIds: null,
                                );

                                _shouldSetState = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if ((String var1) {
                                  return var1 ==
                                          "Data for Step-2 Successfully Updated."
                                      ? true
                                      : false;
                                }(getJsonField(
                                  (_model.updateDOADdeatilssecondwordSite
                                          ?.jsonBody ??
                                      ''),
                                  r'''$.Msg''',
                                ).toString())) {
                                  FFAppState().landlordopensite =
                                      <String, dynamic>{
                                    'LandlordName': _model.landlordformModel
                                        .landoardNameTextController.text,
                                    'Percent': _model.landlordformModel
                                        .percentTextController.text,
                                    'Address': _model.landlordformModel
                                        .addressTextController.text,
                                    'District':
                                        _model.landlordformModel.districtValue,
                                    'State':
                                        _model.landlordformModel.stateValue,
                                    'City': _model.landlordformModel.cityValue,
                                    'Pincode': _model.landlordformModel
                                        .pincodeTextController.text,
                                    'Landmarks': _model.landlordformModel
                                        .landmarksTextController.text,
                                    'ContactNumber': _model.landlordformModel
                                        .contactNameTextController.text,
                                    'Alernativenumber': _model.landlordformModel
                                        .alernativenumberTextController.text,
                                    'Emailid': _model.landlordformModel
                                        .emailidTextController.text,
                                    'Fax': _model.landlordformModel
                                        .faxTextController.text,
                                    'LandlordBankName': _model
                                        .landlordformModel.bankdetailsValue,
                                    'chequefield': _model.landlordformModel
                                        .chequefieldTextController.text,
                                    'LLchequefield': _model.landlordformModel
                                        .lLchequefieldTextController.text,
                                    'BankAccountNumber': _model
                                        .landlordformModel
                                        .bankAccountNumberTextController
                                        .text,
                                    'BankBranch': _model.landlordformModel
                                        .bankBranchTextController.text,
                                    'IFSCCode': _model.landlordformModel
                                        .iFSCCodeTextController.text,
                                    'PanNumber': _model.landlordformModel
                                        .panNumberTextController.text,
                                    'AAdharcardNo': _model.landlordformModel
                                        .aAdharcardNoTextController.text,
                                    'SiteReferralName': _model.landlordformModel
                                        .siteReferralNameTextController.text,
                                    'siteReferralNo': _model.landlordformModel
                                        .siteReferralNoTextController.text,
                                  };
                                  safeSetState(() {});

                                  context.pushNamed(
                                    'open_site_commercial',
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
                                        title: Text('Alert(Insident LandLord)'),
                                        content: Text((_model
                                                .updateDOADdeatilssecondwordSite
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
