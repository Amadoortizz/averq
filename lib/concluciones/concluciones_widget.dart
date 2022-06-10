import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclucionesWidget extends StatefulWidget {
  const ConclucionesWidget({Key key}) : super(key: key);

  @override
  _ConclucionesWidgetState createState() => _ConclucionesWidgetState();
}

class _ConclucionesWidgetState extends State<ConclucionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                child: Text(
                  'conclusion',
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                child: Text(
                  'fue un gusto',
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                child: Text(
                  'En conclusión puedo decir de que en esta unidad fue este semestre llegado a comprender diferentes maneras las diferentes formas por las cuales poder ejecutar crear y solucionar problemas que difieran en páginas web base de datos entre otras cosas y creo que esta página ayudará bastante a mi crecimiento como programador y generar más conocimientos debido a que esta práctica fue para mí y pisilik tuve que investigar en diferentes Fuentes para poder culminar la y creo que es un trabajo presentable era verdad y espero y lo tomé como tal Y me ponga mínimo 9 por favor Gracias con gusto haber trabajado con usted he aprendido de usted muchas gracias profesor',
                  style: FlutterFlowTheme.of(context).bodyText1,
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
                            NavBarPage(initialPage: 'servicios'),
                      ),
                    );
                  },
                  text: 'volver',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40,
                    color: Color(0xFF9F2241),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
