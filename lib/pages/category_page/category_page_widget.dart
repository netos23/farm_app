import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/domain/models/category.dart';
import 'package:farm_app/generated/app_localizations.dart';
import 'package:farm_app/pages/components/category_card.dart';
import 'package:farm_app/pages/components/loading_indicator.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'category_page_wm.dart';

// TODO: cover with documentation
/// Main widget for CategoryPage module
@RoutePage()
class CategoryPageWidget extends ElementaryWidget<ICategoryPageWidgetModel> {
  const CategoryPageWidget({
    Key? key,
    this.category,
    @queryParam this.title,
    @queryParam this.categoryId,
    WidgetModelFactory wmFactory = defaultCategoryPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? title;
  final int? categoryId;
  final Category? category;

  @override
  Widget build(ICategoryPageWidgetModel wm) {
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.categoryState,
      loadingBuilder: (_, __) {
        return const Center(
          child: LoadingIndicator(),
        );
      },
      builder: (context, data) {
        final localizations = AppLocalizations.of(context);
        final subcategories = data;

        if (subcategories == null || subcategories.isEmpty) {
          return Center(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Image.asset(
                    'assets/images/products.png',
                  ),
                ),
                Flexible(
                  child: Text(
                    localizations.emptyProducts,
                    textAlign: TextAlign.center,
                    style: wm.textTheme.bodyLarge?.copyWith(
                      color: wm.colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            // automaticallyImplyLeading: !kIsWeb,
            title: Text(
              title ?? category?.name ?? localizations.catalog
            ),
            centerTitle: true,
            /*bottom: SearchRow(
              controller: wm.searchController,
              onSort: wm.openSort,
              height: 40,
              active: true,
            ),*/
          ),
          body: GridView.builder(
            itemCount: subcategories.length,
            gridDelegate: kIsWeb
                ? const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 8 / 10,
                  )
                : const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 8 / 10,
                  ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return CategoryCard(
                category: subcategories[index],
                onTap: () => wm.openCategory(subcategories[index]),
              );
            },
          ),
        );
      },
    );
  }
}
