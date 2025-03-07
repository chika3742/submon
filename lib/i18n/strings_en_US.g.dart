///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEnUs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEnUs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEnUs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonEnUs common = _TranslationsCommonEnUs._(_root);
	@override late final _TranslationsPagesEnUs pages = _TranslationsPagesEnUs._(_root);
	@override Map<String, dynamic> get durationUnit => {
		'hours': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
			one: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' hour'),
			]),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' hours'),
			]),
		),
		'days': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
			one: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' day'),
			]),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' days'),
			]),
		),
		'weeks': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
			one: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' week'),
			]),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' weeks'),
			]),
		),
		'months': ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
			n: n,
			resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
			one: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' month'),
			]),
			other: () => TextSpan(children: [
				nBuilder(n),
				const TextSpan(text: ' months'),
			]),
		),
	};
}

// Path: common
class _TranslationsCommonEnUs extends TranslationsCommonJaJp {
	_TranslationsCommonEnUs._(TranslationsEnUs root) : this._root = root, super.internal(root);

	final TranslationsEnUs _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Submon';
}

// Path: pages
class _TranslationsPagesEnUs extends TranslationsPagesJaJp {
	_TranslationsPagesEnUs._(TranslationsEnUs root) : this._root = root, super.internal(root);

	final TranslationsEnUs _root; // ignore: unused_field

	// Translations
	@override String get submissions => 'Submissions';
	@override String get digestives => 'Digestives';
	@override String get timetable => 'Timetable';
	@override String get more => 'More';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEnUs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.appName': return 'Submon';
			case 'pages.submissions': return 'Submissions';
			case 'pages.digestives': return 'Digestives';
			case 'pages.timetable': return 'Timetable';
			case 'pages.more': return 'More';
			case 'durationUnit.hours': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
				one: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' hour'),
				]),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' hours'),
				]),
			);
			case 'durationUnit.days': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
				one: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' day'),
				]),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' days'),
				]),
			);
			case 'durationUnit.weeks': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
				one: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' week'),
				]),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' weeks'),
				]),
			);
			case 'durationUnit.months': return ({required num n, required InlineSpan Function(num) nBuilder}) => RichPluralResolvers.bridge(
				n: n,
				resolver: _root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'),
				one: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' month'),
				]),
				other: () => TextSpan(children: [
					nBuilder(n),
					const TextSpan(text: ' months'),
				]),
			);
			default: return null;
		}
	}
}

