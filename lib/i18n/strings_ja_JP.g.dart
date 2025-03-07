///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJaJp = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final tr = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.jaJp,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja-JP>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsCommonJaJp common = TranslationsCommonJaJp.internal(_root);
	late final TranslationsPagesJaJp pages = TranslationsPagesJaJp.internal(_root);
	Map<String, dynamic> get durationUnit => {
		'hours': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: '時間'),
			]),
		),
		'days': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: '日'),
			]),
		),
		'weeks': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: '週間'),
			]),
		),
		'months': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: 'ヶ月'),
			]),
		),
	};
}

// Path: common
class TranslationsCommonJaJp {
	TranslationsCommonJaJp.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appName => 'Submon';
}

// Path: pages
class TranslationsPagesJaJp {
	TranslationsPagesJaJp.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get submissions => '提出物';
	String get digestives => 'Digestive';
	String get timetable => '時間割';
	String get more => 'その他';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.appName': return 'Submon';
			case 'pages.submissions': return '提出物';
			case 'pages.digestives': return 'Digestive';
			case 'pages.timetable': return '時間割';
			case 'pages.more': return 'その他';
			case 'durationUnit.hours': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: '時間'),
				]),
			);
			case 'durationUnit.days': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: '日'),
				]),
			);
			case 'durationUnit.weeks': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: '週間'),
				]),
			);
			case 'durationUnit.months': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: 'ヶ月'),
				]),
			);
			default: return null;
		}
	}
}

