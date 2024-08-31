import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePagebin
  {
    'xipczo3t': {
      'en': 'Houses',
      'ar': 'منازل',
    },
    'l4v7lqem': {
      'en': 'Apartments',
      'ar': 'شقق',
    },
    '4y7dz038': {
      'en': 'Villas',
      'ar': 'فلل',
    },
    'b7uz113h': {
      'en': 'farms ',
      'ar': 'مزارع',
    },
    'hj66fotm': {
      'en': 'Shops ',
      'ar': 'محلات',
    },
    'b6qzgurp': {
      'en': 'Buildings',
      'ar': 'عمارات',
    },
    'dm8p62op': {
      'en': ' Rest Houses',
      'ar': 'الإستراحات',
    },
    'lsk4m32l': {
      'en': '',
      'ar': '',
    },
    'f512oueg': {
      'en': 'Sale',
      'ar': 'بيع',
    },
    'rdg432ga': {
      'en': 'Rent',
      'ar': 'إيجار',
    },
    'ctvt4ayr': {
      'en': '',
      'ar': '',
    },
    'ld10ybkp': {
      'en': 'Sale',
      'ar': '',
    },
    'nu5shbvg': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PageView
  {
    'pru8kgig': {
      'en': 'AQAR - المنصة الرائدة لبيع وشراء العقارات',
      'ar': 'AQAR - السوق لبيع وشراء العقارات',
    },
    'e3mshz3l': {
      'en':
          'AQAR هو موقع يتيح لك عرض عقارك للبيع أو شراء منزل جديد بسهولة. قم بنشر تفاصيل عقارك أو تصفح العروض المتاحة لتجد ما يناسبك.',
      'ar':
          'AQAR هو موقع يتيح لك عرض عقارك للبيع أو شراء منزل جديد بسهولة. قم بزيارة تفاصيل عقارك أو الوصول إلى العروض المتاحة لتجد ما يناسبك.',
    },
    '3roo8tu5': {
      'en': 'طريقك الأسهل لتسويق وشراء العقارات',
      'ar': 'طريقك لتسويق وشراء العقارات',
    },
    'lrra2n1l': {
      'en':
          'AQAR يوفر لك أداة سهلة لتسويق عقارك أو البحث عن عقار جديد. أضف تفاصيل عقارك للبيع أو استخدم أدوات البحث للعثور على شقتك أو بيتك المثالي.',
      'ar':
          'AQAR يوفر لك أداة سهلة لتسويق عقارك أو البحث عن عقار جديد. أضف تفاصيل عقارك للبيع أو استخدم أدوات البحث الفضاء لشقتك أو بيتك المثالي.',
    },
    'w56iwn3z': {
      'en': 'ماذا تنتظر؟ انضم الآن إلى AQAR ',
      'ar': 'ماذا تنتظر؟ انضم الآن إلى AQAR',
    },
    '1cl9kbne': {
      'en':
          'انضم إلى AQAR لتبسيط عملية بيع وشراء العقارات. قم بنشر تفاصيل عقارك أو تصفح العروض المتنوعة للعثور على المنزل المثالي لك بكل سهولة.',
      'ar':
          'انضم إلى AQAR لتبسيط عملية بيع وشراء العقارات. قم بزيارة تفاصيل عقارك أو استكشاف العروض المتنوعة لمساحة مثالية لك بكل سهولة.',
    },
    'ko0fmbk6': {
      'en': 'AQAR انضم إلى ',
      'ar': ' انضم إلى AQAR',
    },
    'jfieje0b': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // FirstPage
  {
    'cc9voxb5': {
      'en': 'Descover and Find your Dreme house ',
      'ar': 'اكتشف وابحث عن منزل احلامك',
    },
    'lj6mo4t8': {
      'en':
          'Engoy your time in this App and tell us if it is any wrong then we well fix ',
      'ar': 'نتمنى منك الإستفادة من هذا البرنامج والاستمتاع بتجربة الاستخدام.',
    },
    'c4bwid2f': {
      'en': 'Creat Accoun\n',
      'ar': 'إنشاء حساب',
    },
    '5e5inab0': {
      'en': 'Join as Visitor',
      'ar': 'إنضم كزائر',
    },
    '6vvulkvk': {
      'en': 'Do you have an accoun already ?',
      'ar': 'هل لديك حساب بالفعل؟',
    },
    'jfm4s77a': {
      'en': ' Sign in',
      'ar': '  تسجيل الدخول',
    },
    'ab8w4mz8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // LogintoAccount
  {
    '5z634x2w': {
      'en': 'Login into\nYour Accoun',
      'ar': 'تسجيل الدخول إلى حسابك',
    },
    'eb9mpp8j': {
      'en': 'Your Email Adress...',
      'ar': 'عنوان بريدك الإلكتروني...',
    },
    'nhyw0yrj': {
      'en': '',
      'ar': '',
    },
    'bee7qd9r': {
      'en': '',
      'ar': '',
    },
    'jl9d1mko': {
      'en': 'Password...',
      'ar': 'كلمة المرور...',
    },
    't10q8qoa': {
      'en': '',
      'ar': '',
    },
    'k76vh0hk': {
      'en': '',
      'ar': '',
    },
    '77yecrdb': {
      'en': 'Remmember me',
      'ar': 'تذكرني',
    },
    's0yikmxw': {
      'en': 'Log in',
      'ar': 'تسجيل الدخول',
    },
    'xcmfqj6r': {
      'en': 'Don\'t have an account ?',
      'ar': 'ليس لديك حساب؟',
    },
    'w6kjxril': {
      'en': ' Sign Up',
      'ar': 'اشتراك',
    },
    '1t0eufzp': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // profilePage
  {
    'hh4urz8y': {
      'en': '@username',
      'ar': '@اسم المستخدم',
    },
    'ckr3gdtn': {
      'en': 'Edit name',
      'ar': 'حدث الإسم',
    },
    'nu3qb115': {
      'en': 'Edit Image',
      'ar': 'عدل الصورة',
    },
    'huqb5u4p': {
      'en': '  Posts',
      'ar': 'المنشورات',
    },
    'pfkrf5ku': {
      'en': '  Favorits',
      'ar': 'المفضلة',
    },
    'q783f3k0': {
      'en': 'Profile',
      'ar': '',
    },
  },
  // createAccount
  {
    'guegmtzq': {
      'en': 'Login into\nYour Accoun',
      'ar': 'تسجيل الدخول إلى حسابك',
    },
    'rydgbocl': {
      'en': 'Your first name...',
      'ar': 'اسمك الأول...',
    },
    '8qbtybby': {
      'en': '',
      'ar': '',
    },
    '7hr8ktpa': {
      'en': '',
      'ar': '',
    },
    'jzbicwxg': {
      'en': 'Your Email Adress...',
      'ar': 'عنوان بريدك الإلكتروني...',
    },
    '008wsgea': {
      'en': '',
      'ar': '',
    },
    '5xmadoop': {
      'en': '',
      'ar': '',
    },
    'xfu4yiz7': {
      'en': 'Password...',
      'ar': 'كلمة المرور...',
    },
    'awfx3n75': {
      'en': 'Confirm password...',
      'ar': 'تأكيد كلمة المرور...',
    },
    'crzxyoix': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    'f1beuar5': {
      'en': 'Do you have an accoun already ?',
      'ar': 'هل لديك حساب بالفعل؟',
    },
    'q75d616h': {
      'en': ' Sign in',
      'ar': 'تسجيل الدخول',
    },
    '6n3en6hf': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Properties
  {
    'lr2v73ji': {
      'en': '@username',
      'ar': '@اسم المستخدم',
    },
    'w9gkeyh3': {
      'en': 'Type of decade',
      'ar': 'نوع العقد',
    },
    '0zi8ndm1': {
      'en': 'More photos',
      'ar': 'المزيد من الصور',
    },
    'vtmx03uu': {
      'en': 'Home',
      'ar': '',
    },
  },
  // PropertiesCopy
  {
    'gf4a8fln': {
      'en': '@username',
      'ar': '',
    },
    'bypub6ax': {
      'en': 'Type of decade',
      'ar': '',
    },
    'axp0iaii': {
      'en': 'Adress',
      'ar': 'المساحة',
    },
    '4k7a5o2o': {
      'en': 'Lease Period',
      'ar': 'فترة الايجار',
    },
    'a8m1role': {
      'en': 'More photos',
      'ar': '',
    },
    'itbpqacb': {
      'en': 'Home',
      'ar': '',
    },
  },
  // VisitorHomePagebin
  {
    'dslgu7rm': {
      'en': 'Houses',
      'ar': 'منازل',
    },
    'l1zf8l4m': {
      'en': 'Apartments',
      'ar': 'شقق',
    },
    '2oav4odq': {
      'en': 'Villas',
      'ar': 'فلل',
    },
    'r07h80p9': {
      'en': 'farms ',
      'ar': 'مزارع',
    },
    'egf1ict0': {
      'en': 'Shops ',
      'ar': 'محلات',
    },
    'wiprzoro': {
      'en': 'Buildings',
      'ar': 'عمارات',
    },
    'hxt8t91b': {
      'en': ' Rest Houses',
      'ar': 'الإستراحات',
    },
    'qi4e5w9l': {
      'en': '',
      'ar': '',
    },
    '6gk2gte6': {
      'en': 'Sale',
      'ar': 'بيع',
    },
    'lhv473o8': {
      'en': 'Rent',
      'ar': 'إيجار',
    },
    'jjucij76': {
      'en': '',
      'ar': '',
    },
    '353mgnru': {
      'en': 'Sale',
      'ar': '',
    },
    '0g5evav4': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AddPost
  {
    'z8u21zp2': {
      'en': 'Enter The Adress...',
      'ar': 'أدخل العنوان...',
    },
    'zc82y6ft': {
      'en': '',
      'ar': '',
    },
    'sf7u54uo': {
      'en': 'Enter The Price..',
      'ar': 'أدخل السعر...',
    },
    'iy62remj': {
      'en': '',
      'ar': '',
    },
    '59ns7s65': {
      'en': '',
      'ar': '',
    },
    '5hf9u40l': {
      'en': 'Enter The phone number...',
      'ar': 'أدخل رقم الهاتف...',
    },
    'w9tdhdx8': {
      'en': '',
      'ar': '',
    },
    '78vxkip8': {
      'en': '',
      'ar': '',
    },
    'vx2zrfly': {
      'en': 'Description...',
      'ar': 'الوصف...',
    },
    '4gqnb9of': {
      'en': '',
      'ar': '',
    },
    '22pml9md': {
      'en': '',
      'ar': '',
    },
    '6mdbwcin': {
      'en': 'Area...',
      'ar': '',
    },
    '8xv8bro8': {
      'en': '',
      'ar': '',
    },
    'vuglhpfx': {
      'en': '',
      'ar': '',
    },
    'th09rhhk': {
      'en': 'Down Payment...',
      'ar': 'الدفعة الاولية...',
    },
    '09intz3d': {
      'en': '',
      'ar': '',
    },
    '9k5v36bl': {
      'en': '',
      'ar': '',
    },
    'z3ztsyec': {
      'en': 'Sale',
      'ar': 'بيع',
    },
    'r9xgmfmw': {
      'en': 'Rent',
      'ar': 'إيجار',
    },
    '5ohp40kb': {
      'en': '',
      'ar': 'الجميع',
    },
    'rlgielra': {
      'en': 'Sale',
      'ar': 'بيع',
    },
    '0uvdhmis': {
      'en': 'Lease Period...',
      'ar': 'فترة الايجار...',
    },
    'f4ln5i45': {
      'en': '',
      'ar': '',
    },
    'k91u4hck': {
      'en': '',
      'ar': '',
    },
    '7pbfswdd': {
      'en': 'Payment Type...',
      'ar': 'نوع الدفع...',
    },
    '0hk2923x': {
      'en': '',
      'ar': '',
    },
    '5yo4k0j6': {
      'en': '',
      'ar': '',
    },
    'c7neg4vz': {
      'en': 'Houses',
      'ar': 'منازل',
    },
    'adg32tx8': {
      'en': 'Apartments',
      'ar': 'شقق',
    },
    'ev58dohq': {
      'en': 'Villas',
      'ar': 'فلل',
    },
    '3w6c28ns': {
      'en': 'farms ',
      'ar': 'مزارع',
    },
    'a5sja3u7': {
      'en': 'Shops ',
      'ar': 'محلات',
    },
    'zf81mepz': {
      'en': 'Buildings',
      'ar': 'عمارات',
    },
    'sxcwo4zt': {
      'en': ' Rest Houses',
      'ar': 'الإستراحات',
    },
    'tnsbyfmw': {
      'en': 'Houses',
      'ar': 'منازل',
    },
    'mkjdkgg1': {
      'en': 'Main Image',
      'ar': 'الصورة الرئيسية',
    },
    '5lamfl7u': {
      'en': 'Images',
      'ar': 'الصور',
    },
    'lecetidu': {
      'en': 'Mane image',
      'ar': 'الصورة الرئيسية',
    },
    'h9fuagp2': {
      'en': 'Images',
      'ar': 'الصور',
    },
    'rpdbjga1': {
      'en': 'Submit',
      'ar': 'أنشر',
    },
  },
  // visitorBtnSheet
  {
    'x25hhovc': {
      'en': 'You have to create account to do this action',
      'ar': 'أنت بحاجة لإنشاء حساب حتى تستخدم هذه الخاصِيَة',
    },
    'a2qjk6x0': {
      'en': 'Creat Account',
      'ar': 'إنشاء حساب',
    },
    'r8qdw7jt': {
      'en': 'Ignore',
      'ar': 'تجاهل',
    },
  },
  // EditBtnSheet
  {
    'y5lqic2o': {
      'en': 'Update your name...',
      'ar': 'حدث اسمك...',
    },
    'fv0q4wbm': {
      'en': '',
      'ar': '',
    },
    '6owdbteg': {
      'en': '',
      'ar': '',
    },
    'yfaorj5f': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
  },
  // Miscellaneous
  {
    'frd9mhw1': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'wx3wwyz6': {
      'en': 'Label here...',
      'ar': 'ضع العلامة هنا...',
    },
    'cui5e3op': {
      'en': 'Enter Your Email ...',
      'ar': 'أدخل بريدك الإلكتروني...',
    },
    'vnjhxqm3': {
      'en': '',
      'ar': '',
    },
    '6vjuvpkr': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'yo4q9fpf': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'pr904038': {
      'en': 'houses',
      'ar': 'منازل',
    },
    'lsji00e9': {
      'en': 'Apartments',
      'ar': 'شقق سكنية',
    },
    'co72586i': {
      'en': 'Villas',
      'ar': 'الفلل',
    },
    'fsby4h46': {
      'en': 'All',
      'ar': 'الجميع',
    },
    's8v1iht0': {
      'en': 'Your Email Adress...',
      'ar': 'عنوان بريدك الإلكتروني...',
    },
    'g759i9pj': {
      'en': 'Label here...',
      'ar': '',
    },
    '09y6eor0': {
      'en': 'Label here...',
      'ar': 'ضع العلامة هنا...',
    },
    'nhtovxk6': {
      'en': '',
      'ar': '',
    },
    '88x6ntqq': {
      'en': 'Image',
      'ar': '',
    },
    'uysd7fs4': {
      'en': 'Houses',
      'ar': 'منازل',
    },
    'rgwoi006': {
      'en': 'Apartments',
      'ar': 'شقق سكنية',
    },
    'x2h5v3jl': {
      'en': 'Villas',
      'ar': 'الفلل',
    },
    'ebvn3bf2': {
      'en': 'farms ',
      'ar': 'مزارع',
    },
    '4xzcmoem': {
      'en': 'Shops ',
      'ar': 'محلات',
    },
    'pa2vmn31': {
      'en': 'Buildings',
      'ar': 'عمارات',
    },
    'cy5okvvb': {
      'en': ' Rest Houses',
      'ar': 'استراحات',
    },
    'v0w9kj58': {
      'en': '',
      'ar': '',
    },
    'evcnsaku': {
      'en': 'Area...',
      'ar': 'المساحة...',
    },
    '1pmtbeg5': {
      'en': '',
      'ar': '',
    },
    'hcs0urri': {
      'en': '',
      'ar': '',
    },
    '7hre8aju': {
      'en': 'Profile',
      'ar': 'الحساب',
    },
    '0u67bm7h': {
      'en': '',
      'ar': '',
    },
    'euvhqyiw': {
      'en': '',
      'ar': '',
    },
    'gt6apxua': {
      'en': '',
      'ar': '',
    },
    'oh5way6i': {
      'en': '',
      'ar': '',
    },
    'llo5cy07': {
      'en': '',
      'ar': '',
    },
    'b8nx6j35': {
      'en': '',
      'ar': '',
    },
    '2z78w74d': {
      'en': '',
      'ar': '',
    },
    '61qm7von': {
      'en': '',
      'ar': '',
    },
    'sy3gc1vq': {
      'en': '',
      'ar': '',
    },
    'puzi8v9b': {
      'en': '',
      'ar': '',
    },
    'm0jqfajl': {
      'en': '',
      'ar': '',
    },
    'v8p905zs': {
      'en': '',
      'ar': '',
    },
    '4rliotng': {
      'en': '',
      'ar': '',
    },
    'utmlt085': {
      'en': '',
      'ar': '',
    },
    's2aukcdi': {
      'en': '',
      'ar': '',
    },
    'd65ixnu4': {
      'en': '',
      'ar': '',
    },
    'lc6x95hx': {
      'en': '',
      'ar': '',
    },
    '47dczd5b': {
      'en': '',
      'ar': '',
    },
    'uu7f46xb': {
      'en': '',
      'ar': '',
    },
    'viktup7v': {
      'en': '',
      'ar': '',
    },
    '7e7qc4im': {
      'en': '',
      'ar': '',
    },
    'p8r6qpdh': {
      'en': '',
      'ar': '',
    },
    'uihctvzl': {
      'en': '',
      'ar': '',
    },
    'dwcon3yz': {
      'en': '',
      'ar': '',
    },
    'civlg4bk': {
      'en': '',
      'ar': '',
    },
    'nhmkuw4q': {
      'en': '',
      'ar': '',
    },
    '3i7bvlg9': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
