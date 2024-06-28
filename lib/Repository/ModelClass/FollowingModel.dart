class FollowingModel {
  FollowingModel({
      this.data, 
      this.paginationToken,});

  FollowingModel.fromJson(dynamic json) {
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
      this.items, 
      this.total,});

  Data.fromJson(dynamic json) {
    count = json['count'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    total = json['total'];
  }
  int? count;
  List<Items>? items;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    return map;
  }

}

class Items {
  Items({
      this.fullName, 
      this.id, 
      this.isPrivate, 
      this.isVerified, 
      this.latestStoryTs, 
      this.profilePicUrl, 
      this.username,});

  Items.fromJson(dynamic json) {
    fullName = json['full_name'];
    id = json['id'];
    isPrivate = json['is_private'];
    isVerified = json['is_verified'];
    latestStoryTs = json['latest_story_ts'];
    profilePicUrl = json['profile_pic_url'];
    username = json['username'];
  }
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isVerified;
  int? latestStoryTs;
  String? profilePicUrl;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['full_name'] = fullName;
    map['id'] = id;
    map['is_private'] = isPrivate;
    map['is_verified'] = isVerified;
    map['latest_story_ts'] = latestStoryTs;
    map['profile_pic_url'] = profilePicUrl;
    map['username'] = username;
    return map;
  }

}