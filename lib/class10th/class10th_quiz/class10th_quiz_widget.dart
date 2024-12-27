import '/backend/backend.dart';
import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'class10th_quiz_model.dart';
export 'class10th_quiz_model.dart';

class Class10thQuizWidget extends StatefulWidget {
  const Class10thQuizWidget({
    super.key,
    required this.class10ref,
  });

  final DocumentReference? class10ref;

  @override
  State<Class10thQuizWidget> createState() => _Class10thQuizWidgetState();
}

class _Class10thQuizWidgetState extends State<Class10thQuizWidget> {
  late Class10thQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Class10thQuizModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<Class10thRecord>(
      stream: Class10thRecord.getDocument(widget.class10ref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final class10thQuizClass10thRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).mainColor,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                '10th Quiz',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .mainColor,
                                            FlutterFlowTheme.of(context)
                                                .lightBaseColor
                                          ],
                                          stops: const [0.3, 1.0],
                                          begin:
                                              const AlignmentDirectional(-1.0, -0.87),
                                          end: const AlignmentDirectional(1.0, 0.87),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Class : ',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Nunito Sans'),
                                                                ),
                                                          ),
                                                          Text(
                                                            class10thQuizClass10thRecord
                                                                .classID,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Nunito Sans'),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Chapter : ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .white,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito Sans'),
                                                              ),
                                                        ),
                                                        Flexible(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                class10thQuizClass10thRecord
                                                                    .chapterName,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .white,
                                                                      fontSize:
                                                                          13.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Nunito Sans'),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/icon9Asset_9.png',
                                                        width: 100.0,
                                                        height: 80.0,
                                                        fit: BoxFit.contain,
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
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF8F64D4),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 0.0, 10.0),
                                              child: AutoSizeText(
                                                'Question No.',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Nunito Sans'),
                                                      lineHeight: 1.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF8F64D4),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 10.0, 10.0,
                                                          10.0),
                                                  child: AutoSizeText(
                                                    valueOrDefault<String>(
                                                      FFAppState()
                                                          .QuestionNumber
                                                          .toString(),
                                                      '1',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito Sans'),
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 10.0, 10.0,
                                                          10.0),
                                                  child: AutoSizeText(
                                                    '/ 10',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito Sans'),
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            StreamBuilder<List<Quiz10thRecord>>(
                              stream: queryQuiz10thRecord(
                                parent: widget.class10ref,
                                queryBuilder: (quiz10thRecord) =>
                                    quiz10thRecord.where(
                                  'QuestionNo',
                                  isEqualTo: FFAppState().QuestionNumber,
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<Quiz10thRecord>
                                    listViewQuiz10thRecordList = snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewQuiz10thRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewQuiz10thRecord =
                                        listViewQuiz10thRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xCCCECECE),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 10.0,
                                                          20.0, 10.0),
                                                  child: AutoSizeText(
                                                    listViewQuiz10thRecord
                                                        .question,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              const Color(0xFF080808),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito'),
                                                          lineHeight: 1.1,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 10.0, 5.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lightBlue,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                'A',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          25.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Nunito Sans'),
                                                                      lineHeight:
                                                                          1.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Flexible(
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              FFAppState().RightOption = 1;
                                                                              FFAppState().check = false;
                                                                              safeSetState(() {});
                                                                            },
                                                                            text:
                                                                                listViewQuiz10thRecord.optionA,
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: double.infinity,
                                                                              height: 50.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderSide: BorderSide(
                                                                                color: valueOrDefault<Color>(
                                                                                  () {
                                                                                    if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                      return FlutterFlowTheme.of(context).orange2;
                                                                                    } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                      return FlutterFlowTheme.of(context).rightGreen;
                                                                                    } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                      return FlutterFlowTheme.of(context).error;
                                                                                    } else {
                                                                                      return FlutterFlowTheme.of(context).lighBlack;
                                                                                    }
                                                                                  }(),
                                                                                  FlutterFlowTheme.of(context).lighBlack,
                                                                                ),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              hoverColor: FlutterFlowTheme.of(context).orange2,
                                                                              hoverBorderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).orange2,
                                                                                width: 1.0,
                                                                              ),
                                                                              hoverElevation: 0.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                1))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                1))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'B',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                2;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionB,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                2))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                2))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'C',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                3;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionC,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                3))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                3))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'D',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                4;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionD,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                4))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                4))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if ((listViewQuiz10thRecord
                                                        .rightAnswer ==
                                                    FFAppState().RightOption) &&
                                                (FFAppState().check == true) &&
                                                (FFAppState().HideExplanation ==
                                                    false))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState()
                                                        .ShowExplanation = true;
                                                    FFAppState()
                                                        .HideExplanation = true;
                                                    safeSetState(() {});
                                                  },
                                                  text: 'Show Explanation',
                                                  options: FFButtonOptions(
                                                    height: 30.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lightBlue,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().HideExplanation ==
                                                true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState()
                                                            .ShowExplanation =
                                                        false;
                                                    FFAppState()
                                                            .HideExplanation =
                                                        false;
                                                    safeSetState(() {});
                                                  },
                                                  text: 'Hide Explanation',
                                                  options: FFButtonOptions(
                                                    height: 30.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lightBlue,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            if ((FFAppState().ShowExplanation ==
                                                    true) &&
                                                (FFAppState().check == true))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Explanation',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito'),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Text(
                                                          listViewQuiz10thRecord
                                                              .explanation,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito'),
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
                                    );
                                  },
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FFButtonWidget(
                                    onPressed: (FFAppState().QuestionNumber ==
                                            1)
                                        ? null
                                        : () async {
                                            FFAppState().QuestionNumber =
                                                FFAppState().QuestionNumber +
                                                    -1;
                                            FFAppState().check = false;
                                            FFAppState().RightOption = 0;
                                            FFAppState().ShowExplanation =
                                                false;
                                            FFAppState().HideExplanation =
                                                false;
                                            safeSetState(() {});
                                          },
                                    text: 'Previous',
                                    icon: Icon(
                                      Icons.chevron_left_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 35.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 20.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .mainColor,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .lightBaseColor,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().check = true;
                                      FFAppState().HideExplanation = false;
                                      safeSetState(() {});
                                    },
                                    text: 'Check',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: const Color(0xFFFBA72C),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: (FFAppState().QuestionNumber > 9)
                                        ? null
                                        : () async {
                                            FFAppState().QuestionNumber =
                                                FFAppState().QuestionNumber + 1;
                                            FFAppState().check = false;
                                            FFAppState().RightOption = 0;
                                            FFAppState().ShowExplanation =
                                                false;
                                            FFAppState().HideExplanation =
                                                false;
                                            safeSetState(() {});
                                          },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.chevron_right_sharp,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 35.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 35.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .lightBaseColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    desktop: false,
                  ))
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF8F64D4),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 0.0, 10.0),
                                              child: AutoSizeText(
                                                'Question No.',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Nunito Sans'),
                                                      lineHeight: 1.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF8F64D4),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 10.0, 10.0,
                                                          10.0),
                                                  child: AutoSizeText(
                                                    valueOrDefault<String>(
                                                      FFAppState()
                                                          .QuestionNumber
                                                          .toString(),
                                                      '1',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito Sans'),
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0.0, 10.0, 10.0,
                                                          10.0),
                                                  child: AutoSizeText(
                                                    '/ 10',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito Sans'),
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            StreamBuilder<List<Quiz10thRecord>>(
                              stream: queryQuiz10thRecord(
                                parent: widget.class10ref,
                                queryBuilder: (quiz10thRecord) =>
                                    quiz10thRecord.where(
                                  'QuestionNo',
                                  isEqualTo: FFAppState().QuestionNumber,
                                ),
                                limit: 2,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<Quiz10thRecord>
                                    listViewQuiz10thRecordList = snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewQuiz10thRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewQuiz10thRecord =
                                        listViewQuiz10thRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xCCCECECE),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                10.0,
                                                                20.0,
                                                                10.0),
                                                    child: AutoSizeText(
                                                      listViewQuiz10thRecord
                                                          .question,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            color: const Color(
                                                                0xFF080808),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito'),
                                                            lineHeight: 1.1,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 10.0, 5.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lightBlue,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                'A',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          25.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Nunito Sans'),
                                                                      lineHeight:
                                                                          1.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Flexible(
                                                                  child: Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                1;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionA,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                          (FFAppState().check ==
                                                                              true) &&
                                                                          (FFAppState().RightOption ==
                                                                              1))
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.close_sharp,
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              size: 35.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                          (FFAppState().check ==
                                                                              true) &&
                                                                          (FFAppState().RightOption ==
                                                                              1))
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.check,
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              size: 35.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'B',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                2;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionB,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                2))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                2))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'C',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                3;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionC,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                3))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                3))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lightBlue,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'D',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            25.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            FFAppState().RightOption =
                                                                                4;
                                                                            FFAppState().check =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              listViewQuiz10thRecord.optionD,
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              () {
                                                                                if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                } else {
                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                }
                                                                              }(),
                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                            ),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: valueOrDefault<Color>(
                                                                                () {
                                                                                  if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                  }
                                                                                }(),
                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                              ),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).orange2,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                4))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.close_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) &&
                                                                            (FFAppState().check ==
                                                                                true) &&
                                                                            (FFAppState().RightOption ==
                                                                                4))
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: 35.0,
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
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if ((listViewQuiz10thRecord
                                                        .rightAnswer ==
                                                    FFAppState().RightOption) &&
                                                (FFAppState().check == true) &&
                                                (FFAppState().HideExplanation ==
                                                    false))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState()
                                                        .ShowExplanation = true;
                                                    FFAppState()
                                                        .HideExplanation = true;
                                                    safeSetState(() {});
                                                  },
                                                  text: 'Show Explanation',
                                                  options: FFButtonOptions(
                                                    height: 30.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lightBlue,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().HideExplanation ==
                                                true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState()
                                                            .ShowExplanation =
                                                        false;
                                                    FFAppState()
                                                            .HideExplanation =
                                                        false;
                                                    safeSetState(() {});
                                                  },
                                                  text: 'Hide Explanation',
                                                  options: FFButtonOptions(
                                                    height: 30.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lightBlue,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            if ((FFAppState().ShowExplanation ==
                                                    true) &&
                                                (FFAppState().check == true))
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Explanation',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito'),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    5.0),
                                                        child: Text(
                                                          listViewQuiz10thRecord
                                                              .explanation,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Nunito'),
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
                                    );
                                  },
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FFButtonWidget(
                                    onPressed: (FFAppState().QuestionNumber ==
                                            1)
                                        ? null
                                        : () async {
                                            FFAppState().QuestionNumber =
                                                FFAppState().QuestionNumber +
                                                    -1;
                                            FFAppState().check = false;
                                            FFAppState().RightOption = 0;
                                            FFAppState().ShowExplanation =
                                                false;
                                            FFAppState().HideExplanation =
                                                false;
                                            safeSetState(() {});
                                          },
                                    text: 'Previous',
                                    icon: Icon(
                                      Icons.chevron_left_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 35.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 20.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .mainColor,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .lightBaseColor,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().check = true;
                                      FFAppState().HideExplanation = false;
                                      safeSetState(() {});
                                    },
                                    text: 'Check',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: const Color(0xFFFBA72C),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: (FFAppState().QuestionNumber > 9)
                                        ? null
                                        : () async {
                                            FFAppState().QuestionNumber =
                                                FFAppState().QuestionNumber + 1;
                                            FFAppState().check = false;
                                            FFAppState().RightOption = 0;
                                            FFAppState().ShowExplanation =
                                                false;
                                            FFAppState().HideExplanation =
                                                false;
                                            safeSetState(() {});
                                          },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.chevron_right_sharp,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 35.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 35.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: const Color(0xFFBE2EF3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.sideMenuModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const SideMenuWidget(),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 0.0, 10.0,
                                                          10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFF8F64D4),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                              child:
                                                                  AutoSizeText(
                                                                'Question No.',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Nunito Sans'),
                                                                      lineHeight:
                                                                          1.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFF8F64D4),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      FFAppState()
                                                                          .QuestionNumber
                                                                          .toString(),
                                                                      '1',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    '/ 10',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            StreamBuilder<List<Quiz10thRecord>>(
                                              stream: queryQuiz10thRecord(
                                                parent: widget.class10ref,
                                                queryBuilder:
                                                    (quiz10thRecord) =>
                                                        quiz10thRecord.where(
                                                  'QuestionNo',
                                                  isEqualTo: FFAppState()
                                                      .QuestionNumber,
                                                ),
                                                limit: 2,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<Quiz10thRecord>
                                                    listViewQuiz10thRecordList =
                                                    snapshot.data!;

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewQuiz10thRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewQuiz10thRecord =
                                                        listViewQuiz10thRecordList[
                                                            listViewIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  20.0),
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xCCCECECE),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            10.0,
                                                                            20.0,
                                                                            10.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      listViewQuiz10thRecord
                                                                          .question,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito',
                                                                            color:
                                                                                const Color(0xFF080808),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey('Nunito'),
                                                                            lineHeight:
                                                                                1.1,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          10.0,
                                                                          5.0,
                                                                          0.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).lightBlue,
                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                              ),
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                'A',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: 25.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                                      lineHeight: 1.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            FFAppState().RightOption = 1;
                                                                                            FFAppState().check = false;
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: listViewQuiz10thRecord.optionA,
                                                                                          options: FFButtonOptions(
                                                                                            width: double.infinity,
                                                                                            height: 50.0,
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: valueOrDefault<Color>(
                                                                                              () {
                                                                                                if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                                } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                                } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                                } else {
                                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                                }
                                                                                              }(),
                                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                                            ),
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: valueOrDefault<Color>(
                                                                                                () {
                                                                                                  if ((FFAppState().RightOption == 1) && (FFAppState().check == false)) {
                                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 1)) {
                                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                                  } else if ((FFAppState().RightOption == 1) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 1)) {
                                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                                  }
                                                                                                }(),
                                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                                              ),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            hoverColor: FlutterFlowTheme.of(context).orange2,
                                                                                            hoverBorderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            hoverElevation: 0.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 1))
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.close_sharp,
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              size: 35.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 1))
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.check,
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              size: 35.0,
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
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).lightBlue,
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  'B',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Nunito Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 25.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                                        lineHeight: 1.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Stack(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      children: [
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            FFAppState().RightOption = 2;
                                                                                            FFAppState().check = false;
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: listViewQuiz10thRecord.optionB,
                                                                                          options: FFButtonOptions(
                                                                                            width: double.infinity,
                                                                                            height: 50.0,
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: valueOrDefault<Color>(
                                                                                              () {
                                                                                                if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                                } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                                } else {
                                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                                }
                                                                                              }(),
                                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                                            ),
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: valueOrDefault<Color>(
                                                                                                () {
                                                                                                  if ((FFAppState().RightOption == 2) && (FFAppState().check == false)) {
                                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 2)) {
                                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                                  } else if ((FFAppState().RightOption == 2) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 2)) {
                                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                                  }
                                                                                                }(),
                                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                                              ),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            hoverColor: FlutterFlowTheme.of(context).orange2,
                                                                                            hoverBorderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            hoverElevation: 0.0,
                                                                                          ),
                                                                                        ),
                                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 2))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.close_sharp,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 2))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.check,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
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
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).lightBlue,
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  'C',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Nunito Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 25.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                                        lineHeight: 1.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Stack(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      children: [
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            FFAppState().RightOption = 3;
                                                                                            FFAppState().check = false;
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: listViewQuiz10thRecord.optionC,
                                                                                          options: FFButtonOptions(
                                                                                            width: double.infinity,
                                                                                            height: 50.0,
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: valueOrDefault<Color>(
                                                                                              () {
                                                                                                if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                                } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                                } else {
                                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                                }
                                                                                              }(),
                                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                                            ),
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: valueOrDefault<Color>(
                                                                                                () {
                                                                                                  if ((FFAppState().RightOption == 3) && (FFAppState().check == false)) {
                                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 3)) {
                                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                                  } else if ((FFAppState().RightOption == 3) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 3)) {
                                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                                  }
                                                                                                }(),
                                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                                              ),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            hoverColor: FlutterFlowTheme.of(context).orange2,
                                                                                            hoverBorderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            hoverElevation: 0.0,
                                                                                          ),
                                                                                        ),
                                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 3))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.close_sharp,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 3))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.check,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
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
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).lightBlue,
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  'D',
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Nunito Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 25.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito Sans'),
                                                                                        lineHeight: 1.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Stack(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      children: [
                                                                                        FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            FFAppState().RightOption = 4;
                                                                                            FFAppState().check = false;
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: listViewQuiz10thRecord.optionD,
                                                                                          options: FFButtonOptions(
                                                                                            width: double.infinity,
                                                                                            height: 50.0,
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: valueOrDefault<Color>(
                                                                                              () {
                                                                                                if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                                  return FlutterFlowTheme.of(context).orange2;
                                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                                  return FlutterFlowTheme.of(context).rightGreen;
                                                                                                } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                                  return FlutterFlowTheme.of(context).error;
                                                                                                } else {
                                                                                                  return FlutterFlowTheme.of(context).lighBlack;
                                                                                                }
                                                                                              }(),
                                                                                              FlutterFlowTheme.of(context).lighBlack,
                                                                                            ),
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: valueOrDefault<Color>(
                                                                                                () {
                                                                                                  if ((FFAppState().RightOption == 4) && (FFAppState().check == false)) {
                                                                                                    return FlutterFlowTheme.of(context).orange2;
                                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer == 4)) {
                                                                                                    return FlutterFlowTheme.of(context).rightGreen;
                                                                                                  } else if ((FFAppState().RightOption == 4) && (FFAppState().check == true) && (listViewQuiz10thRecord.rightAnswer != 4)) {
                                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).lighBlack;
                                                                                                  }
                                                                                                }(),
                                                                                                FlutterFlowTheme.of(context).lighBlack,
                                                                                              ),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            hoverColor: FlutterFlowTheme.of(context).orange2,
                                                                                            hoverBorderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).orange2,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            hoverElevation: 0.0,
                                                                                          ),
                                                                                        ),
                                                                                        if ((FFAppState().RightOption != listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 4))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.close_sharp,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if ((FFAppState().RightOption == listViewQuiz10thRecord.rightAnswer) && (FFAppState().check == true) && (FFAppState().RightOption == 4))
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.check,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                size: 35.0,
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            if ((listViewQuiz10thRecord
                                                                        .rightAnswer ==
                                                                    FFAppState()
                                                                        .RightOption) &&
                                                                (FFAppState()
                                                                        .check ==
                                                                    true) &&
                                                                (FFAppState()
                                                                        .HideExplanation ==
                                                                    false))
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    FFAppState()
                                                                            .ShowExplanation =
                                                                        true;
                                                                    FFAppState()
                                                                            .HideExplanation =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Show Explanation',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        30.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lightBlue,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .HideExplanation ==
                                                                true)
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    FFAppState()
                                                                            .ShowExplanation =
                                                                        false;
                                                                    FFAppState()
                                                                            .HideExplanation =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Hide Explanation',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        30.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lightBlue,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((FFAppState()
                                                                        .ShowExplanation ==
                                                                    true) &&
                                                                (FFAppState()
                                                                        .check ==
                                                                    true))
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Explanation',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Nunito',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito'),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            5.0),
                                                                        child:
                                                                            Text(
                                                                          listViewQuiz10thRecord
                                                                              .explanation,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Nunito',
                                                                                fontSize: 13.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito'),
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
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: (FFAppState()
                                                                .QuestionNumber ==
                                                            1)
                                                        ? null
                                                        : () async {
                                                            FFAppState()
                                                                    .QuestionNumber =
                                                                FFAppState()
                                                                        .QuestionNumber +
                                                                    -1;
                                                            FFAppState().check =
                                                                false;
                                                            FFAppState()
                                                                .RightOption = 0;
                                                            FFAppState()
                                                                    .ShowExplanation =
                                                                false;
                                                            FFAppState()
                                                                    .HideExplanation =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                    text: 'Previous',
                                                    icon: Icon(
                                                      Icons.chevron_left_sharp,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 20.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 35.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .mainColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      disabledColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .mainColor,
                                                      disabledTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lightBaseColor,
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      FFAppState().check = true;
                                                      FFAppState()
                                                              .HideExplanation =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                    text: 'Check',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      hoverColor:
                                                          const Color(0xFFFBA72C),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: (FFAppState()
                                                                .QuestionNumber >
                                                            9)
                                                        ? null
                                                        : () async {
                                                            FFAppState()
                                                                    .QuestionNumber =
                                                                FFAppState()
                                                                        .QuestionNumber +
                                                                    1;
                                                            FFAppState().check =
                                                                false;
                                                            FFAppState()
                                                                .RightOption = 0;
                                                            FFAppState()
                                                                    .ShowExplanation =
                                                                false;
                                                            FFAppState()
                                                                    .HideExplanation =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                    text: 'Next',
                                                    icon: const Icon(
                                                      Icons.chevron_right_sharp,
                                                      size: 20.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 35.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  35.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .mainColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      hoverColor:
                                                          const Color(0xFFBE2EF3),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
