import 'package:elementary/elementary.dart';
import 'package:farm_app/domain/models/product.dart';
import 'package:farm_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'catalog_page_model.dart';
import 'catalog_page_widget.dart';

abstract class ICatalogPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Product>> get productsState;

  TextEditingController get searchController;

  void openSort();
}

CatalogPageWidgetModel defaultCatalogPageWidgetModelFactory(
    BuildContext context) {
  return CatalogPageWidgetModel(CatalogPageModel());
}

// TODO: cover with documentation
/// Default widget model for CatalogPageWidget
class CatalogPageWidgetModel
    extends WidgetModel<CatalogPageWidget, CatalogPageModel>
    with ThemeProvider
    implements ICatalogPageWidgetModel {
  @override
  final productsState = EntityStateNotifier();

  @override
  final searchController = TextEditingController();

  CatalogPageWidgetModel(CatalogPageModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    productsState.content(
      [
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Молоко',
          picture:
              'https://avatars.mds.yandex.net/i?id=65497fa15d14e6fddfc8a629646a8c944a348e02-8266553-images-thumbs&n=13',
          description: 'Специальное молоко горных коз',
          badges: [],
          available: true,
        ),
        const Product(
          name: 'Помидоры',
          picture:
              'https://avatars.mds.yandex.net/i?id=deab161962bce5d7e37a92b754b61fb770c6bb8e-8186070-images-thumbs&n=13',
          description: 'Помидоры помидоры помидоры овощи',
          badges: [],
          available: true,
        ),
      ],
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    productsState.dispose();
    super.dispose();
  }

  @override
  void openSort() {}
}
