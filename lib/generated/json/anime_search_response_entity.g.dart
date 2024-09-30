import 'package:untitled12/generated/json/base/json_convert_content.dart';
import 'package:untitled12/data/http_requests/anime_search_response_entity.dart';

AnimeSearchResponseEntity $AnimeSearchResponseEntityFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseEntity animeSearchResponseEntity = AnimeSearchResponseEntity();
  final AnimeSearchResponsePagination? pagination = jsonConvert.convert<
      AnimeSearchResponsePagination>(json['pagination']);
  if (pagination != null) {
    animeSearchResponseEntity.pagination = pagination;
  }
  final List<AnimeSearchResponseData>? data = (json['data'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseData>(
          e) as AnimeSearchResponseData)
      .toList();
  if (data != null) {
    animeSearchResponseEntity.data = data;
  }
  return animeSearchResponseEntity;
}

Map<String, dynamic> $AnimeSearchResponseEntityToJson(
    AnimeSearchResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pagination'] = entity.pagination?.toJson();
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  return data;
}

extension AnimeSearchResponseEntityExtension on AnimeSearchResponseEntity {
  AnimeSearchResponseEntity copyWith({
    AnimeSearchResponsePagination? pagination,
    List<AnimeSearchResponseData>? data,
  }) {
    return AnimeSearchResponseEntity()
      ..pagination = pagination ?? this.pagination
      ..data = data ?? this.data;
  }
}

AnimeSearchResponsePagination $AnimeSearchResponsePaginationFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponsePagination animeSearchResponsePagination = AnimeSearchResponsePagination();
  final int? lastVisiblePage = jsonConvert.convert<int>(
      json['last_visible_page']);
  if (lastVisiblePage != null) {
    animeSearchResponsePagination.lastVisiblePage = lastVisiblePage;
  }
  final bool? hasNextPage = jsonConvert.convert<bool>(json['has_next_page']);
  if (hasNextPage != null) {
    animeSearchResponsePagination.hasNextPage = hasNextPage;
  }
  final int? currentPage = jsonConvert.convert<int>(json['current_page']);
  if (currentPage != null) {
    animeSearchResponsePagination.currentPage = currentPage;
  }
  final AnimeSearchResponsePaginationItems? items = jsonConvert.convert<
      AnimeSearchResponsePaginationItems>(json['items']);
  if (items != null) {
    animeSearchResponsePagination.items = items;
  }
  return animeSearchResponsePagination;
}

Map<String, dynamic> $AnimeSearchResponsePaginationToJson(
    AnimeSearchResponsePagination entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['last_visible_page'] = entity.lastVisiblePage;
  data['has_next_page'] = entity.hasNextPage;
  data['current_page'] = entity.currentPage;
  data['items'] = entity.items?.toJson();
  return data;
}

extension AnimeSearchResponsePaginationExtension on AnimeSearchResponsePagination {
  AnimeSearchResponsePagination copyWith({
    int? lastVisiblePage,
    bool? hasNextPage,
    int? currentPage,
    AnimeSearchResponsePaginationItems? items,
  }) {
    return AnimeSearchResponsePagination()
      ..lastVisiblePage = lastVisiblePage ?? this.lastVisiblePage
      ..hasNextPage = hasNextPage ?? this.hasNextPage
      ..currentPage = currentPage ?? this.currentPage
      ..items = items ?? this.items;
  }
}

AnimeSearchResponsePaginationItems $AnimeSearchResponsePaginationItemsFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponsePaginationItems animeSearchResponsePaginationItems = AnimeSearchResponsePaginationItems();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    animeSearchResponsePaginationItems.count = count;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    animeSearchResponsePaginationItems.total = total;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    animeSearchResponsePaginationItems.perPage = perPage;
  }
  return animeSearchResponsePaginationItems;
}

Map<String, dynamic> $AnimeSearchResponsePaginationItemsToJson(
    AnimeSearchResponsePaginationItems entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['total'] = entity.total;
  data['per_page'] = entity.perPage;
  return data;
}

extension AnimeSearchResponsePaginationItemsExtension on AnimeSearchResponsePaginationItems {
  AnimeSearchResponsePaginationItems copyWith({
    int? count,
    int? total,
    int? perPage,
  }) {
    return AnimeSearchResponsePaginationItems()
      ..count = count ?? this.count
      ..total = total ?? this.total
      ..perPage = perPage ?? this.perPage;
  }
}

AnimeSearchResponseData $AnimeSearchResponseDataFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseData animeSearchResponseData = AnimeSearchResponseData();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseData.malId = malId;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseData.url = url;
  }
  final AnimeSearchResponseDataImages? images = jsonConvert.convert<
      AnimeSearchResponseDataImages>(json['images']);
  if (images != null) {
    animeSearchResponseData.images = images;
  }
  final AnimeSearchResponseDataTrailer? trailer = jsonConvert.convert<
      AnimeSearchResponseDataTrailer>(json['trailer']);
  if (trailer != null) {
    animeSearchResponseData.trailer = trailer;
  }
  final bool? approved = jsonConvert.convert<bool>(json['approved']);
  if (approved != null) {
    animeSearchResponseData.approved = approved;
  }
  final List<AnimeSearchResponseDataTitles>? titles = (json['titles'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataTitles>(
          e) as AnimeSearchResponseDataTitles).toList();
  if (titles != null) {
    animeSearchResponseData.titles = titles;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    animeSearchResponseData.title = title;
  }
  final String? titleEnglish = jsonConvert.convert<String>(
      json['title_english']);
  if (titleEnglish != null) {
    animeSearchResponseData.titleEnglish = titleEnglish;
  }
  final String? titleJapanese = jsonConvert.convert<String>(
      json['title_japanese']);
  if (titleJapanese != null) {
    animeSearchResponseData.titleJapanese = titleJapanese;
  }
  final List<String>? titleSynonyms = (json['title_synonyms'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (titleSynonyms != null) {
    animeSearchResponseData.titleSynonyms = titleSynonyms;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseData.type = type;
  }
  final String? source = jsonConvert.convert<String>(json['source']);
  if (source != null) {
    animeSearchResponseData.source = source;
  }
  final int? episodes = jsonConvert.convert<int>(json['episodes']);
  if (episodes != null) {
    animeSearchResponseData.episodes = episodes;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    animeSearchResponseData.status = status;
  }
  final bool? airing = jsonConvert.convert<bool>(json['airing']);
  if (airing != null) {
    animeSearchResponseData.airing = airing;
  }
  final AnimeSearchResponseDataAired? aired = jsonConvert.convert<
      AnimeSearchResponseDataAired>(json['aired']);
  if (aired != null) {
    animeSearchResponseData.aired = aired;
  }
  final String? duration = jsonConvert.convert<String>(json['duration']);
  if (duration != null) {
    animeSearchResponseData.duration = duration;
  }
  final String? rating = jsonConvert.convert<String>(json['rating']);
  if (rating != null) {
    animeSearchResponseData.rating = rating;
  }
  final double? score = jsonConvert.convert<double>(json['score']);
  if (score != null) {
    animeSearchResponseData.score = score;
  }
  final int? scoredBy = jsonConvert.convert<int>(json['scored_by']);
  if (scoredBy != null) {
    animeSearchResponseData.scoredBy = scoredBy;
  }
  final int? rank = jsonConvert.convert<int>(json['rank']);
  if (rank != null) {
    animeSearchResponseData.rank = rank;
  }
  final int? popularity = jsonConvert.convert<int>(json['popularity']);
  if (popularity != null) {
    animeSearchResponseData.popularity = popularity;
  }
  final int? members = jsonConvert.convert<int>(json['members']);
  if (members != null) {
    animeSearchResponseData.members = members;
  }
  final int? favorites = jsonConvert.convert<int>(json['favorites']);
  if (favorites != null) {
    animeSearchResponseData.favorites = favorites;
  }
  final String? synopsis = jsonConvert.convert<String>(json['synopsis']);
  if (synopsis != null) {
    animeSearchResponseData.synopsis = synopsis;
  }
  final String? background = jsonConvert.convert<String>(json['background']);
  if (background != null) {
    animeSearchResponseData.background = background;
  }
  final String? season = jsonConvert.convert<String>(json['season']);
  if (season != null) {
    animeSearchResponseData.season = season;
  }
  final int? year = jsonConvert.convert<int>(json['year']);
  if (year != null) {
    animeSearchResponseData.year = year;
  }
  final AnimeSearchResponseDataBroadcast? broadcast = jsonConvert.convert<
      AnimeSearchResponseDataBroadcast>(json['broadcast']);
  if (broadcast != null) {
    animeSearchResponseData.broadcast = broadcast;
  }
  final List<
      AnimeSearchResponseDataProducers>? producers = (json['producers'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataProducers>(
          e) as AnimeSearchResponseDataProducers).toList();
  if (producers != null) {
    animeSearchResponseData.producers = producers;
  }
  final List<
      AnimeSearchResponseDataLicensors>? licensors = (json['licensors'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataLicensors>(
          e) as AnimeSearchResponseDataLicensors).toList();
  if (licensors != null) {
    animeSearchResponseData.licensors = licensors;
  }
  final List<
      AnimeSearchResponseDataStudios>? studios = (json['studios'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataStudios>(
          e) as AnimeSearchResponseDataStudios).toList();
  if (studios != null) {
    animeSearchResponseData.studios = studios;
  }
  final List<AnimeSearchResponseDataGenres>? genres = (json['genres'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataGenres>(
          e) as AnimeSearchResponseDataGenres).toList();
  if (genres != null) {
    animeSearchResponseData.genres = genres;
  }
  final List<dynamic>? explicitGenres = (json['explicit_genres'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (explicitGenres != null) {
    animeSearchResponseData.explicitGenres = explicitGenres;
  }
  final List<AnimeSearchResponseDataThemes>? themes = (json['themes'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataThemes>(
          e) as AnimeSearchResponseDataThemes).toList();
  if (themes != null) {
    animeSearchResponseData.themes = themes;
  }
  final List<
      AnimeSearchResponseDataDemographics>? demographics = (json['demographics'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AnimeSearchResponseDataDemographics>(
          e) as AnimeSearchResponseDataDemographics).toList();
  if (demographics != null) {
    animeSearchResponseData.demographics = demographics;
  }
  return animeSearchResponseData;
}

Map<String, dynamic> $AnimeSearchResponseDataToJson(
    AnimeSearchResponseData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['url'] = entity.url;
  data['images'] = entity.images?.toJson();
  data['trailer'] = entity.trailer?.toJson();
  data['approved'] = entity.approved;
  data['titles'] = entity.titles?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['title_english'] = entity.titleEnglish;
  data['title_japanese'] = entity.titleJapanese;
  data['title_synonyms'] = entity.titleSynonyms;
  data['type'] = entity.type;
  data['source'] = entity.source;
  data['episodes'] = entity.episodes;
  data['status'] = entity.status;
  data['airing'] = entity.airing;
  data['aired'] = entity.aired?.toJson();
  data['duration'] = entity.duration;
  data['rating'] = entity.rating;
  data['score'] = entity.score;
  data['scored_by'] = entity.scoredBy;
  data['rank'] = entity.rank;
  data['popularity'] = entity.popularity;
  data['members'] = entity.members;
  data['favorites'] = entity.favorites;
  data['synopsis'] = entity.synopsis;
  data['background'] = entity.background;
  data['season'] = entity.season;
  data['year'] = entity.year;
  data['broadcast'] = entity.broadcast?.toJson();
  data['producers'] = entity.producers?.map((v) => v.toJson()).toList();
  data['licensors'] = entity.licensors?.map((v) => v.toJson()).toList();
  data['studios'] = entity.studios?.map((v) => v.toJson()).toList();
  data['genres'] = entity.genres?.map((v) => v.toJson()).toList();
  data['explicit_genres'] = entity.explicitGenres;
  data['themes'] = entity.themes?.map((v) => v.toJson()).toList();
  data['demographics'] = entity.demographics?.map((v) => v.toJson()).toList();
  return data;
}

extension AnimeSearchResponseDataExtension on AnimeSearchResponseData {
  AnimeSearchResponseData copyWith({
    int? malId,
    String? url,
    AnimeSearchResponseDataImages? images,
    AnimeSearchResponseDataTrailer? trailer,
    bool? approved,
    List<AnimeSearchResponseDataTitles>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    AnimeSearchResponseDataAired? aired,
    String? duration,
    String? rating,
    double? score,
    int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    AnimeSearchResponseDataBroadcast? broadcast,
    List<AnimeSearchResponseDataProducers>? producers,
    List<AnimeSearchResponseDataLicensors>? licensors,
    List<AnimeSearchResponseDataStudios>? studios,
    List<AnimeSearchResponseDataGenres>? genres,
    List<dynamic>? explicitGenres,
    List<AnimeSearchResponseDataThemes>? themes,
    List<AnimeSearchResponseDataDemographics>? demographics,
  }) {
    return AnimeSearchResponseData()
      ..malId = malId ?? this.malId
      ..url = url ?? this.url
      ..images = images ?? this.images
      ..trailer = trailer ?? this.trailer
      ..approved = approved ?? this.approved
      ..titles = titles ?? this.titles
      ..title = title ?? this.title
      ..titleEnglish = titleEnglish ?? this.titleEnglish
      ..titleJapanese = titleJapanese ?? this.titleJapanese
      ..titleSynonyms = titleSynonyms ?? this.titleSynonyms
      ..type = type ?? this.type
      ..source = source ?? this.source
      ..episodes = episodes ?? this.episodes
      ..status = status ?? this.status
      ..airing = airing ?? this.airing
      ..aired = aired ?? this.aired
      ..duration = duration ?? this.duration
      ..rating = rating ?? this.rating
      ..score = score ?? this.score
      ..scoredBy = scoredBy ?? this.scoredBy
      ..rank = rank ?? this.rank
      ..popularity = popularity ?? this.popularity
      ..members = members ?? this.members
      ..favorites = favorites ?? this.favorites
      ..synopsis = synopsis ?? this.synopsis
      ..background = background ?? this.background
      ..season = season ?? this.season
      ..year = year ?? this.year
      ..broadcast = broadcast ?? this.broadcast
      ..producers = producers ?? this.producers
      ..licensors = licensors ?? this.licensors
      ..studios = studios ?? this.studios
      ..genres = genres ?? this.genres
      ..explicitGenres = explicitGenres ?? this.explicitGenres
      ..themes = themes ?? this.themes
      ..demographics = demographics ?? this.demographics;
  }
}

AnimeSearchResponseDataImages $AnimeSearchResponseDataImagesFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataImages animeSearchResponseDataImages = AnimeSearchResponseDataImages();
  final AnimeSearchResponseDataImagesJpg? jpg = jsonConvert.convert<
      AnimeSearchResponseDataImagesJpg>(json['jpg']);
  if (jpg != null) {
    animeSearchResponseDataImages.jpg = jpg;
  }
  final AnimeSearchResponseDataImagesWebp? webp = jsonConvert.convert<
      AnimeSearchResponseDataImagesWebp>(json['webp']);
  if (webp != null) {
    animeSearchResponseDataImages.webp = webp;
  }
  return animeSearchResponseDataImages;
}

Map<String, dynamic> $AnimeSearchResponseDataImagesToJson(
    AnimeSearchResponseDataImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['jpg'] = entity.jpg?.toJson();
  data['webp'] = entity.webp?.toJson();
  return data;
}

extension AnimeSearchResponseDataImagesExtension on AnimeSearchResponseDataImages {
  AnimeSearchResponseDataImages copyWith({
    AnimeSearchResponseDataImagesJpg? jpg,
    AnimeSearchResponseDataImagesWebp? webp,
  }) {
    return AnimeSearchResponseDataImages()
      ..jpg = jpg ?? this.jpg
      ..webp = webp ?? this.webp;
  }
}

AnimeSearchResponseDataImagesJpg $AnimeSearchResponseDataImagesJpgFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataImagesJpg animeSearchResponseDataImagesJpg = AnimeSearchResponseDataImagesJpg();
  final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
  if (imageUrl != null) {
    animeSearchResponseDataImagesJpg.imageUrl = imageUrl;
  }
  final String? smallImageUrl = jsonConvert.convert<String>(
      json['small_image_url']);
  if (smallImageUrl != null) {
    animeSearchResponseDataImagesJpg.smallImageUrl = smallImageUrl;
  }
  final String? largeImageUrl = jsonConvert.convert<String>(
      json['large_image_url']);
  if (largeImageUrl != null) {
    animeSearchResponseDataImagesJpg.largeImageUrl = largeImageUrl;
  }
  return animeSearchResponseDataImagesJpg;
}

Map<String, dynamic> $AnimeSearchResponseDataImagesJpgToJson(
    AnimeSearchResponseDataImagesJpg entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_url'] = entity.imageUrl;
  data['small_image_url'] = entity.smallImageUrl;
  data['large_image_url'] = entity.largeImageUrl;
  return data;
}

extension AnimeSearchResponseDataImagesJpgExtension on AnimeSearchResponseDataImagesJpg {
  AnimeSearchResponseDataImagesJpg copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) {
    return AnimeSearchResponseDataImagesJpg()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..smallImageUrl = smallImageUrl ?? this.smallImageUrl
      ..largeImageUrl = largeImageUrl ?? this.largeImageUrl;
  }
}

AnimeSearchResponseDataImagesWebp $AnimeSearchResponseDataImagesWebpFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataImagesWebp animeSearchResponseDataImagesWebp = AnimeSearchResponseDataImagesWebp();
  final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
  if (imageUrl != null) {
    animeSearchResponseDataImagesWebp.imageUrl = imageUrl;
  }
  final String? smallImageUrl = jsonConvert.convert<String>(
      json['small_image_url']);
  if (smallImageUrl != null) {
    animeSearchResponseDataImagesWebp.smallImageUrl = smallImageUrl;
  }
  final String? largeImageUrl = jsonConvert.convert<String>(
      json['large_image_url']);
  if (largeImageUrl != null) {
    animeSearchResponseDataImagesWebp.largeImageUrl = largeImageUrl;
  }
  return animeSearchResponseDataImagesWebp;
}

Map<String, dynamic> $AnimeSearchResponseDataImagesWebpToJson(
    AnimeSearchResponseDataImagesWebp entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_url'] = entity.imageUrl;
  data['small_image_url'] = entity.smallImageUrl;
  data['large_image_url'] = entity.largeImageUrl;
  return data;
}

extension AnimeSearchResponseDataImagesWebpExtension on AnimeSearchResponseDataImagesWebp {
  AnimeSearchResponseDataImagesWebp copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) {
    return AnimeSearchResponseDataImagesWebp()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..smallImageUrl = smallImageUrl ?? this.smallImageUrl
      ..largeImageUrl = largeImageUrl ?? this.largeImageUrl;
  }
}

AnimeSearchResponseDataTrailer $AnimeSearchResponseDataTrailerFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataTrailer animeSearchResponseDataTrailer = AnimeSearchResponseDataTrailer();
  final String? youtubeId = jsonConvert.convert<String>(json['youtube_id']);
  if (youtubeId != null) {
    animeSearchResponseDataTrailer.youtubeId = youtubeId;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataTrailer.url = url;
  }
  final String? embedUrl = jsonConvert.convert<String>(json['embed_url']);
  if (embedUrl != null) {
    animeSearchResponseDataTrailer.embedUrl = embedUrl;
  }
  final AnimeSearchResponseDataTrailerImages? images = jsonConvert.convert<
      AnimeSearchResponseDataTrailerImages>(json['images']);
  if (images != null) {
    animeSearchResponseDataTrailer.images = images;
  }
  return animeSearchResponseDataTrailer;
}

Map<String, dynamic> $AnimeSearchResponseDataTrailerToJson(
    AnimeSearchResponseDataTrailer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['youtube_id'] = entity.youtubeId;
  data['url'] = entity.url;
  data['embed_url'] = entity.embedUrl;
  data['images'] = entity.images?.toJson();
  return data;
}

extension AnimeSearchResponseDataTrailerExtension on AnimeSearchResponseDataTrailer {
  AnimeSearchResponseDataTrailer copyWith({
    String? youtubeId,
    String? url,
    String? embedUrl,
    AnimeSearchResponseDataTrailerImages? images,
  }) {
    return AnimeSearchResponseDataTrailer()
      ..youtubeId = youtubeId ?? this.youtubeId
      ..url = url ?? this.url
      ..embedUrl = embedUrl ?? this.embedUrl
      ..images = images ?? this.images;
  }
}

AnimeSearchResponseDataTrailerImages $AnimeSearchResponseDataTrailerImagesFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataTrailerImages animeSearchResponseDataTrailerImages = AnimeSearchResponseDataTrailerImages();
  final String? imageUrl = jsonConvert.convert<String>(json['image_url']);
  if (imageUrl != null) {
    animeSearchResponseDataTrailerImages.imageUrl = imageUrl;
  }
  final String? smallImageUrl = jsonConvert.convert<String>(
      json['small_image_url']);
  if (smallImageUrl != null) {
    animeSearchResponseDataTrailerImages.smallImageUrl = smallImageUrl;
  }
  final String? mediumImageUrl = jsonConvert.convert<String>(
      json['medium_image_url']);
  if (mediumImageUrl != null) {
    animeSearchResponseDataTrailerImages.mediumImageUrl = mediumImageUrl;
  }
  final String? largeImageUrl = jsonConvert.convert<String>(
      json['large_image_url']);
  if (largeImageUrl != null) {
    animeSearchResponseDataTrailerImages.largeImageUrl = largeImageUrl;
  }
  final String? maximumImageUrl = jsonConvert.convert<String>(
      json['maximum_image_url']);
  if (maximumImageUrl != null) {
    animeSearchResponseDataTrailerImages.maximumImageUrl = maximumImageUrl;
  }
  return animeSearchResponseDataTrailerImages;
}

Map<String, dynamic> $AnimeSearchResponseDataTrailerImagesToJson(
    AnimeSearchResponseDataTrailerImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image_url'] = entity.imageUrl;
  data['small_image_url'] = entity.smallImageUrl;
  data['medium_image_url'] = entity.mediumImageUrl;
  data['large_image_url'] = entity.largeImageUrl;
  data['maximum_image_url'] = entity.maximumImageUrl;
  return data;
}

extension AnimeSearchResponseDataTrailerImagesExtension on AnimeSearchResponseDataTrailerImages {
  AnimeSearchResponseDataTrailerImages copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? mediumImageUrl,
    String? largeImageUrl,
    String? maximumImageUrl,
  }) {
    return AnimeSearchResponseDataTrailerImages()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..smallImageUrl = smallImageUrl ?? this.smallImageUrl
      ..mediumImageUrl = mediumImageUrl ?? this.mediumImageUrl
      ..largeImageUrl = largeImageUrl ?? this.largeImageUrl
      ..maximumImageUrl = maximumImageUrl ?? this.maximumImageUrl;
  }
}

AnimeSearchResponseDataTitles $AnimeSearchResponseDataTitlesFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataTitles animeSearchResponseDataTitles = AnimeSearchResponseDataTitles();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataTitles.type = type;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    animeSearchResponseDataTitles.title = title;
  }
  return animeSearchResponseDataTitles;
}

Map<String, dynamic> $AnimeSearchResponseDataTitlesToJson(
    AnimeSearchResponseDataTitles entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['title'] = entity.title;
  return data;
}

extension AnimeSearchResponseDataTitlesExtension on AnimeSearchResponseDataTitles {
  AnimeSearchResponseDataTitles copyWith({
    String? type,
    String? title,
  }) {
    return AnimeSearchResponseDataTitles()
      ..type = type ?? this.type
      ..title = title ?? this.title;
  }
}

AnimeSearchResponseDataAired $AnimeSearchResponseDataAiredFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataAired animeSearchResponseDataAired = AnimeSearchResponseDataAired();
  final String? from = jsonConvert.convert<String>(json['from']);
  if (from != null) {
    animeSearchResponseDataAired.from = from;
  }
  final String? to = jsonConvert.convert<String>(json['to']);
  if (to != null) {
    animeSearchResponseDataAired.to = to;
  }
  final AnimeSearchResponseDataAiredProp? prop = jsonConvert.convert<
      AnimeSearchResponseDataAiredProp>(json['prop']);
  if (prop != null) {
    animeSearchResponseDataAired.prop = prop;
  }
  final String? string = jsonConvert.convert<String>(json['string']);
  if (string != null) {
    animeSearchResponseDataAired.string = string;
  }
  return animeSearchResponseDataAired;
}

Map<String, dynamic> $AnimeSearchResponseDataAiredToJson(
    AnimeSearchResponseDataAired entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['from'] = entity.from;
  data['to'] = entity.to;
  data['prop'] = entity.prop?.toJson();
  data['string'] = entity.string;
  return data;
}

extension AnimeSearchResponseDataAiredExtension on AnimeSearchResponseDataAired {
  AnimeSearchResponseDataAired copyWith({
    String? from,
    String? to,
    AnimeSearchResponseDataAiredProp? prop,
    String? string,
  }) {
    return AnimeSearchResponseDataAired()
      ..from = from ?? this.from
      ..to = to ?? this.to
      ..prop = prop ?? this.prop
      ..string = string ?? this.string;
  }
}

AnimeSearchResponseDataAiredProp $AnimeSearchResponseDataAiredPropFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataAiredProp animeSearchResponseDataAiredProp = AnimeSearchResponseDataAiredProp();
  final AnimeSearchResponseDataAiredPropFrom? from = jsonConvert.convert<
      AnimeSearchResponseDataAiredPropFrom>(json['from']);
  if (from != null) {
    animeSearchResponseDataAiredProp.from = from;
  }
  final AnimeSearchResponseDataAiredPropTo? to = jsonConvert.convert<
      AnimeSearchResponseDataAiredPropTo>(json['to']);
  if (to != null) {
    animeSearchResponseDataAiredProp.to = to;
  }
  return animeSearchResponseDataAiredProp;
}

Map<String, dynamic> $AnimeSearchResponseDataAiredPropToJson(
    AnimeSearchResponseDataAiredProp entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['from'] = entity.from?.toJson();
  data['to'] = entity.to?.toJson();
  return data;
}

extension AnimeSearchResponseDataAiredPropExtension on AnimeSearchResponseDataAiredProp {
  AnimeSearchResponseDataAiredProp copyWith({
    AnimeSearchResponseDataAiredPropFrom? from,
    AnimeSearchResponseDataAiredPropTo? to,
  }) {
    return AnimeSearchResponseDataAiredProp()
      ..from = from ?? this.from
      ..to = to ?? this.to;
  }
}

AnimeSearchResponseDataAiredPropFrom $AnimeSearchResponseDataAiredPropFromFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataAiredPropFrom animeSearchResponseDataAiredPropFrom = AnimeSearchResponseDataAiredPropFrom();
  final int? day = jsonConvert.convert<int>(json['day']);
  if (day != null) {
    animeSearchResponseDataAiredPropFrom.day = day;
  }
  final int? month = jsonConvert.convert<int>(json['month']);
  if (month != null) {
    animeSearchResponseDataAiredPropFrom.month = month;
  }
  final int? year = jsonConvert.convert<int>(json['year']);
  if (year != null) {
    animeSearchResponseDataAiredPropFrom.year = year;
  }
  return animeSearchResponseDataAiredPropFrom;
}

Map<String, dynamic> $AnimeSearchResponseDataAiredPropFromToJson(
    AnimeSearchResponseDataAiredPropFrom entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['day'] = entity.day;
  data['month'] = entity.month;
  data['year'] = entity.year;
  return data;
}

extension AnimeSearchResponseDataAiredPropFromExtension on AnimeSearchResponseDataAiredPropFrom {
  AnimeSearchResponseDataAiredPropFrom copyWith({
    int? day,
    int? month,
    int? year,
  }) {
    return AnimeSearchResponseDataAiredPropFrom()
      ..day = day ?? this.day
      ..month = month ?? this.month
      ..year = year ?? this.year;
  }
}

AnimeSearchResponseDataAiredPropTo $AnimeSearchResponseDataAiredPropToFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataAiredPropTo animeSearchResponseDataAiredPropTo = AnimeSearchResponseDataAiredPropTo();
  final int? day = jsonConvert.convert<int>(json['day']);
  if (day != null) {
    animeSearchResponseDataAiredPropTo.day = day;
  }
  final int? month = jsonConvert.convert<int>(json['month']);
  if (month != null) {
    animeSearchResponseDataAiredPropTo.month = month;
  }
  final int? year = jsonConvert.convert<int>(json['year']);
  if (year != null) {
    animeSearchResponseDataAiredPropTo.year = year;
  }
  return animeSearchResponseDataAiredPropTo;
}

Map<String, dynamic> $AnimeSearchResponseDataAiredPropToToJson(
    AnimeSearchResponseDataAiredPropTo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['day'] = entity.day;
  data['month'] = entity.month;
  data['year'] = entity.year;
  return data;
}

extension AnimeSearchResponseDataAiredPropToExtension on AnimeSearchResponseDataAiredPropTo {
  AnimeSearchResponseDataAiredPropTo copyWith({
    int? day,
    int? month,
    int? year,
  }) {
    return AnimeSearchResponseDataAiredPropTo()
      ..day = day ?? this.day
      ..month = month ?? this.month
      ..year = year ?? this.year;
  }
}

AnimeSearchResponseDataBroadcast $AnimeSearchResponseDataBroadcastFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataBroadcast animeSearchResponseDataBroadcast = AnimeSearchResponseDataBroadcast();
  final String? day = jsonConvert.convert<String>(json['day']);
  if (day != null) {
    animeSearchResponseDataBroadcast.day = day;
  }
  final String? time = jsonConvert.convert<String>(json['time']);
  if (time != null) {
    animeSearchResponseDataBroadcast.time = time;
  }
  final String? timezone = jsonConvert.convert<String>(json['timezone']);
  if (timezone != null) {
    animeSearchResponseDataBroadcast.timezone = timezone;
  }
  final String? string = jsonConvert.convert<String>(json['string']);
  if (string != null) {
    animeSearchResponseDataBroadcast.string = string;
  }
  return animeSearchResponseDataBroadcast;
}

Map<String, dynamic> $AnimeSearchResponseDataBroadcastToJson(
    AnimeSearchResponseDataBroadcast entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['day'] = entity.day;
  data['time'] = entity.time;
  data['timezone'] = entity.timezone;
  data['string'] = entity.string;
  return data;
}

extension AnimeSearchResponseDataBroadcastExtension on AnimeSearchResponseDataBroadcast {
  AnimeSearchResponseDataBroadcast copyWith({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) {
    return AnimeSearchResponseDataBroadcast()
      ..day = day ?? this.day
      ..time = time ?? this.time
      ..timezone = timezone ?? this.timezone
      ..string = string ?? this.string;
  }
}

AnimeSearchResponseDataProducers $AnimeSearchResponseDataProducersFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataProducers animeSearchResponseDataProducers = AnimeSearchResponseDataProducers();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataProducers.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataProducers.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataProducers.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataProducers.url = url;
  }
  return animeSearchResponseDataProducers;
}

Map<String, dynamic> $AnimeSearchResponseDataProducersToJson(
    AnimeSearchResponseDataProducers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataProducersExtension on AnimeSearchResponseDataProducers {
  AnimeSearchResponseDataProducers copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataProducers()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

AnimeSearchResponseDataLicensors $AnimeSearchResponseDataLicensorsFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataLicensors animeSearchResponseDataLicensors = AnimeSearchResponseDataLicensors();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataLicensors.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataLicensors.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataLicensors.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataLicensors.url = url;
  }
  return animeSearchResponseDataLicensors;
}

Map<String, dynamic> $AnimeSearchResponseDataLicensorsToJson(
    AnimeSearchResponseDataLicensors entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataLicensorsExtension on AnimeSearchResponseDataLicensors {
  AnimeSearchResponseDataLicensors copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataLicensors()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

AnimeSearchResponseDataStudios $AnimeSearchResponseDataStudiosFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataStudios animeSearchResponseDataStudios = AnimeSearchResponseDataStudios();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataStudios.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataStudios.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataStudios.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataStudios.url = url;
  }
  return animeSearchResponseDataStudios;
}

Map<String, dynamic> $AnimeSearchResponseDataStudiosToJson(
    AnimeSearchResponseDataStudios entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataStudiosExtension on AnimeSearchResponseDataStudios {
  AnimeSearchResponseDataStudios copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataStudios()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

AnimeSearchResponseDataGenres $AnimeSearchResponseDataGenresFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataGenres animeSearchResponseDataGenres = AnimeSearchResponseDataGenres();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataGenres.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataGenres.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataGenres.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataGenres.url = url;
  }
  return animeSearchResponseDataGenres;
}

Map<String, dynamic> $AnimeSearchResponseDataGenresToJson(
    AnimeSearchResponseDataGenres entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataGenresExtension on AnimeSearchResponseDataGenres {
  AnimeSearchResponseDataGenres copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataGenres()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

AnimeSearchResponseDataThemes $AnimeSearchResponseDataThemesFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataThemes animeSearchResponseDataThemes = AnimeSearchResponseDataThemes();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataThemes.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataThemes.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataThemes.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataThemes.url = url;
  }
  return animeSearchResponseDataThemes;
}

Map<String, dynamic> $AnimeSearchResponseDataThemesToJson(
    AnimeSearchResponseDataThemes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataThemesExtension on AnimeSearchResponseDataThemes {
  AnimeSearchResponseDataThemes copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataThemes()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

AnimeSearchResponseDataDemographics $AnimeSearchResponseDataDemographicsFromJson(
    Map<String, dynamic> json) {
  final AnimeSearchResponseDataDemographics animeSearchResponseDataDemographics = AnimeSearchResponseDataDemographics();
  final int? malId = jsonConvert.convert<int>(json['mal_id']);
  if (malId != null) {
    animeSearchResponseDataDemographics.malId = malId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    animeSearchResponseDataDemographics.type = type;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    animeSearchResponseDataDemographics.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    animeSearchResponseDataDemographics.url = url;
  }
  return animeSearchResponseDataDemographics;
}

Map<String, dynamic> $AnimeSearchResponseDataDemographicsToJson(
    AnimeSearchResponseDataDemographics entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['mal_id'] = entity.malId;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension AnimeSearchResponseDataDemographicsExtension on AnimeSearchResponseDataDemographics {
  AnimeSearchResponseDataDemographics copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return AnimeSearchResponseDataDemographics()
      ..malId = malId ?? this.malId
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}