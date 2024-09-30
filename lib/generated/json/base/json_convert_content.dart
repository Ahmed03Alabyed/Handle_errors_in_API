// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:untitled12/data/http_requests/anime_search_response_entity.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);
typedef ConvertExceptionHandler = void Function(Object error, StackTrace stackTrace);
extension MapSafeExt<K, V> on Map<K, V> {
  T? getOrNull<T>(K? key) {
    if (!containsKey(key) || key == null) {
      return null;
    } else {
      return this[key] as T?;
    }
  }
}

class JsonConvert {
  static ConvertExceptionHandler? onError;
  JsonConvertClassCollection convertFuncMap = JsonConvertClassCollection();

  /// When you are in the development, to generate a new model class, hot-reload doesn't find new generation model class, you can build on MaterialApp method called jsonConvert. ReassembleConvertFuncMap (); This method only works in a development environment
  /// https://flutter.cn/docs/development/tools/hot-reload
  /// class MyApp extends StatelessWidget {
  ///    const MyApp({Key? key})
  ///        : super(key: key);
  ///
  ///    @override
  ///    Widget build(BuildContext context) {
  ///      jsonConvert.reassembleConvertFuncMap();
  ///      return MaterialApp();
  ///    }
  /// }
  void reassembleConvertFuncMap() {
    bool isReleaseMode = const bool.fromEnvironment('dart.vm.product');
    if (!isReleaseMode) {
      convertFuncMap = JsonConvertClassCollection();
    }
  }

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e, enumConvert: enumConvert))
          .toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) =>
      _asT<T>(e, enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        if (value == null) {
          return null;
        }
        var covertFunc = convertFuncMap[type]!;
        if (covertFunc is Map<String, dynamic>) {
          return covertFunc(value as Map<String, dynamic>) as T;
        } else {
          return covertFunc(Map<String, dynamic>.from(value)) as T;
        }
      } else {
        throw UnimplementedError(
            '$type unimplemented,you can try running the app again');
      }
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<AnimeSearchResponseEntity>[] is M) {
      return data.map<AnimeSearchResponseEntity>((Map<String, dynamic> e) =>
          AnimeSearchResponseEntity.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponsePagination>[] is M) {
      return data.map<AnimeSearchResponsePagination>((Map<String, dynamic> e) =>
          AnimeSearchResponsePagination.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponsePaginationItems>[] is M) {
      return data.map<AnimeSearchResponsePaginationItems>((
          Map<String, dynamic> e) =>
          AnimeSearchResponsePaginationItems.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseData>[] is M) {
      return data.map<AnimeSearchResponseData>((Map<String, dynamic> e) =>
          AnimeSearchResponseData.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataImages>[] is M) {
      return data.map<AnimeSearchResponseDataImages>((Map<String, dynamic> e) =>
          AnimeSearchResponseDataImages.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataImagesJpg>[] is M) {
      return data.map<AnimeSearchResponseDataImagesJpg>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataImagesJpg.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataImagesWebp>[] is M) {
      return data.map<AnimeSearchResponseDataImagesWebp>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataImagesWebp.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataTrailer>[] is M) {
      return data.map<AnimeSearchResponseDataTrailer>((
          Map<String, dynamic> e) => AnimeSearchResponseDataTrailer.fromJson(e))
          .toList() as M;
    }
    if (<AnimeSearchResponseDataTrailerImages>[] is M) {
      return data.map<AnimeSearchResponseDataTrailerImages>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataTrailerImages.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataTitles>[] is M) {
      return data.map<AnimeSearchResponseDataTitles>((Map<String, dynamic> e) =>
          AnimeSearchResponseDataTitles.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataAired>[] is M) {
      return data.map<AnimeSearchResponseDataAired>((Map<String, dynamic> e) =>
          AnimeSearchResponseDataAired.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataAiredProp>[] is M) {
      return data.map<AnimeSearchResponseDataAiredProp>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataAiredProp.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataAiredPropFrom>[] is M) {
      return data.map<AnimeSearchResponseDataAiredPropFrom>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataAiredPropFrom.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataAiredPropTo>[] is M) {
      return data.map<AnimeSearchResponseDataAiredPropTo>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataAiredPropTo.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataBroadcast>[] is M) {
      return data.map<AnimeSearchResponseDataBroadcast>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataBroadcast.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataProducers>[] is M) {
      return data.map<AnimeSearchResponseDataProducers>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataProducers.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataLicensors>[] is M) {
      return data.map<AnimeSearchResponseDataLicensors>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataLicensors.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataStudios>[] is M) {
      return data.map<AnimeSearchResponseDataStudios>((
          Map<String, dynamic> e) => AnimeSearchResponseDataStudios.fromJson(e))
          .toList() as M;
    }
    if (<AnimeSearchResponseDataGenres>[] is M) {
      return data.map<AnimeSearchResponseDataGenres>((Map<String, dynamic> e) =>
          AnimeSearchResponseDataGenres.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataThemes>[] is M) {
      return data.map<AnimeSearchResponseDataThemes>((Map<String, dynamic> e) =>
          AnimeSearchResponseDataThemes.fromJson(e)).toList() as M;
    }
    if (<AnimeSearchResponseDataDemographics>[] is M) {
      return data.map<AnimeSearchResponseDataDemographics>((
          Map<String, dynamic> e) =>
          AnimeSearchResponseDataDemographics.fromJson(e)).toList() as M;
    }

    debugPrint("$M not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is M) {
      return json;
    }
    if (json is List) {
      return _getListChildType<M>(
          json.map((dynamic e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.convert<M>(json);
    }
  }
}

class JsonConvertClassCollection {
  Map<String, JsonConvertFunction> convertFuncMap = {
    (AnimeSearchResponseEntity).toString(): AnimeSearchResponseEntity.fromJson,
    (AnimeSearchResponsePagination).toString(): AnimeSearchResponsePagination
        .fromJson,
    (AnimeSearchResponsePaginationItems)
        .toString(): AnimeSearchResponsePaginationItems.fromJson,
    (AnimeSearchResponseData).toString(): AnimeSearchResponseData.fromJson,
    (AnimeSearchResponseDataImages).toString(): AnimeSearchResponseDataImages
        .fromJson,
    (AnimeSearchResponseDataImagesJpg)
        .toString(): AnimeSearchResponseDataImagesJpg.fromJson,
    (AnimeSearchResponseDataImagesWebp)
        .toString(): AnimeSearchResponseDataImagesWebp.fromJson,
    (AnimeSearchResponseDataTrailer).toString(): AnimeSearchResponseDataTrailer
        .fromJson,
    (AnimeSearchResponseDataTrailerImages)
        .toString(): AnimeSearchResponseDataTrailerImages.fromJson,
    (AnimeSearchResponseDataTitles).toString(): AnimeSearchResponseDataTitles
        .fromJson,
    (AnimeSearchResponseDataAired).toString(): AnimeSearchResponseDataAired
        .fromJson,
    (AnimeSearchResponseDataAiredProp)
        .toString(): AnimeSearchResponseDataAiredProp.fromJson,
    (AnimeSearchResponseDataAiredPropFrom)
        .toString(): AnimeSearchResponseDataAiredPropFrom.fromJson,
    (AnimeSearchResponseDataAiredPropTo)
        .toString(): AnimeSearchResponseDataAiredPropTo.fromJson,
    (AnimeSearchResponseDataBroadcast)
        .toString(): AnimeSearchResponseDataBroadcast.fromJson,
    (AnimeSearchResponseDataProducers)
        .toString(): AnimeSearchResponseDataProducers.fromJson,
    (AnimeSearchResponseDataLicensors)
        .toString(): AnimeSearchResponseDataLicensors.fromJson,
    (AnimeSearchResponseDataStudios).toString(): AnimeSearchResponseDataStudios
        .fromJson,
    (AnimeSearchResponseDataGenres).toString(): AnimeSearchResponseDataGenres
        .fromJson,
    (AnimeSearchResponseDataThemes).toString(): AnimeSearchResponseDataThemes
        .fromJson,
    (AnimeSearchResponseDataDemographics)
        .toString(): AnimeSearchResponseDataDemographics.fromJson,
  };

  bool containsKey(String type) {
    return convertFuncMap.containsKey(type);
  }

  JsonConvertFunction? operator [](String key) {
    return convertFuncMap[key];
  }
}