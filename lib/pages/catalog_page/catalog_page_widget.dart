import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CatalogPage module
@RoutePage()
class CatalogPageWidget extends ElementaryWidget<ICatalogPageWidgetModel> {
  const CatalogPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCatalogPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICatalogPageWidgetModel wm) {
    return Container();
  }
}
