class HighlightModel {
  HighlightModel({
      this.data,});

  HighlightModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.count, 
      this.cursor, 
      this.hasFetchedAllRemainingHighlights, 
      this.highlightsTrayType, 
      this.items, 
      this.lastPaginatedHighlightsNodeEditedAtTs, 
      this.myWeekEnabled, 
      this.suggestedHighlights,});

  Data.fromJson(dynamic json) {
    count = json['count'];
    cursor = json['cursor'];
    hasFetchedAllRemainingHighlights = json['has_fetched_all_remaining_highlights'];
    highlightsTrayType = json['highlights_tray_type'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    lastPaginatedHighlightsNodeEditedAtTs = json['last_paginated_highlights_node_edited_at_ts'];
    myWeekEnabled = json['my_week_enabled'];
    if (json['suggested_highlights'] != null) {
      suggestedHighlights = [];
      json['suggested_highlights'].forEach((v) {
        suggestedHighlights?.add(v.fromJson(v));
      });
    }
  }
  int? count;
  dynamic cursor;
  dynamic hasFetchedAllRemainingHighlights;
  String? highlightsTrayType;
  List<Items>? items;
  dynamic lastPaginatedHighlightsNodeEditedAtTs;
  dynamic myWeekEnabled;
  List<dynamic>? suggestedHighlights;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['cursor'] = cursor;
    map['has_fetched_all_remaining_highlights'] = hasFetchedAllRemainingHighlights;
    map['highlights_tray_type'] = highlightsTrayType;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['last_paginated_highlights_node_edited_at_ts'] = lastPaginatedHighlightsNodeEditedAtTs;
    map['my_week_enabled'] = myWeekEnabled;
    if (suggestedHighlights != null) {
      map['suggested_highlights'] = suggestedHighlights?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.adExpiryTimestampInMillis, 
      this.appStickerInfo, 
      this.canGifQuickReply, 
      this.canReactWithAvatar, 
      this.canReply, 
      this.canReshare, 
      this.coverMedia, 
      this.createdAt, 
      this.disabledReplyTypes, 
      this.highlightReelType, 
      this.id, 
      this.isAddedToMainGrid, 
      this.isConvertedToClips, 
      this.isCtaStickerAvailable, 
      this.isPinnedHighlight, 
      this.latestReelMedia, 
      this.mediaCount, 
      this.poolRefreshTtlInSec, 
      this.prefetchCount, 
      this.rankedPosition, 
      this.reelType, 
      this.seenRankedPosition, 
      this.shouldTreatLinkStickerAsCta, 
      this.title, 
      this.user,});

  Items.fromJson(dynamic json) {
    adExpiryTimestampInMillis = json['ad_expiry_timestamp_in_millis'];
    appStickerInfo = json['app_sticker_info'];
    canGifQuickReply = json['can_gif_quick_reply'];
    canReactWithAvatar = json['can_react_with_avatar'];
    canReply = json['can_reply'];
    canReshare = json['can_reshare'];
    coverMedia = json['cover_media'] != null ? CoverMedia.fromJson(json['cover_media']) : null;
    createdAt = json['created_at'];
    disabledReplyTypes = json['disabled_reply_types'] != null ? json['disabled_reply_types'].cast<String>() : [];
    highlightReelType = json['highlight_reel_type'];
    id = json['id'];
    isAddedToMainGrid = json['is_added_to_main_grid'];
    isConvertedToClips = json['is_converted_to_clips'];
    isCtaStickerAvailable = json['is_cta_sticker_available'];
    isPinnedHighlight = json['is_pinned_highlight'];
    latestReelMedia = json['latest_reel_media'];
    mediaCount = json['media_count'];
    poolRefreshTtlInSec = json['pool_refresh_ttl_in_sec'];
    prefetchCount = json['prefetch_count'];
    rankedPosition = json['ranked_position'];
    reelType = json['reel_type'];
    seenRankedPosition = json['seen_ranked_position'];
    shouldTreatLinkStickerAsCta = json['should_treat_link_sticker_as_cta'];
    title = json['title'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  dynamic adExpiryTimestampInMillis;
  dynamic appStickerInfo;
  bool? canGifQuickReply;
  bool? canReactWithAvatar;
  bool? canReply;
  dynamic canReshare;
  CoverMedia? coverMedia;
  int? createdAt;
  List<String>? disabledReplyTypes;
  String? highlightReelType;
  String? id;
  bool? isAddedToMainGrid;
  bool? isConvertedToClips;
  dynamic isCtaStickerAvailable;
  bool? isPinnedHighlight;
  int? latestReelMedia;
  int? mediaCount;
  dynamic poolRefreshTtlInSec;
  int? prefetchCount;
  int? rankedPosition;
  String? reelType;
  int? seenRankedPosition;
  dynamic shouldTreatLinkStickerAsCta;
  String? title;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ad_expiry_timestamp_in_millis'] = adExpiryTimestampInMillis;
    map['app_sticker_info'] = appStickerInfo;
    map['can_gif_quick_reply'] = canGifQuickReply;
    map['can_react_with_avatar'] = canReactWithAvatar;
    map['can_reply'] = canReply;
    map['can_reshare'] = canReshare;
    if (coverMedia != null) {
      map['cover_media'] = coverMedia?.toJson();
    }
    map['created_at'] = createdAt;
    map['disabled_reply_types'] = disabledReplyTypes;
    map['highlight_reel_type'] = highlightReelType;
    map['id'] = id;
    map['is_added_to_main_grid'] = isAddedToMainGrid;
    map['is_converted_to_clips'] = isConvertedToClips;
    map['is_cta_sticker_available'] = isCtaStickerAvailable;
    map['is_pinned_highlight'] = isPinnedHighlight;
    map['latest_reel_media'] = latestReelMedia;
    map['media_count'] = mediaCount;
    map['pool_refresh_ttl_in_sec'] = poolRefreshTtlInSec;
    map['prefetch_count'] = prefetchCount;
    map['ranked_position'] = rankedPosition;
    map['reel_type'] = reelType;
    map['seen_ranked_position'] = seenRankedPosition;
    map['should_treat_link_sticker_as_cta'] = shouldTreatLinkStickerAsCta;
    map['title'] = title;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.fullName, 
      this.id, 
      this.isPrivate, 
      this.isVerified, 
      this.profilePicId, 
      this.profilePicUrl, 
      this.username,});

  User.fromJson(dynamic json) {
    fullName = json['full_name'];
    id = json['id'];
    isPrivate = json['is_private'];
    isVerified = json['is_verified'];
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
    username = json['username'];
  }
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['full_name'] = fullName;
    map['id'] = id;
    map['is_private'] = isPrivate;
    map['is_verified'] = isVerified;
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    map['username'] = username;
    return map;
  }

}

class CoverMedia {
  CoverMedia({
      this.cropRect, 
      this.croppedImageVersion, 
      this.fullImageVersion, 
      this.id, 
      this.uploadId,});

  CoverMedia.fromJson(dynamic json) {
    cropRect = json['crop_rect'] != null ? json['crop_rect'].cast<int>() : [];
    croppedImageVersion = json['cropped_image_version'] != null ? CroppedImageVersion.fromJson(json['cropped_image_version']) : null;
    fullImageVersion = json['full_image_version'];
    id = json['id'];
    uploadId = json['upload_id'];
  }
  List<int>? cropRect;
  CroppedImageVersion? croppedImageVersion;
  dynamic fullImageVersion;
  String? id;
  dynamic uploadId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['crop_rect'] = cropRect;
    if (croppedImageVersion != null) {
      map['cropped_image_version'] = croppedImageVersion?.toJson();
    }
    map['full_image_version'] = fullImageVersion;
    map['id'] = id;
    map['upload_id'] = uploadId;
    return map;
  }

}

class CroppedImageVersion {
  CroppedImageVersion({
      this.height, 
      this.url, 
      this.width,});

  CroppedImageVersion.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}