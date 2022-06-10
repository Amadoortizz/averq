import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TercerpasoWidget extends StatefulWidget {
  const TercerpasoWidget({Key key}) : super(key: key);

  @override
  _TercerpasoWidgetState createState() => _TercerpasoWidgetState();
}

class _TercerpasoWidgetState extends State<TercerpasoWidget> {
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                    child: Text(
                      'Estamos verificando ',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                    child: Text(
                      'escriba el codigo que aparece a continuacion',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Text(
                    '4012',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 100, 30, 0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Ingresa el codigo anteriormente mostrado',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE4D0A9),
                            width: 4,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE4D0A9),
                            width: 4,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'inicio'),
                          ),
                        );
                      },
                      text: 'ingresar ',
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
