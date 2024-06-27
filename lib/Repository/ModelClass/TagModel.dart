class TagModel {
  TagModel({
      this.data, 
      this.paginationToken,});

  TagModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    paginationToken = json['pagination_token'];
  }
  Data? data;
  String? paginationToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['pagination_token'] = paginationToken;
    return map;
  }

}

class Data {
  Data({
      this.count, 
      this.items,});

  Data.fromJson(dynamic json) {
    count = json['count'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  int? count;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.accessibilityCaption, 
      this.captions, 
      this.code, 
      this.comments, 
      this.commentsDisabled, 
      this.dimensions, 
      this.displayUrl, 
      this.hasUpcomingEvent, 
      this.id, 
      this.isVideo, 
      this.likedBy, 
      this.owner, 
      this.previewLikes, 
      this.takenAtTimestamp, 
      this.thumbnailUrl, 
      this.type,});

  Items.fromJson(dynamic json) {
    accessibilityCaption = json['accessibility_caption'];
    captions = json['captions'] != null ? Captions.fromJson(json['captions']) : null;
    code = json['code'];
    comments = json['comments'] != null ? Comments.fromJson(json['comments']) : null;
    commentsDisabled = json['comments_disabled'];
    dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
    displayUrl = json['display_url'];
    hasUpcomingEvent = json['has_upcoming_event'];
    id = json['id'];
    isVideo = json['is_video'];
    likedBy = json['liked_by'] != null ? LikedBy.fromJson(json['liked_by']) : null;
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    previewLikes = json['preview_likes'] != null ? PreviewLikes.fromJson(json['preview_likes']) : null;
    takenAtTimestamp = json['taken_at_timestamp'];
    thumbnailUrl = json['thumbnail_url'];
    type = json['type'];
  }
  String? accessibilityCaption;
  Captions? captions;
  String? code;
  Comments? comments;
  bool? commentsDisabled;
  Dimensions? dimensions;
  String? displayUrl;
  bool? hasUpcomingEvent;
  String? id;
  bool? isVideo;
  LikedBy? likedBy;
  Owner? owner;
  PreviewLikes? previewLikes;
  int? takenAtTimestamp;
  String? thumbnailUrl;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['accessibility_caption'] = accessibilityCaption;
    if (captions != null) {
      map['captions'] = captions?.toJson();
    }
    map['code'] = code;
    if (comments != null) {
      map['comments'] = comments?.toJson();
    }
    map['comments_disabled'] = commentsDisabled;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['display_url'] = displayUrl;
    map['has_upcoming_event'] = hasUpcomingEvent;
    map['id'] = id;
    map['is_video'] = isVideo;
    if (likedBy != null) {
      map['liked_by'] = likedBy?.toJson();
    }
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    if (previewLikes != null) {
      map['preview_likes'] = previewLikes?.toJson();
    }
    map['taken_at_timestamp'] = takenAtTimestamp;
    map['thumbnail_url'] = thumbnailUrl;
    map['type'] = type;
    return map;
  }

}

class PreviewLikes {
  PreviewLikes({
      this.count,});

  PreviewLikes.fromJson(dynamic json) {
    count = json['count'];
  }
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

}

class Owner {
  Owner({
      this.id, 
      this.username,});

  Owner.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
  }
  String? id;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    return map;
  }

}

class LikedBy {
  LikedBy({
      this.count,});

  LikedBy.fromJson(dynamic json) {
    count = json['count'];
  }
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

}

class Dimensions {
  Dimensions({
      this.height, 
      this.width,});

  Dimensions.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
  }
  int? height;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    return map;
  }

}

class Comments {
  Comments({
      this.count,});

  Comments.fromJson(dynamic json) {
    count = json['count'];
  }
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    return map;
  }

}

class Captions {
  Captions({
      this.items,});

  Captions.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

