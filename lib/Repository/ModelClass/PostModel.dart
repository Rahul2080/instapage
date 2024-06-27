
class PostModel {
  Data? data;
  String? paginationToken;

  PostModel({this.data, this.paginationToken});

  PostModel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
    if(json["pagination_token"] is String) {
      paginationToken = json["pagination_token"];
    }
  }

  static List<PostModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => PostModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    _data["pagination_token"] = paginationToken;
    return _data;
  }

  PostModel copyWith({
    Data? data,
    String? paginationToken,
  }) => PostModel(
    data: data ?? this.data,
    paginationToken: paginationToken ?? this.paginationToken,
  );
}

class Data {
  int? count;
  List<Items>? items;
  dynamic profileGridItems;
  dynamic profileGridItemsCursor;
  User2? user;

  Data({this.count, this.items, this.profileGridItems, this.profileGridItemsCursor, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["count"] is num) {
      count = (json["count"] as num).toInt();
    }
    if(json["items"] is List) {
      items = json["items"] == null ? null : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    }
    profileGridItems = json["profile_grid_items"];
    profileGridItemsCursor = json["profile_grid_items_cursor"];
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User2.fromJson(json["user"]);
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    _data["profile_grid_items"] = profileGridItems;
    _data["profile_grid_items_cursor"] = profileGridItemsCursor;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }

  Data copyWith({
    int? count,
    List<Items>? items,
    dynamic profileGridItems,
    dynamic profileGridItemsCursor,
    User2? user,
  }) => Data(
    count: count ?? this.count,
    items: items ?? this.items,
    profileGridItems: profileGridItems ?? this.profileGridItems,
    profileGridItemsCursor: profileGridItemsCursor ?? this.profileGridItemsCursor,
    user: user ?? this.user,
  );
}

class User2 {
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  String? username;

  User2({this.fullName, this.id, this.isPrivate, this.isVerified, this.profilePicId, this.profilePicUrl, this.username});

  User2.fromJson(Map<String, dynamic> json) {
    if(json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if(json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if(json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if(json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<User2> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => User2.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["full_name"] = fullName;
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["username"] = username;
    return _data;
  }

  User2 copyWith({
    String? fullName,
    String? id,
    bool? isPrivate,
    bool? isVerified,
    String? profilePicId,
    String? profilePicUrl,
    String? username,
  }) => User2(
    fullName: fullName ?? this.fullName,
    id: id ?? this.id,
    isPrivate: isPrivate ?? this.isPrivate,
    isVerified: isVerified ?? this.isVerified,
    profilePicId: profilePicId ?? this.profilePicId,
    profilePicUrl: profilePicUrl ?? this.profilePicUrl,
    username: username ?? this.username,
  );
}

class Items {
  dynamic boostUnavailableIdentifier;
  dynamic boostUnavailableReason;
  bool? canReshare;
  bool? canSave;
  Caption? caption;
  bool? captionIsEdited;
  List<dynamic>? clipsTabPinnedUserIds;
  List<dynamic>? coauthorProducers;
  String? code;
  int? commentCount;
  CommentInformTreatment? commentInformTreatment;
  bool? commentThreadingEnabled;
  String? commercialityStatus;
  int? deletedReason;
  int? deviceTimestamp;
  int? fbAggregatedCommentCount;
  int? fbAggregatedLikeCount;
  String? fbid;
  List<dynamic>? featuredProducts;
  int? filterType;
  FundraiserTag? fundraiserTag;
  bool? hasLiked;
  bool? hasMoreComments;
  bool? hasPrivatelyLiked;
  int? hasSharedToFb;
  String? id;
  bool? igMediaSharingDisabled;
  ImageVersions? imageVersions;
  String? inlineComposerDisplayCondition;
  int? inlineComposerImpTriggerTime;
  String? integrityReviewDecision;
  List<dynamic>? invitedCoauthorProducers;
  bool? isAutoCreated;
  bool? isCommentsGifComposerEnabled;
  bool? isCutoutStickerAllowed;
  bool? isEligibleForMediaNoteRecsNux;
  bool? isInProfileGrid;
  bool? isOpenToPublicSubmission;
  bool? isOrganicProductTaggingEligible;
  bool? isPaidPartnership;
  bool? isPinned;
  bool? isPostLiveClipsMedia;
  bool? isQuietPost;
  bool? isReshareOfTextPostAppMediaInIg;
  bool? isReuseAllowed;
  bool? isTaggedMediaSharedToViewerProfileGrid;
  bool? isUnifiedVideo;
  bool? isVideo;
  bool? likeAndViewCountsDisabled;
  int? likeCount;
  dynamic location;
  MashupInfo? mashupInfo;
  int? maxNumVisiblePreviewComments;
  String? mediaName;
  int? mediaType;
  String? mezqlToken;
  MusicMetadata? musicMetadata;
  int? originalHeight;
  int? originalWidth;
  Owner? owner;
  List<dynamic>? previewComments;
  List<dynamic>? productSuggestions;
  String? productType;
  bool? shareCountDisabled;
  SharingFrictionInfo? sharingFrictionInfo;
  dynamic shopRoutingUserId;
  bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  List<dynamic>? socialContext;
  List<dynamic>? sponsorTags;
  bool? subscribeCtaVisible;
  List<dynamic>? taggedUsers;
  int? takenAt;
  int? takenAtTs;
  String? thumbnailUrl;
  List<dynamic>? topLikers;
  User1? user;

  Items({this.boostUnavailableIdentifier, this.boostUnavailableReason, this.canReshare, this.canSave, this.caption, this.captionIsEdited, this.clipsTabPinnedUserIds, this.coauthorProducers, this.code, this.commentCount, this.commentInformTreatment, this.commentThreadingEnabled, this.commercialityStatus, this.deletedReason, this.deviceTimestamp, this.fbAggregatedCommentCount, this.fbAggregatedLikeCount,this.fbid, this.featuredProducts, this.filterType, this.fundraiserTag, this.hasLiked, this.hasMoreComments, this.hasPrivatelyLiked, this.hasSharedToFb, this.id, this.igMediaSharingDisabled, this.imageVersions, this.inlineComposerDisplayCondition, this.inlineComposerImpTriggerTime, this.integrityReviewDecision, this.invitedCoauthorProducers, this.isAutoCreated, this.isCommentsGifComposerEnabled, this.isCutoutStickerAllowed, this.isEligibleForMediaNoteRecsNux, this.isInProfileGrid, this.isOpenToPublicSubmission, this.isOrganicProductTaggingEligible, this.isPaidPartnership, this.isPinned, this.isPostLiveClipsMedia, this.isQuietPost, this.isReshareOfTextPostAppMediaInIg, this.isReuseAllowed, this.isTaggedMediaSharedToViewerProfileGrid, this.isUnifiedVideo, this.isVideo, this.likeAndViewCountsDisabled, this.likeCount, this.location, this.mashupInfo, this.maxNumVisiblePreviewComments, this.mediaName, this.mediaType, this.mezqlToken, this.musicMetadata, this.originalHeight, this.originalWidth, this.owner, this.previewComments, this.productSuggestions, this.productType, this.shareCountDisabled, this.sharingFrictionInfo, this.shopRoutingUserId, this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid, this.socialContext, this.sponsorTags, this.subscribeCtaVisible, this.taggedUsers, this.takenAt, this.takenAtTs, this.thumbnailUrl, this.topLikers, this.user});

  Items.fromJson(Map<String, dynamic> json) {
    boostUnavailableIdentifier = json["boost_unavailable_identifier"];
    boostUnavailableReason = json["boost_unavailable_reason"];
    if(json["can_reshare"] is bool) {
      canReshare = json["can_reshare"];
    }
    if(json["can_save"] is bool) {
      canSave = json["can_save"];
    }
    if(json["caption"] is Map) {
      caption = json["caption"] == null ? null : Caption.fromJson(json["caption"]);
    }
    if(json["caption_is_edited"] is bool) {
      captionIsEdited = json["caption_is_edited"];
    }
    if(json["clips_tab_pinned_user_ids"] is List) {
      clipsTabPinnedUserIds = json["clips_tab_pinned_user_ids"] ?? [];
    }
    if(json["coauthor_producers"] is List) {
      coauthorProducers = json["coauthor_producers"] ?? [];
    }
    if(json["code"] is String) {
      code = json["code"];
    }
    if(json["comment_count"] is num) {
      commentCount = (json["comment_count"] as num).toInt();
    }
    if(json["comment_inform_treatment"] is Map) {
      commentInformTreatment = json["comment_inform_treatment"] == null ? null : CommentInformTreatment.fromJson(json["comment_inform_treatment"]);
    }
    if(json["comment_threading_enabled"] is bool) {
      commentThreadingEnabled = json["comment_threading_enabled"];
    }
    if(json["commerciality_status"] is String) {
      commercialityStatus = json["commerciality_status"];
    }
    if(json["deleted_reason"] is num) {
      deletedReason = (json["deleted_reason"] as num).toInt();
    }
    if(json["device_timestamp"] is num) {
      deviceTimestamp = (json["device_timestamp"] as num).toInt();
    }
    if(json["fb_aggregated_comment_count"] is num) {
      fbAggregatedCommentCount = (json["fb_aggregated_comment_count"] as num).toInt();
    }
    if(json["fb_aggregated_like_count"] is num) {
      fbAggregatedLikeCount = (json["fb_aggregated_like_count"] as num).toInt();
    }

    if(json["fbid"] is String) {
      fbid = json["fbid"];
    }
    if(json["featured_products"] is List) {
      featuredProducts = json["featured_products"] ?? [];
    }
    if(json["filter_type"] is num) {
      filterType = (json["filter_type"] as num).toInt();
    }
    if(json["fundraiser_tag"] is Map) {
      fundraiserTag = json["fundraiser_tag"] == null ? null : FundraiserTag.fromJson(json["fundraiser_tag"]);
    }
    if(json["has_liked"] is bool) {
      hasLiked = json["has_liked"];
    }
    if(json["has_more_comments"] is bool) {
      hasMoreComments = json["has_more_comments"];
    }
    if(json["has_privately_liked"] is bool) {
      hasPrivatelyLiked = json["has_privately_liked"];
    }
    if(json["has_shared_to_fb"] is num) {
      hasSharedToFb = (json["has_shared_to_fb"] as num).toInt();
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["ig_media_sharing_disabled"] is bool) {
      igMediaSharingDisabled = json["ig_media_sharing_disabled"];
    }
    if(json["image_versions"] is Map) {
      imageVersions = json["image_versions"] == null ? null : ImageVersions.fromJson(json["image_versions"]);
    }
    if(json["inline_composer_display_condition"] is String) {
      inlineComposerDisplayCondition = json["inline_composer_display_condition"];
    }
    if(json["inline_composer_imp_trigger_time"] is num) {
      inlineComposerImpTriggerTime = (json["inline_composer_imp_trigger_time"] as num).toInt();
    }
    if(json["integrity_review_decision"] is String) {
      integrityReviewDecision = json["integrity_review_decision"];
    }
    if(json["invited_coauthor_producers"] is List) {
      invitedCoauthorProducers = json["invited_coauthor_producers"] ?? [];
    }
    if(json["is_auto_created"] is bool) {
      isAutoCreated = json["is_auto_created"];
    }
    if(json["is_comments_gif_composer_enabled"] is bool) {
      isCommentsGifComposerEnabled = json["is_comments_gif_composer_enabled"];
    }
    if(json["is_cutout_sticker_allowed"] is bool) {
      isCutoutStickerAllowed = json["is_cutout_sticker_allowed"];
    }
    if(json["is_eligible_for_media_note_recs_nux"] is bool) {
      isEligibleForMediaNoteRecsNux = json["is_eligible_for_media_note_recs_nux"];
    }
    if(json["is_in_profile_grid"] is bool) {
      isInProfileGrid = json["is_in_profile_grid"];
    }
    if(json["is_open_to_public_submission"] is bool) {
      isOpenToPublicSubmission = json["is_open_to_public_submission"];
    }
    if(json["is_organic_product_tagging_eligible"] is bool) {
      isOrganicProductTaggingEligible = json["is_organic_product_tagging_eligible"];
    }
    if(json["is_paid_partnership"] is bool) {
      isPaidPartnership = json["is_paid_partnership"];
    }
    if(json["is_pinned"] is bool) {
      isPinned = json["is_pinned"];
    }
    if(json["is_post_live_clips_media"] is bool) {
      isPostLiveClipsMedia = json["is_post_live_clips_media"];
    }
    if(json["is_quiet_post"] is bool) {
      isQuietPost = json["is_quiet_post"];
    }
    if(json["is_reshare_of_text_post_app_media_in_ig"] is bool) {
      isReshareOfTextPostAppMediaInIg = json["is_reshare_of_text_post_app_media_in_ig"];
    }
    if(json["is_reuse_allowed"] is bool) {
      isReuseAllowed = json["is_reuse_allowed"];
    }
    if(json["is_tagged_media_shared_to_viewer_profile_grid"] is bool) {
      isTaggedMediaSharedToViewerProfileGrid = json["is_tagged_media_shared_to_viewer_profile_grid"];
    }
    if(json["is_unified_video"] is bool) {
      isUnifiedVideo = json["is_unified_video"];
    }
    if(json["is_video"] is bool) {
      isVideo = json["is_video"];
    }
    if(json["like_and_view_counts_disabled"] is bool) {
      likeAndViewCountsDisabled = json["like_and_view_counts_disabled"];
    }
    if(json["like_count"] is num) {
      likeCount = (json["like_count"] as num).toInt();
    }
    location = json["location"];
    if(json["mashup_info"] is Map) {
      mashupInfo = json["mashup_info"] == null ? null : MashupInfo.fromJson(json["mashup_info"]);
    }
    if(json["max_num_visible_preview_comments"] is num) {
      maxNumVisiblePreviewComments = (json["max_num_visible_preview_comments"] as num).toInt();
    }
    if(json["media_name"] is String) {
      mediaName = json["media_name"];
    }
    if(json["media_type"] is num) {
      mediaType = (json["media_type"] as num).toInt();
    }
    if(json["mezql_token"] is String) {
      mezqlToken = json["mezql_token"];
    }
    if(json["music_metadata"] is Map) {
      musicMetadata = json["music_metadata"] == null ? null : MusicMetadata.fromJson(json["music_metadata"]);
    }
    if(json["original_height"] is num) {
      originalHeight = (json["original_height"] as num).toInt();
    }
    if(json["original_width"] is num) {
      originalWidth = (json["original_width"] as num).toInt();
    }
    if(json["owner"] is Map) {
      owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
    }
    if(json["preview_comments"] is List) {
      previewComments = json["preview_comments"] ?? [];
    }
    if(json["product_suggestions"] is List) {
      productSuggestions = json["product_suggestions"] ?? [];
    }
    if(json["product_type"] is String) {
      productType = json["product_type"];
    }
    if(json["share_count_disabled"] is bool) {
      shareCountDisabled = json["share_count_disabled"];
    }
    if(json["sharing_friction_info"] is Map) {
      sharingFrictionInfo = json["sharing_friction_info"] == null ? null : SharingFrictionInfo.fromJson(json["sharing_friction_info"]);
    }
    shopRoutingUserId = json["shop_routing_user_id"];
    if(json["should_show_author_pog_for_tagged_media_shared_to_profile_grid"] is bool) {
      shouldShowAuthorPogForTaggedMediaSharedToProfileGrid = json["should_show_author_pog_for_tagged_media_shared_to_profile_grid"];
    }
    if(json["social_context"] is List) {
      socialContext = json["social_context"] ?? [];
    }
    if(json["sponsor_tags"] is List) {
      sponsorTags = json["sponsor_tags"] ?? [];
    }
    if(json["subscribe_cta_visible"] is bool) {
      subscribeCtaVisible = json["subscribe_cta_visible"];
    }
    if(json["tagged_users"] is List) {
      taggedUsers = json["tagged_users"] ?? [];
    }
    if(json["taken_at"] is num) {
      takenAt = (json["taken_at"] as num).toInt();
    }
    if(json["taken_at_ts"] is num) {
      takenAtTs = (json["taken_at_ts"] as num).toInt();
    }
    if(json["thumbnail_url"] is String) {
      thumbnailUrl = json["thumbnail_url"];
    }
    if(json["top_likers"] is List) {
      topLikers = json["top_likers"] ?? [];
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User1.fromJson(json["user"]);
    }
  }

  static List<Items> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Items.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["boost_unavailable_identifier"] = boostUnavailableIdentifier;
    _data["boost_unavailable_reason"] = boostUnavailableReason;
    _data["can_reshare"] = canReshare;
    _data["can_save"] = canSave;
    if(caption != null) {
      _data["caption"] = caption?.toJson();
    }
    _data["caption_is_edited"] = captionIsEdited;
    if(clipsTabPinnedUserIds != null) {
      _data["clips_tab_pinned_user_ids"] = clipsTabPinnedUserIds;
    }
    if(coauthorProducers != null) {
      _data["coauthor_producers"] = coauthorProducers;
    }
    _data["code"] = code;
    _data["comment_count"] = commentCount;
    if(commentInformTreatment != null) {
      _data["comment_inform_treatment"] = commentInformTreatment?.toJson();
    }
    _data["comment_threading_enabled"] = commentThreadingEnabled;
    _data["commerciality_status"] = commercialityStatus;
    _data["deleted_reason"] = deletedReason;
    _data["device_timestamp"] = deviceTimestamp;
    _data["fb_aggregated_comment_count"] = fbAggregatedCommentCount;
    _data["fb_aggregated_like_count"] = fbAggregatedLikeCount;

    _data["fbid"] = fbid;
    if(featuredProducts != null) {
      _data["featured_products"] = featuredProducts;
    }
    _data["filter_type"] = filterType;
    if(fundraiserTag != null) {
      _data["fundraiser_tag"] = fundraiserTag?.toJson();
    }
    _data["has_liked"] = hasLiked;
    _data["has_more_comments"] = hasMoreComments;
    _data["has_privately_liked"] = hasPrivatelyLiked;
    _data["has_shared_to_fb"] = hasSharedToFb;
    _data["id"] = id;
    _data["ig_media_sharing_disabled"] = igMediaSharingDisabled;
    if(imageVersions != null) {
      _data["image_versions"] = imageVersions?.toJson();
    }
    _data["inline_composer_display_condition"] = inlineComposerDisplayCondition;
    _data["inline_composer_imp_trigger_time"] = inlineComposerImpTriggerTime;
    _data["integrity_review_decision"] = integrityReviewDecision;
    if(invitedCoauthorProducers != null) {
      _data["invited_coauthor_producers"] = invitedCoauthorProducers;
    }
    _data["is_auto_created"] = isAutoCreated;
    _data["is_comments_gif_composer_enabled"] = isCommentsGifComposerEnabled;
    _data["is_cutout_sticker_allowed"] = isCutoutStickerAllowed;
    _data["is_eligible_for_media_note_recs_nux"] = isEligibleForMediaNoteRecsNux;
    _data["is_in_profile_grid"] = isInProfileGrid;
    _data["is_open_to_public_submission"] = isOpenToPublicSubmission;
    _data["is_organic_product_tagging_eligible"] = isOrganicProductTaggingEligible;
    _data["is_paid_partnership"] = isPaidPartnership;
    _data["is_pinned"] = isPinned;
    _data["is_post_live_clips_media"] = isPostLiveClipsMedia;
    _data["is_quiet_post"] = isQuietPost;
    _data["is_reshare_of_text_post_app_media_in_ig"] = isReshareOfTextPostAppMediaInIg;
    _data["is_reuse_allowed"] = isReuseAllowed;
    _data["is_tagged_media_shared_to_viewer_profile_grid"] = isTaggedMediaSharedToViewerProfileGrid;
    _data["is_unified_video"] = isUnifiedVideo;
    _data["is_video"] = isVideo;
    _data["like_and_view_counts_disabled"] = likeAndViewCountsDisabled;
    _data["like_count"] = likeCount;
    _data["location"] = location;
    if(mashupInfo != null) {
      _data["mashup_info"] = mashupInfo?.toJson();
    }
    _data["max_num_visible_preview_comments"] = maxNumVisiblePreviewComments;
    _data["media_name"] = mediaName;
    _data["media_type"] = mediaType;
    _data["mezql_token"] = mezqlToken;
    if(musicMetadata != null) {
      _data["music_metadata"] = musicMetadata?.toJson();
    }
    _data["original_height"] = originalHeight;
    _data["original_width"] = originalWidth;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    if(previewComments != null) {
      _data["preview_comments"] = previewComments;
    }
    if(productSuggestions != null) {
      _data["product_suggestions"] = productSuggestions;
    }
    _data["product_type"] = productType;
    _data["share_count_disabled"] = shareCountDisabled;
    if(sharingFrictionInfo != null) {
      _data["sharing_friction_info"] = sharingFrictionInfo?.toJson();
    }
    _data["shop_routing_user_id"] = shopRoutingUserId;
    _data["should_show_author_pog_for_tagged_media_shared_to_profile_grid"] = shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    if(socialContext != null) {
      _data["social_context"] = socialContext;
    }
    if(sponsorTags != null) {
      _data["sponsor_tags"] = sponsorTags;
    }
    _data["subscribe_cta_visible"] = subscribeCtaVisible;
    if(taggedUsers != null) {
      _data["tagged_users"] = taggedUsers;
    }
    _data["taken_at"] = takenAt;
    _data["taken_at_ts"] = takenAtTs;
    _data["thumbnail_url"] = thumbnailUrl;
    if(topLikers != null) {
      _data["top_likers"] = topLikers;
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }

  Items copyWith({
    dynamic boostUnavailableIdentifier,
    dynamic boostUnavailableReason,
    bool? canReshare,
    bool? canSave,
    Caption? caption,
    bool? captionIsEdited,
    List<dynamic>? clipsTabPinnedUserIds,
    List<dynamic>? coauthorProducers,
    String? code,
    int? commentCount,
    CommentInformTreatment? commentInformTreatment,
    bool? commentThreadingEnabled,
    String? commercialityStatus,
    int? deletedReason,
    int? deviceTimestamp,
    int? fbAggregatedCommentCount,
    int? fbAggregatedLikeCount,

    String? fbid,
    List<dynamic>? featuredProducts,
    int? filterType,
    FundraiserTag? fundraiserTag,
    bool? hasLiked,
    bool? hasMoreComments,
    bool? hasPrivatelyLiked,
    int? hasSharedToFb,
    String? id,
    bool? igMediaSharingDisabled,
    ImageVersions? imageVersions,
    String? inlineComposerDisplayCondition,
    int? inlineComposerImpTriggerTime,
    String? integrityReviewDecision,
    List<dynamic>? invitedCoauthorProducers,
    bool? isAutoCreated,
    bool? isCommentsGifComposerEnabled,
    bool? isCutoutStickerAllowed,
    bool? isEligibleForMediaNoteRecsNux,
    bool? isInProfileGrid,
    bool? isOpenToPublicSubmission,
    bool? isOrganicProductTaggingEligible,
    bool? isPaidPartnership,
    bool? isPinned,
    bool? isPostLiveClipsMedia,
    bool? isQuietPost,
    bool? isReshareOfTextPostAppMediaInIg,
    bool? isReuseAllowed,
    bool? isTaggedMediaSharedToViewerProfileGrid,
    bool? isUnifiedVideo,
    bool? isVideo,
    bool? likeAndViewCountsDisabled,
    int? likeCount,
    dynamic location,
    MashupInfo? mashupInfo,
    int? maxNumVisiblePreviewComments,
    String? mediaName,
    int? mediaType,
    String? mezqlToken,
    MusicMetadata? musicMetadata,
    int? originalHeight,
    int? originalWidth,
    Owner? owner,
    List<dynamic>? previewComments,
    List<dynamic>? productSuggestions,
    String? productType,
    bool? shareCountDisabled,
    SharingFrictionInfo? sharingFrictionInfo,
    dynamic shopRoutingUserId,
    bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
    List<dynamic>? socialContext,
    List<dynamic>? sponsorTags,
    bool? subscribeCtaVisible,
    List<dynamic>? taggedUsers,
    int? takenAt,
    int? takenAtTs,
    String? thumbnailUrl,
    List<dynamic>? topLikers,
    User1? user,
  }) => Items(
    boostUnavailableIdentifier: boostUnavailableIdentifier ?? this.boostUnavailableIdentifier,
    boostUnavailableReason: boostUnavailableReason ?? this.boostUnavailableReason,
    canReshare: canReshare ?? this.canReshare,
    canSave: canSave ?? this.canSave,
    caption: caption ?? this.caption,
    captionIsEdited: captionIsEdited ?? this.captionIsEdited,
    clipsTabPinnedUserIds: clipsTabPinnedUserIds ?? this.clipsTabPinnedUserIds,
    coauthorProducers: coauthorProducers ?? this.coauthorProducers,
    code: code ?? this.code,
    commentCount: commentCount ?? this.commentCount,
    commentInformTreatment: commentInformTreatment ?? this.commentInformTreatment,
    commentThreadingEnabled: commentThreadingEnabled ?? this.commentThreadingEnabled,
    commercialityStatus: commercialityStatus ?? this.commercialityStatus,
    deletedReason: deletedReason ?? this.deletedReason,
    deviceTimestamp: deviceTimestamp ?? this.deviceTimestamp,
    fbAggregatedCommentCount: fbAggregatedCommentCount ?? this.fbAggregatedCommentCount,
    fbAggregatedLikeCount: fbAggregatedLikeCount ?? this.fbAggregatedLikeCount,
    fbid: fbid ?? this.fbid,
    featuredProducts: featuredProducts ?? this.featuredProducts,
    filterType: filterType ?? this.filterType,
    fundraiserTag: fundraiserTag ?? this.fundraiserTag,
    hasLiked: hasLiked ?? this.hasLiked,
    hasMoreComments: hasMoreComments ?? this.hasMoreComments,
    hasPrivatelyLiked: hasPrivatelyLiked ?? this.hasPrivatelyLiked,
    hasSharedToFb: hasSharedToFb ?? this.hasSharedToFb,
    id: id ?? this.id,
    igMediaSharingDisabled: igMediaSharingDisabled ?? this.igMediaSharingDisabled,
    imageVersions: imageVersions ?? this.imageVersions,
    inlineComposerDisplayCondition: inlineComposerDisplayCondition ?? this.inlineComposerDisplayCondition,
    inlineComposerImpTriggerTime: inlineComposerImpTriggerTime ?? this.inlineComposerImpTriggerTime,
    integrityReviewDecision: integrityReviewDecision ?? this.integrityReviewDecision,
    invitedCoauthorProducers: invitedCoauthorProducers ?? this.invitedCoauthorProducers,
    isAutoCreated: isAutoCreated ?? this.isAutoCreated,
    isCommentsGifComposerEnabled: isCommentsGifComposerEnabled ?? this.isCommentsGifComposerEnabled,
    isCutoutStickerAllowed: isCutoutStickerAllowed ?? this.isCutoutStickerAllowed,
    isEligibleForMediaNoteRecsNux: isEligibleForMediaNoteRecsNux ?? this.isEligibleForMediaNoteRecsNux,
    isInProfileGrid: isInProfileGrid ?? this.isInProfileGrid,
    isOpenToPublicSubmission: isOpenToPublicSubmission ?? this.isOpenToPublicSubmission,
    isOrganicProductTaggingEligible: isOrganicProductTaggingEligible ?? this.isOrganicProductTaggingEligible,
    isPaidPartnership: isPaidPartnership ?? this.isPaidPartnership,
    isPinned: isPinned ?? this.isPinned,
    isPostLiveClipsMedia: isPostLiveClipsMedia ?? this.isPostLiveClipsMedia,
    isQuietPost: isQuietPost ?? this.isQuietPost,
    isReshareOfTextPostAppMediaInIg: isReshareOfTextPostAppMediaInIg ?? this.isReshareOfTextPostAppMediaInIg,
    isReuseAllowed: isReuseAllowed ?? this.isReuseAllowed,
    isTaggedMediaSharedToViewerProfileGrid: isTaggedMediaSharedToViewerProfileGrid ?? this.isTaggedMediaSharedToViewerProfileGrid,
    isUnifiedVideo: isUnifiedVideo ?? this.isUnifiedVideo,
    isVideo: isVideo ?? this.isVideo,
    likeAndViewCountsDisabled: likeAndViewCountsDisabled ?? this.likeAndViewCountsDisabled,
    likeCount: likeCount ?? this.likeCount,
    location: location ?? this.location,
    mashupInfo: mashupInfo ?? this.mashupInfo,
    maxNumVisiblePreviewComments: maxNumVisiblePreviewComments ?? this.maxNumVisiblePreviewComments,
    mediaName: mediaName ?? this.mediaName,
    mediaType: mediaType ?? this.mediaType,
    mezqlToken: mezqlToken ?? this.mezqlToken,
    musicMetadata: musicMetadata ?? this.musicMetadata,
    originalHeight: originalHeight ?? this.originalHeight,
    originalWidth: originalWidth ?? this.originalWidth,
    owner: owner ?? this.owner,
    previewComments: previewComments ?? this.previewComments,
    productSuggestions: productSuggestions ?? this.productSuggestions,
    productType: productType ?? this.productType,
    shareCountDisabled: shareCountDisabled ?? this.shareCountDisabled,
    sharingFrictionInfo: sharingFrictionInfo ?? this.sharingFrictionInfo,
    shopRoutingUserId: shopRoutingUserId ?? this.shopRoutingUserId,
    shouldShowAuthorPogForTaggedMediaSharedToProfileGrid: shouldShowAuthorPogForTaggedMediaSharedToProfileGrid ?? this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
    socialContext: socialContext ?? this.socialContext,
    sponsorTags: sponsorTags ?? this.sponsorTags,
    subscribeCtaVisible: subscribeCtaVisible ?? this.subscribeCtaVisible,
    taggedUsers: taggedUsers ?? this.taggedUsers,
    takenAt: takenAt ?? this.takenAt,
    takenAtTs: takenAtTs ?? this.takenAtTs,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    topLikers: topLikers ?? this.topLikers,
    user: user ?? this.user,
  );
}

class User1 {
  List<dynamic>? accountBadges;
  bool? eligibleForTextAppActivationBadge;
  FanClubInfo1? fanClubInfo;
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  bool? hasAnonymousProfilePicture;
  String? id;
  bool? isFavorite;
  bool? isPrivate;
  bool? isUnpublished;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? showAccountTransparencyDetails;
  int? thirdPartyDownloadsEnabled;
  bool? transparencyProductEnabled;
  String? username;

  User1({this.accountBadges, this.eligibleForTextAppActivationBadge, this.fanClubInfo, this.fbidV2, this.feedPostReshareDisabled, this.fullName, this.hasAnonymousProfilePicture, this.id, this.isFavorite, this.isPrivate, this.isUnpublished, this.isVerified, this.profilePicId, this.profilePicUrl, this.showAccountTransparencyDetails, this.thirdPartyDownloadsEnabled, this.transparencyProductEnabled, this.username});

  User1.fromJson(Map<String, dynamic> json) {
    if(json["account_badges"] is List) {
      accountBadges = json["account_badges"] ?? [];
    }
    if(json["eligible_for_text_app_activation_badge"] is bool) {
      eligibleForTextAppActivationBadge = json["eligible_for_text_app_activation_badge"];
    }
    if(json["fan_club_info"] is Map) {
      fanClubInfo = json["fan_club_info"] == null ? null : FanClubInfo1.fromJson(json["fan_club_info"]);
    }
    if(json["fbid_v2"] is num) {
      fbidV2 = (json["fbid_v2"] as num).toInt();
    }
    if(json["feed_post_reshare_disabled"] is bool) {
      feedPostReshareDisabled = json["feed_post_reshare_disabled"];
    }
    if(json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if(json["has_anonymous_profile_picture"] is bool) {
      hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["is_favorite"] is bool) {
      isFavorite = json["is_favorite"];
    }
    if(json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if(json["is_unpublished"] is bool) {
      isUnpublished = json["is_unpublished"];
    }
    if(json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if(json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if(json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if(json["show_account_transparency_details"] is bool) {
      showAccountTransparencyDetails = json["show_account_transparency_details"];
    }
    if(json["third_party_downloads_enabled"] is num) {
      thirdPartyDownloadsEnabled = (json["third_party_downloads_enabled"] as num).toInt();
    }
    if(json["transparency_product_enabled"] is bool) {
      transparencyProductEnabled = json["transparency_product_enabled"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<User1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => User1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    _data["eligible_for_text_app_activation_badge"] = eligibleForTextAppActivationBadge;
    if(fanClubInfo != null) {
      _data["fan_club_info"] = fanClubInfo?.toJson();
    }
    _data["fbid_v2"] = fbidV2;
    _data["feed_post_reshare_disabled"] = feedPostReshareDisabled;
    _data["full_name"] = fullName;
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["id"] = id;
    _data["is_favorite"] = isFavorite;
    _data["is_private"] = isPrivate;
    _data["is_unpublished"] = isUnpublished;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["transparency_product_enabled"] = transparencyProductEnabled;
    _data["username"] = username;
    return _data;
  }

  User1 copyWith({
    List<dynamic>? accountBadges,
    bool? eligibleForTextAppActivationBadge,
    FanClubInfo1? fanClubInfo,
    int? fbidV2,
    bool? feedPostReshareDisabled,
    String? fullName,
    bool? hasAnonymousProfilePicture,
    String? id,
    bool? isFavorite,
    bool? isPrivate,
    bool? isUnpublished,
    bool? isVerified,
    String? profilePicId,
    String? profilePicUrl,
    bool? showAccountTransparencyDetails,
    int? thirdPartyDownloadsEnabled,
    bool? transparencyProductEnabled,
    String? username,
  }) => User1(
    accountBadges: accountBadges ?? this.accountBadges,
    eligibleForTextAppActivationBadge: eligibleForTextAppActivationBadge ?? this.eligibleForTextAppActivationBadge,
    fanClubInfo: fanClubInfo ?? this.fanClubInfo,
    fbidV2: fbidV2 ?? this.fbidV2,
    feedPostReshareDisabled: feedPostReshareDisabled ?? this.feedPostReshareDisabled,
    fullName: fullName ?? this.fullName,
    hasAnonymousProfilePicture: hasAnonymousProfilePicture ?? this.hasAnonymousProfilePicture,
    id: id ?? this.id,
    isFavorite: isFavorite ?? this.isFavorite,
    isPrivate: isPrivate ?? this.isPrivate,
    isUnpublished: isUnpublished ?? this.isUnpublished,
    isVerified: isVerified ?? this.isVerified,
    profilePicId: profilePicId ?? this.profilePicId,
    profilePicUrl: profilePicUrl ?? this.profilePicUrl,
    showAccountTransparencyDetails: showAccountTransparencyDetails ?? this.showAccountTransparencyDetails,
    thirdPartyDownloadsEnabled: thirdPartyDownloadsEnabled ?? this.thirdPartyDownloadsEnabled,
    transparencyProductEnabled: transparencyProductEnabled ?? this.transparencyProductEnabled,
    username: username ?? this.username,
  );
}

class FanClubInfo1 {
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic fanConsiderationPageRevampEligiblity;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic subscriberCount;

  FanClubInfo1({this.autosaveToExclusiveHighlight, this.connectedMemberCount, this.fanClubId, this.fanClubName, this.fanConsiderationPageRevampEligiblity, this.hasEnoughSubscribersForSsc, this.isFanClubGiftingEligible, this.isFanClubReferralEligible, this.subscriberCount});

  FanClubInfo1.fromJson(Map<String, dynamic> json) {
    autosaveToExclusiveHighlight = json["autosave_to_exclusive_highlight"];
    connectedMemberCount = json["connected_member_count"];
    fanClubId = json["fan_club_id"];
    fanClubName = json["fan_club_name"];
    fanConsiderationPageRevampEligiblity = json["fan_consideration_page_revamp_eligiblity"];
    hasEnoughSubscribersForSsc = json["has_enough_subscribers_for_ssc"];
    isFanClubGiftingEligible = json["is_fan_club_gifting_eligible"];
    isFanClubReferralEligible = json["is_fan_club_referral_eligible"];
    subscriberCount = json["subscriber_count"];
  }

  static List<FanClubInfo1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FanClubInfo1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["autosave_to_exclusive_highlight"] = autosaveToExclusiveHighlight;
    _data["connected_member_count"] = connectedMemberCount;
    _data["fan_club_id"] = fanClubId;
    _data["fan_club_name"] = fanClubName;
    _data["fan_consideration_page_revamp_eligiblity"] = fanConsiderationPageRevampEligiblity;
    _data["has_enough_subscribers_for_ssc"] = hasEnoughSubscribersForSsc;
    _data["is_fan_club_gifting_eligible"] = isFanClubGiftingEligible;
    _data["is_fan_club_referral_eligible"] = isFanClubReferralEligible;
    _data["subscriber_count"] = subscriberCount;
    return _data;
  }

  FanClubInfo1 copyWith({
    dynamic autosaveToExclusiveHighlight,
    dynamic connectedMemberCount,
    dynamic fanClubId,
    dynamic fanClubName,
    dynamic fanConsiderationPageRevampEligiblity,
    dynamic hasEnoughSubscribersForSsc,
    dynamic isFanClubGiftingEligible,
    dynamic isFanClubReferralEligible,
    dynamic subscriberCount,
  }) => FanClubInfo1(
    autosaveToExclusiveHighlight: autosaveToExclusiveHighlight ?? this.autosaveToExclusiveHighlight,
    connectedMemberCount: connectedMemberCount ?? this.connectedMemberCount,
    fanClubId: fanClubId ?? this.fanClubId,
    fanClubName: fanClubName ?? this.fanClubName,
    fanConsiderationPageRevampEligiblity: fanConsiderationPageRevampEligiblity ?? this.fanConsiderationPageRevampEligiblity,
    hasEnoughSubscribersForSsc: hasEnoughSubscribersForSsc ?? this.hasEnoughSubscribersForSsc,
    isFanClubGiftingEligible: isFanClubGiftingEligible ?? this.isFanClubGiftingEligible,
    isFanClubReferralEligible: isFanClubReferralEligible ?? this.isFanClubReferralEligible,
    subscriberCount: subscriberCount ?? this.subscriberCount,
  );
}

class SharingFrictionInfo {
  dynamic bloksAppUrl;
  dynamic sharingFrictionPayload;
  bool? shouldHaveSharingFriction;

  SharingFrictionInfo({this.bloksAppUrl, this.sharingFrictionPayload, this.shouldHaveSharingFriction});

  SharingFrictionInfo.fromJson(Map<String, dynamic> json) {
    bloksAppUrl = json["bloks_app_url"];
    sharingFrictionPayload = json["sharing_friction_payload"];
    if(json["should_have_sharing_friction"] is bool) {
      shouldHaveSharingFriction = json["should_have_sharing_friction"];
    }
  }

  static List<SharingFrictionInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => SharingFrictionInfo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bloks_app_url"] = bloksAppUrl;
    _data["sharing_friction_payload"] = sharingFrictionPayload;
    _data["should_have_sharing_friction"] = shouldHaveSharingFriction;
    return _data;
  }

  SharingFrictionInfo copyWith({
    dynamic bloksAppUrl,
    dynamic sharingFrictionPayload,
    bool? shouldHaveSharingFriction,
  }) => SharingFrictionInfo(
    bloksAppUrl: bloksAppUrl ?? this.bloksAppUrl,
    sharingFrictionPayload: sharingFrictionPayload ?? this.sharingFrictionPayload,
    shouldHaveSharingFriction: shouldHaveSharingFriction ?? this.shouldHaveSharingFriction,
  );
}

class Owner {
  List<dynamic>? accountBadges;
  bool? canSeeQuietPostAttribution;
  FanClubInfo? fanClubInfo;
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  bool? hasAnonymousProfilePicture;
  String? id;
  bool? isFavorite;
  bool? isPrivate;
  bool? isUnpublished;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? showAccountTransparencyDetails;
  int? thirdPartyDownloadsEnabled;
  bool? transparencyProductEnabled;
  String? username;

  Owner({this.accountBadges, this.canSeeQuietPostAttribution, this.fanClubInfo, this.fbidV2, this.feedPostReshareDisabled, this.fullName, this.hasAnonymousProfilePicture, this.id, this.isFavorite, this.isPrivate, this.isUnpublished, this.isVerified, this.profilePicId, this.profilePicUrl, this.showAccountTransparencyDetails, this.thirdPartyDownloadsEnabled, this.transparencyProductEnabled, this.username});

  Owner.fromJson(Map<String, dynamic> json) {
    if(json["account_badges"] is List) {
      accountBadges = json["account_badges"] ?? [];
    }
    if(json["can_see_quiet_post_attribution"] is bool) {
      canSeeQuietPostAttribution = json["can_see_quiet_post_attribution"];
    }
    if(json["fan_club_info"] is Map) {
      fanClubInfo = json["fan_club_info"] == null ? null : FanClubInfo.fromJson(json["fan_club_info"]);
    }
    if(json["fbid_v2"] is num) {
      fbidV2 = (json["fbid_v2"] as num).toInt();
    }
    if(json["feed_post_reshare_disabled"] is bool) {
      feedPostReshareDisabled = json["feed_post_reshare_disabled"];
    }
    if(json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if(json["has_anonymous_profile_picture"] is bool) {
      hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["is_favorite"] is bool) {
      isFavorite = json["is_favorite"];
    }
    if(json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if(json["is_unpublished"] is bool) {
      isUnpublished = json["is_unpublished"];
    }
    if(json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if(json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if(json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if(json["show_account_transparency_details"] is bool) {
      showAccountTransparencyDetails = json["show_account_transparency_details"];
    }
    if(json["third_party_downloads_enabled"] is num) {
      thirdPartyDownloadsEnabled = (json["third_party_downloads_enabled"] as num).toInt();
    }
    if(json["transparency_product_enabled"] is bool) {
      transparencyProductEnabled = json["transparency_product_enabled"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<Owner> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Owner.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    _data["can_see_quiet_post_attribution"] = canSeeQuietPostAttribution;
    if(fanClubInfo != null) {
      _data["fan_club_info"] = fanClubInfo?.toJson();
    }
    _data["fbid_v2"] = fbidV2;
    _data["feed_post_reshare_disabled"] = feedPostReshareDisabled;
    _data["full_name"] = fullName;
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["id"] = id;
    _data["is_favorite"] = isFavorite;
    _data["is_private"] = isPrivate;
    _data["is_unpublished"] = isUnpublished;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["transparency_product_enabled"] = transparencyProductEnabled;
    _data["username"] = username;
    return _data;
  }

  Owner copyWith({
    List<dynamic>? accountBadges,
    bool? canSeeQuietPostAttribution,
    FanClubInfo? fanClubInfo,
    int? fbidV2,
    bool? feedPostReshareDisabled,
    String? fullName,
    bool? hasAnonymousProfilePicture,
    String? id,
    bool? isFavorite,
    bool? isPrivate,
    bool? isUnpublished,
    bool? isVerified,
    String? profilePicId,
    String? profilePicUrl,
    bool? showAccountTransparencyDetails,
    int? thirdPartyDownloadsEnabled,
    bool? transparencyProductEnabled,
    String? username,
  }) => Owner(
    accountBadges: accountBadges ?? this.accountBadges,
    canSeeQuietPostAttribution: canSeeQuietPostAttribution ?? this.canSeeQuietPostAttribution,
    fanClubInfo: fanClubInfo ?? this.fanClubInfo,
    fbidV2: fbidV2 ?? this.fbidV2,
    feedPostReshareDisabled: feedPostReshareDisabled ?? this.feedPostReshareDisabled,
    fullName: fullName ?? this.fullName,
    hasAnonymousProfilePicture: hasAnonymousProfilePicture ?? this.hasAnonymousProfilePicture,
    id: id ?? this.id,
    isFavorite: isFavorite ?? this.isFavorite,
    isPrivate: isPrivate ?? this.isPrivate,
    isUnpublished: isUnpublished ?? this.isUnpublished,
    isVerified: isVerified ?? this.isVerified,
    profilePicId: profilePicId ?? this.profilePicId,
    profilePicUrl: profilePicUrl ?? this.profilePicUrl,
    showAccountTransparencyDetails: showAccountTransparencyDetails ?? this.showAccountTransparencyDetails,
    thirdPartyDownloadsEnabled: thirdPartyDownloadsEnabled ?? this.thirdPartyDownloadsEnabled,
    transparencyProductEnabled: transparencyProductEnabled ?? this.transparencyProductEnabled,
    username: username ?? this.username,
  );
}

class FanClubInfo {
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic fanConsiderationPageRevampEligiblity;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic subscriberCount;

  FanClubInfo({this.autosaveToExclusiveHighlight, this.connectedMemberCount, this.fanClubId, this.fanClubName, this.fanConsiderationPageRevampEligiblity, this.hasEnoughSubscribersForSsc, this.isFanClubGiftingEligible, this.isFanClubReferralEligible, this.subscriberCount});

  FanClubInfo.fromJson(Map<String, dynamic> json) {
    autosaveToExclusiveHighlight = json["autosave_to_exclusive_highlight"];
    connectedMemberCount = json["connected_member_count"];
    fanClubId = json["fan_club_id"];
    fanClubName = json["fan_club_name"];
    fanConsiderationPageRevampEligiblity = json["fan_consideration_page_revamp_eligiblity"];
    hasEnoughSubscribersForSsc = json["has_enough_subscribers_for_ssc"];
    isFanClubGiftingEligible = json["is_fan_club_gifting_eligible"];
    isFanClubReferralEligible = json["is_fan_club_referral_eligible"];
    subscriberCount = json["subscriber_count"];
  }

  static List<FanClubInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FanClubInfo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["autosave_to_exclusive_highlight"] = autosaveToExclusiveHighlight;
    _data["connected_member_count"] = connectedMemberCount;
    _data["fan_club_id"] = fanClubId;
    _data["fan_club_name"] = fanClubName;
    _data["fan_consideration_page_revamp_eligiblity"] = fanConsiderationPageRevampEligiblity;
    _data["has_enough_subscribers_for_ssc"] = hasEnoughSubscribersForSsc;
    _data["is_fan_club_gifting_eligible"] = isFanClubGiftingEligible;
    _data["is_fan_club_referral_eligible"] = isFanClubReferralEligible;
    _data["subscriber_count"] = subscriberCount;
    return _data;
  }

  FanClubInfo copyWith({
    dynamic autosaveToExclusiveHighlight,
    dynamic connectedMemberCount,
    dynamic fanClubId,
    dynamic fanClubName,
    dynamic fanConsiderationPageRevampEligiblity,
    dynamic hasEnoughSubscribersForSsc,
    dynamic isFanClubGiftingEligible,
    dynamic isFanClubReferralEligible,
    dynamic subscriberCount,
  }) => FanClubInfo(
    autosaveToExclusiveHighlight: autosaveToExclusiveHighlight ?? this.autosaveToExclusiveHighlight,
    connectedMemberCount: connectedMemberCount ?? this.connectedMemberCount,
    fanClubId: fanClubId ?? this.fanClubId,
    fanClubName: fanClubName ?? this.fanClubName,
    fanConsiderationPageRevampEligiblity: fanConsiderationPageRevampEligiblity ?? this.fanConsiderationPageRevampEligiblity,
    hasEnoughSubscribersForSsc: hasEnoughSubscribersForSsc ?? this.hasEnoughSubscribersForSsc,
    isFanClubGiftingEligible: isFanClubGiftingEligible ?? this.isFanClubGiftingEligible,
    isFanClubReferralEligible: isFanClubReferralEligible ?? this.isFanClubReferralEligible,
    subscriberCount: subscriberCount ?? this.subscriberCount,
  );
}

class MusicMetadata {
  String? audioCanonicalId;
  dynamic audioType;
  dynamic musicInfo;
  dynamic originalSoundInfo;
  dynamic pinnedMediaIds;

  MusicMetadata({this.audioCanonicalId, this.audioType, this.musicInfo, this.originalSoundInfo, this.pinnedMediaIds});

  MusicMetadata.fromJson(Map<String, dynamic> json) {
    if(json["audio_canonical_id"] is String) {
      audioCanonicalId = json["audio_canonical_id"];
    }
    audioType = json["audio_type"];
    musicInfo = json["music_info"];
    originalSoundInfo = json["original_sound_info"];
    pinnedMediaIds = json["pinned_media_ids"];
  }

  static List<MusicMetadata> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => MusicMetadata.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["audio_canonical_id"] = audioCanonicalId;
    _data["audio_type"] = audioType;
    _data["music_info"] = musicInfo;
    _data["original_sound_info"] = originalSoundInfo;
    _data["pinned_media_ids"] = pinnedMediaIds;
    return _data;
  }

  MusicMetadata copyWith({
    String? audioCanonicalId,
    dynamic audioType,
    dynamic musicInfo,
    dynamic originalSoundInfo,
    dynamic pinnedMediaIds,
  }) => MusicMetadata(
    audioCanonicalId: audioCanonicalId ?? this.audioCanonicalId,
    audioType: audioType ?? this.audioType,
    musicInfo: musicInfo ?? this.musicInfo,
    originalSoundInfo: originalSoundInfo ?? this.originalSoundInfo,
    pinnedMediaIds: pinnedMediaIds ?? this.pinnedMediaIds,
  );
}

class MashupInfo {
  bool? canToggleMashupsAllowed;
  dynamic formattedMashupsCount;
  bool? hasBeenMashedUp;
  bool? hasNonmimicableAdditionalAudio;
  bool? isCreatorRequestingMashup;
  bool? isLightWeightCheck;
  bool? isPivotPageAvailable;
  dynamic mashupType;
  bool? mashupsAllowed;
  dynamic nonPrivacyFilteredMashupsMediaCount;
  dynamic originalMedia;
  dynamic privacyFilteredMashupsMediaCount;

  MashupInfo({this.canToggleMashupsAllowed, this.formattedMashupsCount, this.hasBeenMashedUp, this.hasNonmimicableAdditionalAudio, this.isCreatorRequestingMashup, this.isLightWeightCheck, this.isPivotPageAvailable, this.mashupType, this.mashupsAllowed, this.nonPrivacyFilteredMashupsMediaCount, this.originalMedia, this.privacyFilteredMashupsMediaCount});

  MashupInfo.fromJson(Map<String, dynamic> json) {
    if(json["can_toggle_mashups_allowed"] is bool) {
      canToggleMashupsAllowed = json["can_toggle_mashups_allowed"];
    }
    formattedMashupsCount = json["formatted_mashups_count"];
    if(json["has_been_mashed_up"] is bool) {
      hasBeenMashedUp = json["has_been_mashed_up"];
    }
    if(json["has_nonmimicable_additional_audio"] is bool) {
      hasNonmimicableAdditionalAudio = json["has_nonmimicable_additional_audio"];
    }
    if(json["is_creator_requesting_mashup"] is bool) {
      isCreatorRequestingMashup = json["is_creator_requesting_mashup"];
    }
    if(json["is_light_weight_check"] is bool) {
      isLightWeightCheck = json["is_light_weight_check"];
    }
    if(json["is_pivot_page_available"] is bool) {
      isPivotPageAvailable = json["is_pivot_page_available"];
    }
    mashupType = json["mashup_type"];
    if(json["mashups_allowed"] is bool) {
      mashupsAllowed = json["mashups_allowed"];
    }
    nonPrivacyFilteredMashupsMediaCount = json["non_privacy_filtered_mashups_media_count"];
    originalMedia = json["original_media"];
    privacyFilteredMashupsMediaCount = json["privacy_filtered_mashups_media_count"];
  }

  static List<MashupInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => MashupInfo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["can_toggle_mashups_allowed"] = canToggleMashupsAllowed;
    _data["formatted_mashups_count"] = formattedMashupsCount;
    _data["has_been_mashed_up"] = hasBeenMashedUp;
    _data["has_nonmimicable_additional_audio"] = hasNonmimicableAdditionalAudio;
    _data["is_creator_requesting_mashup"] = isCreatorRequestingMashup;
    _data["is_light_weight_check"] = isLightWeightCheck;
    _data["is_pivot_page_available"] = isPivotPageAvailable;
    _data["mashup_type"] = mashupType;
    _data["mashups_allowed"] = mashupsAllowed;
    _data["non_privacy_filtered_mashups_media_count"] = nonPrivacyFilteredMashupsMediaCount;
    _data["original_media"] = originalMedia;
    _data["privacy_filtered_mashups_media_count"] = privacyFilteredMashupsMediaCount;
    return _data;
  }

  MashupInfo copyWith({
    bool? canToggleMashupsAllowed,
    dynamic formattedMashupsCount,
    bool? hasBeenMashedUp,
    bool? hasNonmimicableAdditionalAudio,
    bool? isCreatorRequestingMashup,
    bool? isLightWeightCheck,
    bool? isPivotPageAvailable,
    dynamic mashupType,
    bool? mashupsAllowed,
    dynamic nonPrivacyFilteredMashupsMediaCount,
    dynamic originalMedia,
    dynamic privacyFilteredMashupsMediaCount,
  }) => MashupInfo(
    canToggleMashupsAllowed: canToggleMashupsAllowed ?? this.canToggleMashupsAllowed,
    formattedMashupsCount: formattedMashupsCount ?? this.formattedMashupsCount,
    hasBeenMashedUp: hasBeenMashedUp ?? this.hasBeenMashedUp,
    hasNonmimicableAdditionalAudio: hasNonmimicableAdditionalAudio ?? this.hasNonmimicableAdditionalAudio,
    isCreatorRequestingMashup: isCreatorRequestingMashup ?? this.isCreatorRequestingMashup,
    isLightWeightCheck: isLightWeightCheck ?? this.isLightWeightCheck,
    isPivotPageAvailable: isPivotPageAvailable ?? this.isPivotPageAvailable,
    mashupType: mashupType ?? this.mashupType,
    mashupsAllowed: mashupsAllowed ?? this.mashupsAllowed,
    nonPrivacyFilteredMashupsMediaCount: nonPrivacyFilteredMashupsMediaCount ?? this.nonPrivacyFilteredMashupsMediaCount,
    originalMedia: originalMedia ?? this.originalMedia,
    privacyFilteredMashupsMediaCount: privacyFilteredMashupsMediaCount ?? this.privacyFilteredMashupsMediaCount,
  );
}

class ImageVersions {
  List<Items1>? items;

  ImageVersions({this.items});

  ImageVersions.fromJson(Map<String, dynamic> json) {
    if(json["items"] is List) {
      items = json["items"] == null ? null : (json["items"] as List).map((e) => Items1.fromJson(e)).toList();
    }
  }

  static List<ImageVersions> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ImageVersions.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  ImageVersions copyWith({
    List<Items1>? items,
  }) => ImageVersions(
    items: items ?? this.items,
  );
}

class Items1 {
  int? height;
  String? url;
  int? width;

  Items1({this.height, this.url, this.width});

  Items1.fromJson(Map<String, dynamic> json) {
    if(json["height"] is num) {
      height = (json["height"] as num).toInt();
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["width"] is num) {
      width = (json["width"] as num).toInt();
    }
  }

  static List<Items1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Items1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }

  Items1 copyWith({
    int? height,
    String? url,
    int? width,
  }) => Items1(
    height: height ?? this.height,
    url: url ?? this.url,
    width: width ?? this.width,
  );
}

class FundraiserTag {
  bool? hasStandaloneFundraiser;

  FundraiserTag({this.hasStandaloneFundraiser});

  FundraiserTag.fromJson(Map<String, dynamic> json) {
    if(json["has_standalone_fundraiser"] is bool) {
      hasStandaloneFundraiser = json["has_standalone_fundraiser"];
    }
  }

  static List<FundraiserTag> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FundraiserTag.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_standalone_fundraiser"] = hasStandaloneFundraiser;
    return _data;
  }

  FundraiserTag copyWith({
    bool? hasStandaloneFundraiser,
  }) => FundraiserTag(
    hasStandaloneFundraiser: hasStandaloneFundraiser ?? this.hasStandaloneFundraiser,
  );
}







class CommentInformTreatment {
dynamic actionType;
bool? shouldHaveInformTreatment;
String? text;
dynamic url;

CommentInformTreatment({this.actionType, this.shouldHaveInformTreatment, this.text, this.url});

CommentInformTreatment.fromJson(Map<String, dynamic> json) {
actionType = json["action_type"];
if(json["should_have_inform_treatment"] is bool) {
shouldHaveInformTreatment = json["should_have_inform_treatment"];
}
if(json["text"] is String) {
text = json["text"];
}
url = json["url"];
}

static List<CommentInformTreatment> fromList(List<Map<String, dynamic>> list) {
return list.map((map) => CommentInformTreatment.fromJson(map)).toList();
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["action_type"] = actionType;
_data["should_have_inform_treatment"] = shouldHaveInformTreatment;
_data["text"] = text;
_data["url"] = url;
return _data;
}

CommentInformTreatment copyWith({
dynamic actionType,
bool? shouldHaveInformTreatment,
String? text,
dynamic url,
}) => CommentInformTreatment(
actionType: actionType ?? this.actionType,
shouldHaveInformTreatment: shouldHaveInformTreatment ?? this.shouldHaveInformTreatment,
text: text ?? this.text,
url: url ?? this.url,
);
}

class Caption {
String? contentType;
int? createdAt;
int? createdAtUtc;
bool? didReportAsSpam;
List<dynamic>? hashtags;
String? id;
bool? isCovered;
bool? isRankedComment;
List<dynamic>? mentions;
int? privateReplyStatus;
bool? shareEnabled;
String? text;
int? type;
User? user;
String? userId;

Caption({this.contentType, this.createdAt, this.createdAtUtc, this.didReportAsSpam, this.hashtags, this.id, this.isCovered, this.isRankedComment, this.mentions, this.privateReplyStatus, this.shareEnabled, this.text, this.type, this.user, this.userId});

Caption.fromJson(Map<String, dynamic> json) {
if(json["content_type"] is String) {
contentType = json["content_type"];
}
if(json["created_at"] is num) {
createdAt = (json["created_at"] as num).toInt();
}
if(json["created_at_utc"] is num) {
createdAtUtc = (json["created_at_utc"] as num).toInt();
}
if(json["did_report_as_spam"] is bool) {
didReportAsSpam = json["did_report_as_spam"];
}
if(json["hashtags"] is List) {
hashtags = json["hashtags"] ?? [];
}
if(json["id"] is String) {
id = json["id"];
}
if(json["is_covered"] is bool) {
isCovered = json["is_covered"];
}
if(json["is_ranked_comment"] is bool) {
isRankedComment = json["is_ranked_comment"];
}
if(json["mentions"] is List) {
mentions = json["mentions"] ?? [];
}
if(json["private_reply_status"] is num) {
privateReplyStatus = (json["private_reply_status"] as num).toInt();
}
if(json["share_enabled"] is bool) {
shareEnabled = json["share_enabled"];
}
if(json["text"] is String) {
text = json["text"];
}
if(json["type"] is num) {
type = (json["type"] as num).toInt();
}
if(json["user"] is Map) {
user = json["user"] == null ? null : User.fromJson(json["user"]);
}
if(json["user_id"] is String) {
userId = json["user_id"];
}
}

static List<Caption> fromList(List<Map<String, dynamic>> list) {
return list.map((map) => Caption.fromJson(map)).toList();
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["content_type"] = contentType;
_data["created_at"] = createdAt;
_data["created_at_utc"] = createdAtUtc;
_data["did_report_as_spam"] = didReportAsSpam;
if(hashtags != null) {
_data["hashtags"] = hashtags;
}
_data["id"] = id;
_data["is_covered"] = isCovered;
_data["is_ranked_comment"] = isRankedComment;
if(mentions != null) {
_data["mentions"] = mentions;
}
_data["private_reply_status"] = privateReplyStatus;
_data["share_enabled"] = shareEnabled;
_data["text"] = text;
_data["type"] = type;
if(user != null) {
_data["user"] = user?.toJson();
}
_data["user_id"] = userId;
return _data;
}

Caption copyWith({
String? contentType,
int? createdAt,
int? createdAtUtc,
bool? didReportAsSpam,
List<dynamic>? hashtags,
String? id,
bool? isCovered,
bool? isRankedComment,
List<dynamic>? mentions,
int? privateReplyStatus,
bool? shareEnabled,
String? text,
int? type,
User? user,
String? userId,
}) => Caption(
contentType: contentType ?? this.contentType,
createdAt: createdAt ?? this.createdAt,
createdAtUtc: createdAtUtc ?? this.createdAtUtc,
didReportAsSpam: didReportAsSpam ?? this.didReportAsSpam,
hashtags: hashtags ?? this.hashtags,
id: id ?? this.id,
isCovered: isCovered ?? this.isCovered,
isRankedComment: isRankedComment ?? this.isRankedComment,
mentions: mentions ?? this.mentions,
privateReplyStatus: privateReplyStatus ?? this.privateReplyStatus,
shareEnabled: shareEnabled ?? this.shareEnabled,
text: text ?? this.text,
type: type ?? this.type,
user: user ?? this.user,
userId: userId ?? this.userId,
);
}

class User {
int? fbidV2;
String? fullName;
String? id;
bool? isPrivate;
bool? isVerified;
String? profilePicId;
String? profilePicUrl;
String? username;

User({this.fbidV2, this.fullName, this.id, this.isPrivate, this.isVerified, this.profilePicId, this.profilePicUrl, this.username});

User.fromJson(Map<String, dynamic> json) {
if(json["fbid_v2"] is num) {
fbidV2 = (json["fbid_v2"] as num).toInt();
}
if(json["full_name"] is String) {
fullName = json["full_name"];
}
if(json["id"] is String) {
id = json["id"];
}
if(json["is_private"] is bool) {
isPrivate = json["is_private"];
}
if(json["is_verified"] is bool) {
isVerified = json["is_verified"];
}
if(json["profile_pic_id"] is String) {
profilePicId = json["profile_pic_id"];
}
if(json["profile_pic_url"] is String) {
profilePicUrl = json["profile_pic_url"];
}
if(json["username"] is String) {
username = json["username"];
}
}

static List<User> fromList(List<Map<String, dynamic>> list) {
return list.map((map) => User.fromJson(map)).toList();
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["fbid_v2"] = fbidV2;
_data["full_name"] = fullName;
_data["id"] = id;
_data["is_private"] = isPrivate;
_data["is_verified"] = isVerified;
_data["profile_pic_id"] = profilePicId;
_data["profile_pic_url"] = profilePicUrl;
_data["username"] = username;
return _data;
}

User copyWith({
int? fbidV2,
String? fullName,
String? id,
bool? isPrivate,
bool? isVerified,
String? profilePicId,
String? profilePicUrl,
String? username,
}) => User(
fbidV2: fbidV2 ?? this.fbidV2,
fullName: fullName ?? this.fullName,
id: id ?? this.id,
isPrivate: isPrivate ?? this.isPrivate,
isVerified: isVerified ?? this.isVerified,
profilePicId: profilePicId ?? this.profilePicId,
profilePicUrl: profilePicUrl ?? this.profilePicUrl,
username: username ?? this.username,
);
}