import 'package:untitled12/generated/json/base/json_field.dart';
import 'package:untitled12/generated/json/anime_search_response_entity.g.dart';
import 'dart:convert';
export 'package:untitled12/generated/json/anime_search_response_entity.g.dart';

@JsonSerializable()
class AnimeSearchResponseEntity {
	AnimeSearchResponsePagination? pagination;
	List<AnimeSearchResponseData>? data = [];

	AnimeSearchResponseEntity();

	factory AnimeSearchResponseEntity.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponsePagination {
	@JSONField(name: "last_visible_page")
	int? lastVisiblePage = 0;
	@JSONField(name: "has_next_page")
	bool? hasNextPage = false;
	@JSONField(name: "current_page")
	int? currentPage = 0;
	AnimeSearchResponsePaginationItems? items;

	AnimeSearchResponsePagination();

	factory AnimeSearchResponsePagination.fromJson(Map<String, dynamic> json) => $AnimeSearchResponsePaginationFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponsePaginationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponsePaginationItems {
	int? count = 0;
	int? total = 0;
	@JSONField(name: "per_page")
	int? perPage = 0;

	AnimeSearchResponsePaginationItems();

	factory AnimeSearchResponsePaginationItems.fromJson(Map<String, dynamic> json) => $AnimeSearchResponsePaginationItemsFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponsePaginationItemsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseData {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? url = '';
	AnimeSearchResponseDataImages? images;
	AnimeSearchResponseDataTrailer? trailer;
	bool? approved = false;
	List<AnimeSearchResponseDataTitles>? titles = [];
	String? title = '';
	@JSONField(name: "title_english")
	String? titleEnglish = '';
	@JSONField(name: "title_japanese")
	String? titleJapanese = '';
	@JSONField(name: "title_synonyms")
	List<String>? titleSynonyms = [];
	String? type = '';
	String? source = '';
	int? episodes = 0;
	String? status = '';
	bool? airing = false;
	AnimeSearchResponseDataAired? aired;
	String? duration = '';
	String? rating = '';
	double? score;
	@JSONField(name: "scored_by")
	int? scoredBy = 0;
	int? rank = 0;
	int? popularity = 0;
	int? members = 0;
	int? favorites = 0;
	String? synopsis = '';
	String? background = '';
	String? season = '';
	int? year = 0;
	AnimeSearchResponseDataBroadcast? broadcast;
	List<AnimeSearchResponseDataProducers>? producers = [];
	List<AnimeSearchResponseDataLicensors>? licensors = [];
	List<AnimeSearchResponseDataStudios>? studios = [];
	List<AnimeSearchResponseDataGenres>? genres = [];
	@JSONField(name: "explicit_genres")
	List<dynamic>? explicitGenres = [];
	List<AnimeSearchResponseDataThemes>? themes = [];
	List<AnimeSearchResponseDataDemographics>? demographics = [];

	AnimeSearchResponseData();

	factory AnimeSearchResponseData.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataImages {
	AnimeSearchResponseDataImagesJpg? jpg;
	AnimeSearchResponseDataImagesWebp? webp;

	AnimeSearchResponseDataImages();

	factory AnimeSearchResponseDataImages.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataImagesFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataImagesJpg {
	@JSONField(name: "image_url")
	String? imageUrl = '';
	@JSONField(name: "small_image_url")
	String? smallImageUrl = '';
	@JSONField(name: "large_image_url")
	String? largeImageUrl = '';

	AnimeSearchResponseDataImagesJpg();

	factory AnimeSearchResponseDataImagesJpg.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataImagesJpgFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataImagesJpgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataImagesWebp {
	@JSONField(name: "image_url")
	String? imageUrl = '';
	@JSONField(name: "small_image_url")
	String? smallImageUrl = '';
	@JSONField(name: "large_image_url")
	String? largeImageUrl = '';

	AnimeSearchResponseDataImagesWebp();

	factory AnimeSearchResponseDataImagesWebp.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataImagesWebpFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataImagesWebpToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataTrailer {
	@JSONField(name: "youtube_id")
	String? youtubeId = '';
	String? url = '';
	@JSONField(name: "embed_url")
	String? embedUrl = '';
	AnimeSearchResponseDataTrailerImages? images;

	AnimeSearchResponseDataTrailer();

	factory AnimeSearchResponseDataTrailer.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataTrailerFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataTrailerToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataTrailerImages {
	@JSONField(name: "image_url")
	String? imageUrl = '';
	@JSONField(name: "small_image_url")
	String? smallImageUrl = '';
	@JSONField(name: "medium_image_url")
	String? mediumImageUrl = '';
	@JSONField(name: "large_image_url")
	String? largeImageUrl = '';
	@JSONField(name: "maximum_image_url")
	String? maximumImageUrl = '';

	AnimeSearchResponseDataTrailerImages();

	factory AnimeSearchResponseDataTrailerImages.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataTrailerImagesFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataTrailerImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataTitles {
	String? type = '';
	String? title = '';

	AnimeSearchResponseDataTitles();

	factory AnimeSearchResponseDataTitles.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataTitlesFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataTitlesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataAired {
	String? from = '';
	String? to = '';
	AnimeSearchResponseDataAiredProp? prop;
	String? string = '';

	AnimeSearchResponseDataAired();

	factory AnimeSearchResponseDataAired.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataAiredFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataAiredToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataAiredProp {
	AnimeSearchResponseDataAiredPropFrom? from;
	AnimeSearchResponseDataAiredPropTo? to;

	AnimeSearchResponseDataAiredProp();

	factory AnimeSearchResponseDataAiredProp.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataAiredPropFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataAiredPropToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataAiredPropFrom {
	int? day = 0;
	int? month = 0;
	int? year = 0;

	AnimeSearchResponseDataAiredPropFrom();

	factory AnimeSearchResponseDataAiredPropFrom.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataAiredPropFromFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataAiredPropFromToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataAiredPropTo {
	int? day = 0;
	int? month = 0;
	int? year = 0;

	AnimeSearchResponseDataAiredPropTo();

	factory AnimeSearchResponseDataAiredPropTo.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataAiredPropToFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataAiredPropToToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataBroadcast {
	String? day = '';
	String? time = '';
	String? timezone = '';
	String? string = '';

	AnimeSearchResponseDataBroadcast();

	factory AnimeSearchResponseDataBroadcast.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataBroadcastFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataBroadcastToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataProducers {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataProducers();

	factory AnimeSearchResponseDataProducers.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataProducersFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataProducersToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataLicensors {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataLicensors();

	factory AnimeSearchResponseDataLicensors.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataLicensorsFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataLicensorsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataStudios {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataStudios();

	factory AnimeSearchResponseDataStudios.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataStudiosFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataStudiosToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataGenres {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataGenres();

	factory AnimeSearchResponseDataGenres.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataGenresFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataGenresToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataThemes {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataThemes();

	factory AnimeSearchResponseDataThemes.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataThemesFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataThemesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AnimeSearchResponseDataDemographics {
	@JSONField(name: "mal_id")
	int? malId = 0;
	String? type = '';
	String? name = '';
	String? url = '';

	AnimeSearchResponseDataDemographics();

	factory AnimeSearchResponseDataDemographics.fromJson(Map<String, dynamic> json) => $AnimeSearchResponseDataDemographicsFromJson(json);

	Map<String, dynamic> toJson() => $AnimeSearchResponseDataDemographicsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}