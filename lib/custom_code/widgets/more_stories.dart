// Automatic FlutterFlow imports
import 'package:story_view/controller/story_controller.dart';

import '../../custom/story.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart' as functions;
// Imports custom functions
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
class MoreStories extends StatefulWidget {
  const MoreStories({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("init story");
    return Container(
      child: StoryView(
          storyItems: [
            StoryItem.inlineImage(
              caption: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 1,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Lottie.asset(
                                  //   'assets/lottie_animations/double-click.json',
                                  //   width: 120,
                                  //   height: 120,
                                  //   fit: BoxFit.cover,
                                  //   animate: true,
                                  // ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Turn on system',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Opacity(
                                          opacity: 0.64,
                                          child: Text(
                                            'Double tap to toggle setting',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/favicon.png',
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          // height: 250,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              controller: storyController,
            ),
            StoryItem.inlineImage(
              caption: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Lottie.asset(
                                  //   'assets/lottie_animations/double-click.json',
                                  //   width: 120.0,
                                  //   height: 120.0,
                                  //   fit: BoxFit.cover,
                                  //   animate: true,
                                  // ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Open setting',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Opacity(
                                          opacity: 0.64,
                                          child: Text(
                                            'Hold setting system',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/favicon.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              controller: storyController,
            ),
            StoryItem.inlineImage(
              caption: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Lottie.asset(
                                  //   'assets/lottie_animations/double-click.json',
                                  //   width: 120.0,
                                  //   height: 120.0,
                                  //   fit: BoxFit.cover,
                                  //   animate: true,
                                  // ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Turn on system',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Opacity(
                                          opacity: 0.64,
                                          child: Text(
                                            'Double tap to toggle setting',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/favicon.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              controller: storyController,
            ),
            StoryItem.inlineImage(
              caption: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Lottie.asset(
                                  //   'assets/lottie_animations/favicon.json',
                                  //   width: 120.0,
                                  //   height: 120.0,
                                  //   fit: BoxFit.cover,
                                  //   animate: true,
                                  // ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Return to Force',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Opacity(
                                          opacity: 0.64,
                                          child: Text(
                                            'Click back from system to Force',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/telegram-cloud-photo-size-5-6201481125709331336-y_1.png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              controller: storyController,
            ),
          ],
          onStoryShow: (s) {
            print("Showing a story");
          },
          onComplete: () {
            Navigator.pop(context);
          },
          progressPosition: ProgressPosition.top,
          repeat: false,
          controller: storyController,
          indicatorColor: Color(0x1501FFFF),
          indicatorForegroundColor: Color(0xFF01FFFF)),
    );
  }
}
