import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'show_case_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ShowCasePage module
@RoutePage()
class ShowCasePageWidget extends ElementaryWidget<IShowCasePageWidgetModel> {
  const ShowCasePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShowCasePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShowCasePageWidgetModel wm) {
    return Scaffold(
      body: Container(),
    );
  }
}
