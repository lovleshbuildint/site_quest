import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nearestbranch_model.dart';
export 'nearestbranch_model.dart';

class NearestbranchWidget extends StatefulWidget {
  const NearestbranchWidget({super.key});

  @override
  State<NearestbranchWidget> createState() => _NearestbranchWidgetState();
}

class _NearestbranchWidgetState extends State<NearestbranchWidget> {
  late NearestbranchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearestbranchModel());

    _model.branchSOLIDTextController ??= TextEditingController();
    _model.branchSOLIDFocusNode ??= FocusNode();

    _model.nearestBranchstextTextController ??= TextEditingController();
    _model.nearestBranchstextFocusNode ??= FocusNode();

    _model.distanceNearestBranchTextController ??= TextEditingController();
    _model.distanceNearestBranchFocusNode ??= FocusNode();

    _model.videoURLTextController ??= TextEditingController();
    _model.videoURLFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'CRA Coverage',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.cRACoverageValueController ??=
                  FormFieldController<String>(
                _model.cRACoverageValue ??= 'No',
              ),
              options: ['Yes', 'No'],
              onChanged: (val) => setState(() => _model.cRACoverageValue = val),
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                  ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFFE1E2E6),
                size: 24.0,
              ),
              fillColor: Colors.white,
              elevation: 2.0,
              borderColor: Color(0xFFE1E2E6),
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'CRA Agency',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.cRAAgencyValueController ??=
                  FormFieldController<String>(
                _model.cRAAgencyValue ??= 'CMS',
              ),
              options: ['CMS'],
              onChanged: (val) => setState(() => _model.cRAAgencyValue = val),
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                  ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFFE1E2E6),
                size: 24.0,
              ),
              fillColor: Colors.white,
              elevation: 2.0,
              borderColor: Color(0xFFE1E2E6),
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'Branch SOL ID',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: TextFormField(
              controller: _model.branchSOLIDTextController,
              focusNode: _model.branchSOLIDFocusNode,
              autofocus: false,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter ID',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE1E2E6),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF0026),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              validator: _model.branchSOLIDTextControllerValidator
                  .asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'Nearest Branch',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: TextFormField(
              controller: _model.nearestBranchstextTextController,
              focusNode: _model.nearestBranchstextFocusNode,
              autofocus: false,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter Branch',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE1E2E6),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF0026),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              validator: _model.nearestBranchstextTextControllerValidator
                  .asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'Distance from the Neearest Branch',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: TextFormField(
              controller: _model.distanceNearestBranchTextController,
              focusNode: _model.distanceNearestBranchFocusNode,
              autofocus: false,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'In KM',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE1E2E6),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF0026),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              validator: _model.distanceNearestBranchTextControllerValidator
                  .asValidator(context),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'Video URL',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 35.0),
            child: TextFormField(
              controller: _model.videoURLTextController,
              focusNode: _model.videoURLFocusNode,
              autofocus: false,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter URL',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE1E2E6),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF0026),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              validator:
                  _model.videoURLTextControllerValidator.asValidator(context),
            ),
          ),
        ],
      ),
    );
  }
}
