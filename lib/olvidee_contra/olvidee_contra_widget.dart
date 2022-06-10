import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../siguientepaso/siguientepaso_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OlvideeContraWidget extends StatefulWidget {
  const OlvideeContraWidget({Key key}) : super(key: key);

  @override
  _OlvideeContraWidgetState createState() => _OlvideeContraWidgetState();
}

class _OlvideeContraWidgetState extends State<OlvideeContraWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF999999),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: 400,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFF9F2241),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SvgPicture.network(
                        'https://consulmex.sre.gob.mx/reinounido/templates/sre/images/logofooter.svg',
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF9F2241),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: SvgPicture.network(
                      'https://consulmex.sre.gob.mx/reinounido/templates/sre/images/sre.svg',
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Divider(
                    thickness: 10,
                    indent: 40,
                    endIndent: 40,
                    color: Color(0xFFE4D0A9),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 10, 50, 0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Ingresa tu contraseña que recuerdes',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE4D0A9),
                            width: 3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE4D0A9),
                            width: 3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SiguientepasoWidget(),
                          ),
                        );
                      },
                      text: 'INGRESAR',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40,
                        color: Color(0xFF9F2241),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF313131),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              border: Border.all(
                                color: Color(0xFF313131),
                                width: 1,
                              ),
                            ),
                          ),
                          Text(
                            'No soy un robot',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Image.network(
                            'https://www.gstatic.com/recaptcha/api2/logo_48.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.fill,
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
      ),
    );
  }
}
