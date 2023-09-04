import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_page_model.dart';
export 'auth_page_model.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({Key? key}) : super(key: key);

  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  late AuthPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthPageModel());

    _model.passwordTextController ??= TextEditingController();
    _model.emailTextController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFC62C2C),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/bg.png',
                  width: 416.0,
                  height: 899.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.82, -0.99),
                child: Text(
                  'Employee\nLogin',
                  style: GoogleFonts.getFont(
                    'Heebo',
                    color: Color(0xFFFFC9C9),
                    fontWeight: FontWeight.w500,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.65),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();

                    final user = await authManager.signInWithEmail(
                      context,
                      _model.emailTextController.text,
                      _model.passwordTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    context.goNamedAuth('HomePage', context.mounted);
                  },
                  text: 'Submit',
                  options: FFButtonOptions(
                    width: 279.0,
                    height: 57.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFC62C2C),
                    textStyle: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                    ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.12),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: 279.0,
                    child: TextFormField(
                      controller: _model.passwordTextController,
                      obscureText: !_model.passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC62C2C),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => _model.passwordVisibility =
                                !_model.passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.passwordTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.13),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: 279.0,
                    child: TextFormField(
                      controller: _model.emailTextController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Employee ID',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC62C2C),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.emailTextControllerValidator
                          .asValidator(context),
                    ),
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
