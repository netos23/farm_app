import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_page_model.dart';
import 'catalog_page_widget.dart';

abstract class ICatalogPageWidgetModel extends IWidgetModel {
}

CatalogPageWidgetModel defaultCatalogPageWidgetModelFactory(BuildContext context) {
  return CatalogPageWidgetModel(CatalogPageModel());
}

// TODO: cover with documentation
/// Default widget model for CatalogPageWidget
class CatalogPageWidgetModel extends WidgetModel<CatalogPageWidget, CatalogPageModel>
    implements ICatalogPageWidgetModel {

  CatalogPageWidgetModel(CatalogPageModel model) : super(model);
}
