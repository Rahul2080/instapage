
class InstaModel {
  Data? data;

  InstaModel({this.data});

  InstaModel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  static List<InstaModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => InstaModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }

  InstaModel copyWith({
    Data? data,
  }) => InstaModel(
    data: data ?? this.data,
  );
}

class Data {
  dynamic about;
  List<dynamic>? accountBadges;
  int? accountType;
  ActiveStandaloneFundraisers? activeStandaloneFundraisers;
  List<dynamic>? adjustedBannersOrder;
  dynamic adsIncentiveExpirationDate;
  dynamic adsPageId;
  dynamic adsPageName;
  List<BioLinks>? bioLinks;
  String? biography;
  dynamic biographyEmail;
  BiographyWithEntities? biographyWithEntities;
  String? businessContactMethod;
  bool? canAddFbGroupLinkOnProfile;
  bool? canHideCategory;
  bool? canHidePublicContacts;
  String? category;
  int? categoryId;
  String? contactPhoneNumber;
  dynamic currentCatalogId;
  String? directMessaging;
  bool? eligibleForTextAppActivationBadge;
  String? externalLynxUrl;
  String? externalUrl;
  int? fbidV2;
  int? followerCount;
  int? followingCount;
  String? fullName;
  bool? hasAnonymousProfilePicture;
  bool? hasChaining;
  bool? hasGuides;
  bool? hasIgtvSeries;
  HdProfilePicUrlInfo? hdProfilePicUrlInfo;
  List<HdProfilePicVersions>? hdProfilePicVersions;
  String? id;
  bool? isBusiness;
  bool? isCallToActionEnabled;
  bool? isCategoryTappable;
  bool? isEligibleForRequestMessage;
  bool? isFavorite;
  bool? isFavoriteForClips;
  bool? isFavoriteForIgtv;
  bool? isFavoriteForStories;
  bool? isOpenToCollab;
  bool? isParentingAccount;
  bool? isPrivate;
  bool? isProfileAudioCallEnabled;
  bool? isVerified;
  int? latestReelMedia;
  String? liveSubscriptionStatus;
  LocationData? locationData;
  int? mediaCount;
  String? merchantCheckoutStyle;
  dynamic pageId;
  dynamic pageName;
  PinnedChannelsInfo? pinnedChannelsInfo;
  int? primaryProfileLinkType;
  int? professionalConversionSuggestedAccountType;
  String? profileContext;
  List<dynamic>? profileContextFacepileUsers;
  List<dynamic>? profileContextLinksWithUserIds;
  String? profilePicId;
  String? profilePicUrl;
  String? profilePicUrlHd;
  String? publicEmail;
  String? publicPhoneCountryCode;
  String? publicPhoneNumber;
  String? sellerShoppableFeedType;
  bool? showShoppableFeed;
  int? thirdPartyDownloadsEnabled;
  int? totalIgtvVideos;
  List<dynamic>? upcomingEvents;
  String? username;

  Data({this.about, this.accountBadges, this.accountType, this.activeStandaloneFundraisers, this.adjustedBannersOrder, this.adsIncentiveExpirationDate, this.adsPageId, this.adsPageName, this.bioLinks, this.biography, this.biographyEmail, this.biographyWithEntities, this.businessContactMethod, this.canAddFbGroupLinkOnProfile, this.canHideCategory, this.canHidePublicContacts, this.category, this.categoryId, this.contactPhoneNumber, this.currentCatalogId, this.directMessaging, this.eligibleForTextAppActivationBadge, this.externalLynxUrl, this.externalUrl, this.fbidV2, this.followerCount, this.followingCount, this.fullName, this.hasAnonymousProfilePicture, this.hasChaining, this.hasGuides, this.hasIgtvSeries, this.hdProfilePicUrlInfo, this.hdProfilePicVersions, this.id, this.isBusiness, this.isCallToActionEnabled, this.isCategoryTappable, this.isEligibleForRequestMessage, this.isFavorite, this.isFavoriteForClips, this.isFavoriteForIgtv, this.isFavoriteForStories, this.isOpenToCollab, this.isParentingAccount, this.isPrivate, this.isProfileAudioCallEnabled, this.isVerified, this.latestReelMedia, this.liveSubscriptionStatus, this.locationData, this.mediaCount, this.merchantCheckoutStyle, this.pageId, this.pageName, this.pinnedChannelsInfo, this.primaryProfileLinkType, this.professionalConversionSuggestedAccountType, this.profileContext, this.profileContextFacepileUsers, this.profileContextLinksWithUserIds, this.profilePicId, this.profilePicUrl, this.profilePicUrlHd, this.publicEmail, this.publicPhoneCountryCode, this.publicPhoneNumber, this.sellerShoppableFeedType, this.showShoppableFeed, this.thirdPartyDownloadsEnabled, this.totalIgtvVideos, this.upcomingEvents, this.username});

  Data.fromJson(Map<String, dynamic> json) {
    about = json["about"];
    if(json["account_badges"] is List) {
      accountBadges = json["account_badges"] ?? [];
    }
    if(json["account_type"] is num) {
      accountType = (json["account_type"] as num).toInt();
    }
    if(json["active_standalone_fundraisers"] is Map) {
      activeStandaloneFundraisers = json["active_standalone_fundraisers"] == null ? null : ActiveStandaloneFundraisers.fromJson(json["active_standalone_fundraisers"]);
    }
    if(json["adjusted_banners_order"] is List) {
      adjustedBannersOrder = json["adjusted_banners_order"] ?? [];
    }
    adsIncentiveExpirationDate = json["ads_incentive_expiration_date"];
    adsPageId = json["ads_page_id"];
    adsPageName = json["ads_page_name"];
    if(json["bio_links"] is List) {
      bioLinks = json["bio_links"] == null ? null : (json["bio_links"] as List).map((e) => BioLinks.fromJson(e)).toList();
    }
    if(json["biography"] is String) {
      biography = json["biography"];
    }
    biographyEmail = json["biography_email"];
    if(json["biography_with_entities"] is Map) {
      biographyWithEntities = json["biography_with_entities"] == null ? null : BiographyWithEntities.fromJson(json["biography_with_entities"]);
    }
    if(json["business_contact_method"] is String) {
      businessContactMethod = json["business_contact_method"];
    }
    if(json["can_add_fb_group_link_on_profile"] is bool) {
      canAddFbGroupLinkOnProfile = json["can_add_fb_group_link_on_profile"];
    }
    if(json["can_hide_category"] is bool) {
      canHideCategory = json["can_hide_category"];
    }
    if(json["can_hide_public_contacts"] is bool) {
      canHidePublicContacts = json["can_hide_public_contacts"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["category_id"] is num) {
      categoryId = (json["category_id"] as num).toInt();
    }
    if(json["contact_phone_number"] is String) {
      contactPhoneNumber = json["contact_phone_number"];
    }
    currentCatalogId = json["current_catalog_id"];
    if(json["direct_messaging"] is String) {
      directMessaging = json["direct_messaging"];
    }
    if(json["eligible_for_text_app_activation_badge"] is bool) {
      eligibleForTextAppActivationBadge = json["eligible_for_text_app_activation_badge"];
    }
    if(json["external_lynx_url"] is String) {
      externalLynxUrl = json["external_lynx_url"];
    }
    if(json["external_url"] is String) {
      externalUrl = json["external_url"];
    }
    if(json["fbid_v2"] is num) {
      fbidV2 = (json["fbid_v2"] as num).toInt();
    }
    if(json["follower_count"] is num) {
      followerCount = (json["follower_count"] as num).toInt();
    }
    if(json["following_count"] is num) {
      followingCount = (json["following_count"] as num).toInt();
    }
    if(json["full_name"] is String) {
      fullName = json["full_name"];
    }
    if(json["has_anonymous_profile_picture"] is bool) {
      hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    }
    if(json["has_chaining"] is bool) {
      hasChaining = json["has_chaining"];
    }
    if(json["has_guides"] is bool) {
      hasGuides = json["has_guides"];
    }
    if(json["has_igtv_series"] is bool) {
      hasIgtvSeries = json["has_igtv_series"];
    }
    if(json["hd_profile_pic_url_info"] is Map) {
      hdProfilePicUrlInfo = json["hd_profile_pic_url_info"] == null ? null : HdProfilePicUrlInfo.fromJson(json["hd_profile_pic_url_info"]);
    }
    if(json["hd_profile_pic_versions"] is List) {
      hdProfilePicVersions = json["hd_profile_pic_versions"] == null ? null : (json["hd_profile_pic_versions"] as List).map((e) => HdProfilePicVersions.fromJson(e)).toList();
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["is_business"] is bool) {
      isBusiness = json["is_business"];
    }
    if(json["is_call_to_action_enabled"] is bool) {
      isCallToActionEnabled = json["is_call_to_action_enabled"];
    }
    if(json["is_category_tappable"] is bool) {
      isCategoryTappable = json["is_category_tappable"];
    }
    if(json["is_eligible_for_request_message"] is bool) {
      isEligibleForRequestMessage = json["is_eligible_for_request_message"];
    }
    if(json["is_favorite"] is bool) {
      isFavorite = json["is_favorite"];
    }
    if(json["is_favorite_for_clips"] is bool) {
      isFavoriteForClips = json["is_favorite_for_clips"];
    }
    if(json["is_favorite_for_igtv"] is bool) {
      isFavoriteForIgtv = json["is_favorite_for_igtv"];
    }
    if(json["is_favorite_for_stories"] is bool) {
      isFavoriteForStories = json["is_favorite_for_stories"];
    }
    if(json["is_open_to_collab"] is bool) {
      isOpenToCollab = json["is_open_to_collab"];
    }
    if(json["is_parenting_account"] is bool) {
      isParentingAccount = json["is_parenting_account"];
    }
    if(json["is_private"] is bool) {
      isPrivate = json["is_private"];
    }
    if(json["is_profile_audio_call_enabled"] is bool) {
      isProfileAudioCallEnabled = json["is_profile_audio_call_enabled"];
    }
    if(json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if(json["latest_reel_media"] is num) {
      latestReelMedia = (json["latest_reel_media"] as num).toInt();
    }
    if(json["live_subscription_status"] is String) {
      liveSubscriptionStatus = json["live_subscription_status"];
    }
    if(json["location_data"] is Map) {
      locationData = json["location_data"] == null ? null : LocationData.fromJson(json["location_data"]);
    }
    if(json["media_count"] is num) {
      mediaCount = (json["media_count"] as num).toInt();
    }
    if(json["merchant_checkout_style"] is String) {
      merchantCheckoutStyle = json["merchant_checkout_style"];
    }
    pageId = json["page_id"];
    pageName = json["page_name"];
    if(json["pinned_channels_info"] is Map) {
      pinnedChannelsInfo = json["pinned_channels_info"] == null ? null : PinnedChannelsInfo.fromJson(json["pinned_channels_info"]);
    }
    if(json["primary_profile_link_type"] is num) {
      primaryProfileLinkType = (json["primary_profile_link_type"] as num).toInt();
    }
    if(json["professional_conversion_suggested_account_type"] is num) {
      professionalConversionSuggestedAccountType = (json["professional_conversion_suggested_account_type"] as num).toInt();
    }
    if(json["profile_context"] is String) {
      profileContext = json["profile_context"];
    }
    if(json["profile_context_facepile_users"] is List) {
      profileContextFacepileUsers = json["profile_context_facepile_users"] ?? [];
    }
    if(json["profile_context_links_with_user_ids"] is List) {
      profileContextLinksWithUserIds = json["profile_context_links_with_user_ids"] ?? [];
    }
    if(json["profile_pic_id"] is String) {
      profilePicId = json["profile_pic_id"];
    }
    if(json["profile_pic_url"] is String) {
      profilePicUrl = json["profile_pic_url"];
    }
    if(json["profile_pic_url_hd"] is String) {
      profilePicUrlHd = json["profile_pic_url_hd"];
    }
    if(json["public_email"] is String) {
      publicEmail = json["public_email"];
    }
    if(json["public_phone_country_code"] is String) {
      publicPhoneCountryCode = json["public_phone_country_code"];
    }
    if(json["public_phone_number"] is String) {
      publicPhoneNumber = json["public_phone_number"];
    }
    if(json["seller_shoppable_feed_type"] is String) {
      sellerShoppableFeedType = json["seller_shoppable_feed_type"];
    }
    if(json["show_shoppable_feed"] is bool) {
      showShoppableFeed = json["show_shoppable_feed"];
    }
    if(json["third_party_downloads_enabled"] is num) {
      thirdPartyDownloadsEnabled = (json["third_party_downloads_enabled"] as num).toInt();
    }
    if(json["total_igtv_videos"] is num) {
      totalIgtvVideos = (json["total_igtv_videos"] as num).toInt();
    }
    if(json["upcoming_events"] is List) {
      upcomingEvents = json["upcoming_events"] ?? [];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["about"] = about;
    if(accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    _data["account_type"] = accountType;
    if(activeStandaloneFundraisers != null) {
      _data["active_standalone_fundraisers"] = activeStandaloneFundraisers?.toJson();
    }
    if(adjustedBannersOrder != null) {
      _data["adjusted_banners_order"] = adjustedBannersOrder;
    }
    _data["ads_incentive_expiration_date"] = adsIncentiveExpirationDate;
    _data["ads_page_id"] = adsPageId;
    _data["ads_page_name"] = adsPageName;
    if(bioLinks != null) {
      _data["bio_links"] = bioLinks?.map((e) => e.toJson()).toList();
    }
    _data["biography"] = biography;
    _data["biography_email"] = biographyEmail;
    if(biographyWithEntities != null) {
      _data["biography_with_entities"] = biographyWithEntities?.toJson();
    }
    _data["business_contact_method"] = businessContactMethod;
    _data["can_add_fb_group_link_on_profile"] = canAddFbGroupLinkOnProfile;
    _data["can_hide_category"] = canHideCategory;
    _data["can_hide_public_contacts"] = canHidePublicContacts;
    _data["category"] = category;
    _data["category_id"] = categoryId;
    _data["contact_phone_number"] = contactPhoneNumber;
    _data["current_catalog_id"] = currentCatalogId;
    _data["direct_messaging"] = directMessaging;
    _data["eligible_for_text_app_activation_badge"] = eligibleForTextAppActivationBadge;
    _data["external_lynx_url"] = externalLynxUrl;
    _data["external_url"] = externalUrl;
    _data["fbid_v2"] = fbidV2;
    _data["follower_count"] = followerCount;
    _data["following_count"] = followingCount;
    _data["full_name"] = fullName;
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["has_chaining"] = hasChaining;
    _data["has_guides"] = hasGuides;
    _data["has_igtv_series"] = hasIgtvSeries;
    if(hdProfilePicUrlInfo != null) {
      _data["hd_profile_pic_url_info"] = hdProfilePicUrlInfo?.toJson();
    }
    if(hdProfilePicVersions != null) {
      _data["hd_profile_pic_versions"] = hdProfilePicVersions?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    _data["is_business"] = isBusiness;
    _data["is_call_to_action_enabled"] = isCallToActionEnabled;
    _data["is_category_tappable"] = isCategoryTappable;
    _data["is_eligible_for_request_message"] = isEligibleForRequestMessage;
    _data["is_favorite"] = isFavorite;
    _data["is_favorite_for_clips"] = isFavoriteForClips;
    _data["is_favorite_for_igtv"] = isFavoriteForIgtv;
    _data["is_favorite_for_stories"] = isFavoriteForStories;
    _data["is_open_to_collab"] = isOpenToCollab;
    _data["is_parenting_account"] = isParentingAccount;
    _data["is_private"] = isPrivate;
    _data["is_profile_audio_call_enabled"] = isProfileAudioCallEnabled;
    _data["is_verified"] = isVerified;
    _data["latest_reel_media"] = latestReelMedia;
    _data["live_subscription_status"] = liveSubscriptionStatus;
    if(locationData != null) {
      _data["location_data"] = locationData?.toJson();
    }
    _data["media_count"] = mediaCount;
    _data["merchant_checkout_style"] = merchantCheckoutStyle;
    _data["page_id"] = pageId;
    _data["page_name"] = pageName;
    if(pinnedChannelsInfo != null) {
      _data["pinned_channels_info"] = pinnedChannelsInfo?.toJson();
    }
    _data["primary_profile_link_type"] = primaryProfileLinkType;
    _data["professional_conversion_suggested_account_type"] = professionalConversionSuggestedAccountType;
    _data["profile_context"] = profileContext;
    if(profileContextFacepileUsers != null) {
      _data["profile_context_facepile_users"] = profileContextFacepileUsers;
    }
    if(profileContextLinksWithUserIds != null) {
      _data["profile_context_links_with_user_ids"] = profileContextLinksWithUserIds;
    }
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["profile_pic_url_hd"] = profilePicUrlHd;
    _data["public_email"] = publicEmail;
    _data["public_phone_country_code"] = publicPhoneCountryCode;
    _data["public_phone_number"] = publicPhoneNumber;
    _data["seller_shoppable_feed_type"] = sellerShoppableFeedType;
    _data["show_shoppable_feed"] = showShoppableFeed;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["total_igtv_videos"] = totalIgtvVideos;
    if(upcomingEvents != null) {
      _data["upcoming_events"] = upcomingEvents;
    }
    _data["username"] = username;
    return _data;
  }

  Data copyWith({
    dynamic about,
    List<dynamic>? accountBadges,
    int? accountType,
    ActiveStandaloneFundraisers? activeStandaloneFundraisers,
    List<dynamic>? adjustedBannersOrder,
    dynamic adsIncentiveExpirationDate,
    dynamic adsPageId,
    dynamic adsPageName,
    List<BioLinks>? bioLinks,
    String? biography,
    dynamic biographyEmail,
    BiographyWithEntities? biographyWithEntities,
    String? businessContactMethod,
    bool? canAddFbGroupLinkOnProfile,
    bool? canHideCategory,
    bool? canHidePublicContacts,
    String? category,
    int? categoryId,
    String? contactPhoneNumber,
    dynamic currentCatalogId,
    String? directMessaging,
    bool? eligibleForTextAppActivationBadge,
    String? externalLynxUrl,
    String? externalUrl,
    int? fbidV2,
    int? followerCount,
    int? followingCount,
    String? fullName,
    bool? hasAnonymousProfilePicture,
    bool? hasChaining,
    bool? hasGuides,
    bool? hasIgtvSeries,
    HdProfilePicUrlInfo? hdProfilePicUrlInfo,
    List<HdProfilePicVersions>? hdProfilePicVersions,
    String? id,
    bool? isBusiness,
    bool? isCallToActionEnabled,
    bool? isCategoryTappable,
    bool? isEligibleForRequestMessage,
    bool? isFavorite,
    bool? isFavoriteForClips,
    bool? isFavoriteForIgtv,
    bool? isFavoriteForStories,
    bool? isOpenToCollab,
    bool? isParentingAccount,
    bool? isPrivate,
    bool? isProfileAudioCallEnabled,
    bool? isVerified,
    int? latestReelMedia,
    String? liveSubscriptionStatus,
    LocationData? locationData,
    int? mediaCount,
    String? merchantCheckoutStyle,
    dynamic pageId,
    dynamic pageName,
    PinnedChannelsInfo? pinnedChannelsInfo,
    int? primaryProfileLinkType,
    int? professionalConversionSuggestedAccountType,
    String? profileContext,
    List<dynamic>? profileContextFacepileUsers,
    List<dynamic>? profileContextLinksWithUserIds,
    String? profilePicId,
    String? profilePicUrl,
    String? profilePicUrlHd,
    String? publicEmail,
    String? publicPhoneCountryCode,
    String? publicPhoneNumber,
    String? sellerShoppableFeedType,
    bool? showShoppableFeed,
    int? thirdPartyDownloadsEnabled,
    int? totalIgtvVideos,
    List<dynamic>? upcomingEvents,
    String? username,
  }) => Data(
    about: about ?? this.about,
    accountBadges: accountBadges ?? this.accountBadges,
    accountType: accountType ?? this.accountType,
    activeStandaloneFundraisers: activeStandaloneFundraisers ?? this.activeStandaloneFundraisers,
    adjustedBannersOrder: adjustedBannersOrder ?? this.adjustedBannersOrder,
    adsIncentiveExpirationDate: adsIncentiveExpirationDate ?? this.adsIncentiveExpirationDate,
    adsPageId: adsPageId ?? this.adsPageId,
    adsPageName: adsPageName ?? this.adsPageName,
    bioLinks: bioLinks ?? this.bioLinks,
    biography: biography ?? this.biography,
    biographyEmail: biographyEmail ?? this.biographyEmail,
    biographyWithEntities: biographyWithEntities ?? this.biographyWithEntities,
    businessContactMethod: businessContactMethod ?? this.businessContactMethod,
    canAddFbGroupLinkOnProfile: canAddFbGroupLinkOnProfile ?? this.canAddFbGroupLinkOnProfile,
    canHideCategory: canHideCategory ?? this.canHideCategory,
    canHidePublicContacts: canHidePublicContacts ?? this.canHidePublicContacts,
    category: category ?? this.category,
    categoryId: categoryId ?? this.categoryId,
    contactPhoneNumber: contactPhoneNumber ?? this.contactPhoneNumber,
    currentCatalogId: currentCatalogId ?? this.currentCatalogId,
    directMessaging: directMessaging ?? this.directMessaging,
    eligibleForTextAppActivationBadge: eligibleForTextAppActivationBadge ?? this.eligibleForTextAppActivationBadge,
    externalLynxUrl: externalLynxUrl ?? this.externalLynxUrl,
    externalUrl: externalUrl ?? this.externalUrl,
    fbidV2: fbidV2 ?? this.fbidV2,
    followerCount: followerCount ?? this.followerCount,
    followingCount: followingCount ?? this.followingCount,
    fullName: fullName ?? this.fullName,
    hasAnonymousProfilePicture: hasAnonymousProfilePicture ?? this.hasAnonymousProfilePicture,
    hasChaining: hasChaining ?? this.hasChaining,
    hasGuides: hasGuides ?? this.hasGuides,
    hasIgtvSeries: hasIgtvSeries ?? this.hasIgtvSeries,
    hdProfilePicUrlInfo: hdProfilePicUrlInfo ?? this.hdProfilePicUrlInfo,
    hdProfilePicVersions: hdProfilePicVersions ?? this.hdProfilePicVersions,
    id: id ?? this.id,
    isBusiness: isBusiness ?? this.isBusiness,
    isCallToActionEnabled: isCallToActionEnabled ?? this.isCallToActionEnabled,
    isCategoryTappable: isCategoryTappable ?? this.isCategoryTappable,
    isEligibleForRequestMessage: isEligibleForRequestMessage ?? this.isEligibleForRequestMessage,
    isFavorite: isFavorite ?? this.isFavorite,
    isFavoriteForClips: isFavoriteForClips ?? this.isFavoriteForClips,
    isFavoriteForIgtv: isFavoriteForIgtv ?? this.isFavoriteForIgtv,
    isFavoriteForStories: isFavoriteForStories ?? this.isFavoriteForStories,
    isOpenToCollab: isOpenToCollab ?? this.isOpenToCollab,
    isParentingAccount: isParentingAccount ?? this.isParentingAccount,
    isPrivate: isPrivate ?? this.isPrivate,
    isProfileAudioCallEnabled: isProfileAudioCallEnabled ?? this.isProfileAudioCallEnabled,
    isVerified: isVerified ?? this.isVerified,
    latestReelMedia: latestReelMedia ?? this.latestReelMedia,
    liveSubscriptionStatus: liveSubscriptionStatus ?? this.liveSubscriptionStatus,
    locationData: locationData ?? this.locationData,
    mediaCount: mediaCount ?? this.mediaCount,
    merchantCheckoutStyle: merchantCheckoutStyle ?? this.merchantCheckoutStyle,
    pageId: pageId ?? this.pageId,
    pageName: pageName ?? this.pageName,
    pinnedChannelsInfo: pinnedChannelsInfo ?? this.pinnedChannelsInfo,
    primaryProfileLinkType: primaryProfileLinkType ?? this.primaryProfileLinkType,
    professionalConversionSuggestedAccountType: professionalConversionSuggestedAccountType ?? this.professionalConversionSuggestedAccountType,
    profileContext: profileContext ?? this.profileContext,
    profileContextFacepileUsers: profileContextFacepileUsers ?? this.profileContextFacepileUsers,
    profileContextLinksWithUserIds: profileContextLinksWithUserIds ?? this.profileContextLinksWithUserIds,
    profilePicId: profilePicId ?? this.profilePicId,
    profilePicUrl: profilePicUrl ?? this.profilePicUrl,
    profilePicUrlHd: profilePicUrlHd ?? this.profilePicUrlHd,
    publicEmail: publicEmail ?? this.publicEmail,
    publicPhoneCountryCode: publicPhoneCountryCode ?? this.publicPhoneCountryCode,
    publicPhoneNumber: publicPhoneNumber ?? this.publicPhoneNumber,
    sellerShoppableFeedType: sellerShoppableFeedType ?? this.sellerShoppableFeedType,
    showShoppableFeed: showShoppableFeed ?? this.showShoppableFeed,
    thirdPartyDownloadsEnabled: thirdPartyDownloadsEnabled ?? this.thirdPartyDownloadsEnabled,
    totalIgtvVideos: totalIgtvVideos ?? this.totalIgtvVideos,
    upcomingEvents: upcomingEvents ?? this.upcomingEvents,
    username: username ?? this.username,
  );
}

class PinnedChannelsInfo {
  bool? hasPublicChannels;
  List<dynamic>? pinnedChannelsList;

  PinnedChannelsInfo({this.hasPublicChannels, this.pinnedChannelsList});

  PinnedChannelsInfo.fromJson(Map<String, dynamic> json) {
    if(json["has_public_channels"] is bool) {
      hasPublicChannels = json["has_public_channels"];
    }
    if(json["pinned_channels_list"] is List) {
      pinnedChannelsList = json["pinned_channels_list"] ?? [];
    }
  }

  static List<PinnedChannelsInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => PinnedChannelsInfo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_public_channels"] = hasPublicChannels;
    if(pinnedChannelsList != null) {
      _data["pinned_channels_list"] = pinnedChannelsList;
    }
    return _data;
  }

  PinnedChannelsInfo copyWith({
    bool? hasPublicChannels,
    List<dynamic>? pinnedChannelsList,
  }) => PinnedChannelsInfo(
    hasPublicChannels: hasPublicChannels ?? this.hasPublicChannels,
    pinnedChannelsList: pinnedChannelsList ?? this.pinnedChannelsList,
  );
}

class LocationData {
  String? addressStreet;
  int? cityId;
  String? cityName;
  String? instagramLocationId;
  int? latitude;
  int? longitude;
  String? zip;

  LocationData({this.addressStreet, this.cityId, this.cityName, this.instagramLocationId, this.latitude, this.longitude, this.zip});

  LocationData.fromJson(Map<String, dynamic> json) {
    if(json["address_street"] is String) {
      addressStreet = json["address_street"];
    }
    if(json["city_id"] is num) {
      cityId = (json["city_id"] as num).toInt();
    }
    if(json["city_name"] is String) {
      cityName = json["city_name"];
    }
    if(json["instagram_location_id"] is String) {
      instagramLocationId = json["instagram_location_id"];
    }
    if(json["latitude"] is num) {
      latitude = (json["latitude"] as num).toInt();
    }
    if(json["longitude"] is num) {
      longitude = (json["longitude"] as num).toInt();
    }
    if(json["zip"] is String) {
      zip = json["zip"];
    }
  }

  static List<LocationData> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => LocationData.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address_street"] = addressStreet;
    _data["city_id"] = cityId;
    _data["city_name"] = cityName;
    _data["instagram_location_id"] = instagramLocationId;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["zip"] = zip;
    return _data;
  }

  LocationData copyWith({
    String? addressStreet,
    int? cityId,
    String? cityName,
    String? instagramLocationId,
    int? latitude,
    int? longitude,
    String? zip,
  }) => LocationData(
    addressStreet: addressStreet ?? this.addressStreet,
    cityId: cityId ?? this.cityId,
    cityName: cityName ?? this.cityName,
    instagramLocationId: instagramLocationId ?? this.instagramLocationId,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    zip: zip ?? this.zip,
  );
}

class HdProfilePicVersions {
  int? height;
  String? url;
  int? width;

  HdProfilePicVersions({this.height, this.url, this.width});

  HdProfilePicVersions.fromJson(Map<String, dynamic> json) {
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

  static List<HdProfilePicVersions> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => HdProfilePicVersions.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }

  HdProfilePicVersions copyWith({
    int? height,
    String? url,
    int? width,
  }) => HdProfilePicVersions(
    height: height ?? this.height,
    url: url ?? this.url,
    width: width ?? this.width,
  );
}

class HdProfilePicUrlInfo {
  int? height;
  String? url;
  int? width;

  HdProfilePicUrlInfo({this.height, this.url, this.width});

  HdProfilePicUrlInfo.fromJson(Map<String, dynamic> json) {
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

  static List<HdProfilePicUrlInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => HdProfilePicUrlInfo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }

  HdProfilePicUrlInfo copyWith({
    int? height,
    String? url,
    int? width,
  }) => HdProfilePicUrlInfo(
    height: height ?? this.height,
    url: url ?? this.url,
    width: width ?? this.width,
  );
}

class BiographyWithEntities {
  List<Entities>? entities;
  String? rawText;

  BiographyWithEntities({this.entities, this.rawText});

  BiographyWithEntities.fromJson(Map<String, dynamic> json) {
    if(json["entities"] is List) {
      entities = json["entities"] == null ? null : (json["entities"] as List).map((e) => Entities.fromJson(e)).toList();
    }
    if(json["raw_text"] is String) {
      rawText = json["raw_text"];
    }
  }

  static List<BiographyWithEntities> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => BiographyWithEntities.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(entities != null) {
      _data["entities"] = entities?.map((e) => e.toJson()).toList();
    }
    _data["raw_text"] = rawText;
    return _data;
  }

  BiographyWithEntities copyWith({
    List<Entities>? entities,
    String? rawText,
  }) => BiographyWithEntities(
    entities: entities ?? this.entities,
    rawText: rawText ?? this.rawText,
  );
}

class Entities {
  User? user;

  Entities({this.user});

  Entities.fromJson(Map<String, dynamic> json) {
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  static List<Entities> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Entities.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }

  Entities copyWith({
    User? user,
  }) => Entities(
    user: user ?? this.user,
  );
}

class User {
  int? id;
  String? username;

  User({this.id, this.username});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is num) {
      id = (json["id"] as num).toInt();
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
    _data["id"] = id;
    _data["username"] = username;
    return _data;
  }

  User copyWith({
    int? id,
    String? username,
  }) => User(
    id: id ?? this.id,
    username: username ?? this.username,
  );
}

class BioLinks {
  String? imageUrl;
  bool? isPinned;
  bool? isVerified;
  int? linkId;
  String? linkType;
  String? lynxUrl;
  bool? openExternalUrlWithInAppBrowser;
  String? title;
  String? url;

  BioLinks({this.imageUrl, this.isPinned, this.isVerified, this.linkId, this.linkType, this.lynxUrl, this.openExternalUrlWithInAppBrowser, this.title, this.url});

  BioLinks.fromJson(Map<String, dynamic> json) {
    if(json["image_url"] is String) {
      imageUrl = json["image_url"];
    }
    if(json["is_pinned"] is bool) {
      isPinned = json["is_pinned"];
    }
    if(json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if(json["link_id"] is num) {
      linkId = (json["link_id"] as num).toInt();
    }
    if(json["link_type"] is String) {
      linkType = json["link_type"];
    }
    if(json["lynx_url"] is String) {
      lynxUrl = json["lynx_url"];
    }
    if(json["open_external_url_with_in_app_browser"] is bool) {
      openExternalUrlWithInAppBrowser = json["open_external_url_with_in_app_browser"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<BioLinks> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => BioLinks.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image_url"] = imageUrl;
    _data["is_pinned"] = isPinned;
    _data["is_verified"] = isVerified;
    _data["link_id"] = linkId;
    _data["link_type"] = linkType;
    _data["lynx_url"] = lynxUrl;
    _data["open_external_url_with_in_app_browser"] = openExternalUrlWithInAppBrowser;
    _data["title"] = title;
    _data["url"] = url;
    return _data;
  }

  BioLinks copyWith({
    String? imageUrl,
    bool? isPinned,
    bool? isVerified,
    int? linkId,
    String? linkType,
    String? lynxUrl,
    bool? openExternalUrlWithInAppBrowser,
    String? title,
    String? url,
  }) => BioLinks(
    imageUrl: imageUrl ?? this.imageUrl,
    isPinned: isPinned ?? this.isPinned,
    isVerified: isVerified ?? this.isVerified,
    linkId: linkId ?? this.linkId,
    linkType: linkType ?? this.linkType,
    lynxUrl: lynxUrl ?? this.lynxUrl,
    openExternalUrlWithInAppBrowser: openExternalUrlWithInAppBrowser ?? this.openExternalUrlWithInAppBrowser,
    title: title ?? this.title,
    url: url ?? this.url,
  );
}

class ActiveStandaloneFundraisers {
  List<dynamic>? fundraisers;
  int? totalCount;

  ActiveStandaloneFundraisers({this.fundraisers, this.totalCount});

  ActiveStandaloneFundraisers.fromJson(Map<String, dynamic> json) {
    if(json["fundraisers"] is List) {
      fundraisers = json["fundraisers"] ?? [];
    }
    if(json["total_count"] is num) {
      totalCount = (json["total_count"] as num).toInt();
    }
  }

  static List<ActiveStandaloneFundraisers> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ActiveStandaloneFundraisers.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fundraisers != null) {
      _data["fundraisers"] = fundraisers;
    }
    _data["total_count"] = totalCount;
    return _data;
  }

  ActiveStandaloneFundraisers copyWith({
    List<dynamic>? fundraisers,
    int? totalCount,
  }) => ActiveStandaloneFundraisers(
    fundraisers: fundraisers ?? this.fundraisers,
    totalCount: totalCount ?? this.totalCount,
  );
}