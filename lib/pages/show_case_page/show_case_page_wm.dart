import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:farm_app/data/service/banner_service.dart';
import 'package:farm_app/domain/models/banner.dart';
import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/router/app_router.dart';
import 'package:farm_app/util/snack_bar_util.dart';
import 'package:flutter/material.dart';
import 'show_case_page_model.dart';
import 'show_case_page_widget.dart';

abstract class IShowCasePageWidgetModel extends IWidgetModel {
  EntityStateNotifier<List<ShowCaseBanner>> get bannersState;

  void openLink(String value);
}

ShowCasePageWidgetModel defaultShowCasePageWidgetModelFactory(
    BuildContext context) {
  return ShowCasePageWidgetModel(
    model: ShowCasePageModel(),
    bannerService: AppComponents().bannerService,
  );
}

// TODO: cover with documentation
/// Default widget model for ShowCasePageWidget
class ShowCasePageWidgetModel
    extends WidgetModel<ShowCasePageWidget, ShowCasePageModel>
    implements IShowCasePageWidgetModel {
  ShowCasePageWidgetModel({
    required ShowCasePageModel model,
    required this.bannerService,
  }) : super(model);

  @override
  final bannersState = EntityStateNotifier();
  final BannerService bannerService;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    bannersState.content([
      const TitleBanner(text: 'Заголовок'),
      const ImageBanner(
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=b5a84a7d7bfdb735142cd5daa2b6d4373ff65198-8181332-images-thumbs&n=13',
      ),
      const ButtonBanner(
        text: 'смотреть каталог',
        link: 'https://t.ru/${AuthRoute.name}'
      ),
      const SliderBanner(
        images: [
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=9cb8a7c8ad034c1a7590ae5a3612dd2e74f40cee-9245043-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=48f992b69891b5b82bed54dc19e75ab4d732cf09-9149104-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=979e0da173fdf1443287f7c4c709c00c5b56a80e-6332308-images-thumbs&n=13',
          ),
          SliderItem(
            imageUrl:
                'https://avatars.mds.yandex.net/i?id=90b7c2b368c2ea05ef31d60feaaa926b0ea14dcf-5253921-images-thumbs&n=13',
          ),
        ],
      ),
      const MarkdownBanner(text: '''
        ---
    __Advertisement :)__

    - __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image
    resize in browser.
    - __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly
    i18n with plurals support and easy syntax.

    You will like those projects!

    ---

    # h1 Heading 8-)
    ## h2 Heading
    ### h3 Heading
    #### h4 Heading
    ##### h5 Heading
    ###### h6 Heading


    ## Horizontal Rules

    ___

    ---

    ***


    ## Typographic replacements

    Enable typographer option to see result.

    (c) (C) (r) (R) (tm) (TM) (p) (P) +-

    test.. test... test..... test?..... test!....

    !!!!!! ???? ,,  -- ---

    "Smartypants, double quotes" and 'single quotes'


    ## Emphasis

    **This is bold text**

    __This is bold text__

    *This is italic text*

    _This is italic text_

    ~~Strikethrough~~


    ## Blockquotes


    > Blockquotes can also be nested...
    >> ...by using additional greater-than signs right next to each other...
    > > > ...or with spaces between arrows.


    ## Lists

    Unordered

    + Create a list by starting a line with `+`, `-`, or `*`
    + Sub-lists are made by indenting 2 spaces:
    - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
    + Very easy!

    Ordered

    1. Lorem ipsum dolor sit amet
    2. Consectetur adipiscing elit
    3. Integer molestie lorem at massa


    1. You can use sequential numbers...
    1. ...or keep all the numbers as `1.`

    Start numbering with offset:

    57. foo
    1. bar


    ## Code

    Inline `code`

    Indented code

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code


    Block code "fences"

    ```
    Sample text here...
    ```

    Syntax highlighting

    ``` js
    var foo = function (bar) {
    return bar++;
    };

    console.log(foo(5));
    ```

    ## Tables

    | Option | Description |
    | ------ | ----------- |
    | data   | path to data files to supply the data that will be passed into templates. |
    | engine | engine to be used for processing templates. Handlebars is the default. |
    | ext    | extension to be used for dest files. |

    Right aligned columns

    | Option | Description |
    | ------:| -----------:|
    | data   | path to data files to supply the data that will be passed into templates. |
    | engine | engine to be used for processing templates. Handlebars is the default. |
    | ext    | extension to be used for dest files. |


    ## Links

    [link text](http://dev.nodeca.com)

    [link with title](http://nodeca.github.io/pica/demo/ "title text!")

    Autoconverted link https://github.com/nodeca/pica (enable linkify to see)


    ## Images

    ![Minion](https://octodex.github.com/images/minion.png)
    ![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

    Like links, Images also have a footnote style syntax

    ![Alt text][id]

    With a reference later in the document defining the URL location:

    [id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"


    ## Plugins

    The killer feature of `markdown-it` is very effective support of
    [syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).


    ### [Emojies](https://github.com/markdown-it/markdown-it-emoji)

    > Classic markup: :wink: :crush: :cry: :tear: :laughing: :yum:
    >
    > Shortcuts (emoticons): :-) :-( 8-) ;)

    see [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.


    ### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)

    - 19^th^
    - H~2~O


    ### [\<ins>](https://github.com/markdown-it/markdown-it-ins)

    ++Inserted text++


    ### [\<mark>](https://github.com/markdown-it/markdown-it-mark)

    ==Marked text==


    ### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)

    Footnote 1 link[^first].

    Footnote 2 link[^second].

    Inline footnote^[Text of inline footnote] definition.

    Duplicated footnote reference[^second].

    [^first]: Footnote **can have markup**

    and multiple paragraphs.

    [^second]: Footnote text.


    ### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)

    Term 1

        :   Definition 1
    with lazy continuation.

    Term 2 with *inline markup*

        :   Definition 2

    { some code, part of Definition 2 }

    Third paragraph of definition 2.

    _Compact style:_

    Term 1
    ~ Definition 1

    Term 2
    ~ Definition 2a
    ~ Definition 2b


    ### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)

    This is HTML abbreviation example.

    It converts "HTML", but keep intact partial entries like "xxxHTMLyyy" and so on.

    *[HTML]: Hyper Text Markup Language

    ### [Custom containers](https://github.com/markdown-it/markdown-it-container)

        ::: warning
    *here be dragons*
        :::
    '''),
    ]);
    // loadBanners();
  }

  Future<void> loadBanners() async {
    try {
      bannersState.loading();
      final banners = await bannerService.getBanners();
      bannersState.content(banners);
    } catch (e) {
      context.showSnackBar(
        'Не удалось получить информацию о баннерах',
      );
    }
  }

  @override
  void dispose() {
    bannersState.dispose();
    super.dispose();
  }

  @override
  void openLink(String value) {
    final uri = Uri.parse(value);

    context.router.root.pushNamed(
      uri.path,
    );
  }
}
