import 'dart:convert';

class FetchPostsResponseModel {
  final int totalItems;
  final int totalPages;
  final int page;
  final List<Item> items;
  FetchPostsResponseModel({
    required this.totalItems,
    required this.totalPages,
    required this.page,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return {
      'totalItems': totalItems,
      'totalPages': totalPages,
      'page': page,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory FetchPostsResponseModel.fromMap(Map<String, dynamic> map) {
    return FetchPostsResponseModel(
      totalItems: map['totalItems']?.toInt() ?? 0,
      totalPages: map['totalPages']?.toInt() ?? 0,
      page: map['page']?.toInt() ?? 0,
      items: List<Item>.from(map['items']?.map((x) => Item.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory FetchPostsResponseModel.fromJson(String source) =>
      FetchPostsResponseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FetchPostsResponseModel(totalItems: $totalItems, totalPages: $totalPages, page: $page, items: $items)';
  }
}

class Item {
  final String id;
  final String createdAt;
  final String lastUpdatedAt;
  final String postType;
  final UserInfo userInfo;
  final List<ShareLink> shareLinks;
  final List<PostComment> postComments;
  final LikesCount likesCount;
  final List<Like> likes;
  final List<dynamic> contestPrizes;
  final List<dynamic> actionButtons;
  final List<Asset> assets;
  final String publishAt;
  final bool canEdit;
  final bool canDelete;
  final bool futureDated;
  final bool pinned;
  final String reward;
  final String viewUrl;
  final String activityType;
  final ActivityUserInfo activityUserInfo;
  final String text;
  final int favouriteCounter;
  final bool canEnter;
  Item({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.postType,
    required this.userInfo,
    required this.shareLinks,
    required this.postComments,
    required this.likesCount,
    required this.likes,
    required this.contestPrizes,
    required this.actionButtons,
    required this.assets,
    required this.publishAt,
    required this.canEdit,
    required this.canDelete,
    required this.futureDated,
    required this.pinned,
    required this.reward,
    required this.viewUrl,
    required this.activityType,
    required this.activityUserInfo,
    required this.text,
    required this.favouriteCounter,
    required this.canEnter,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'lastUpdatedAt': lastUpdatedAt,
      'postType': postType,
      'userInfo': userInfo.toMap(),
      'shareLinks': shareLinks.map((x) => x.toMap()).toList(),
      'postComments': postComments,
      'likesCount': likesCount.toMap(),
      'likes': likes.map((x) => x.toMap()).toList(),
      'contestPrizes': contestPrizes,
      'actionButtons': actionButtons,
      'assets': assets,
      'publishAt': publishAt,
      'canEdit': canEdit,
      'canDelete': canDelete,
      'futureDated': futureDated,
      'pinned': pinned,
      'reward': reward,
      'viewUrl': viewUrl,
      'activityType': activityType,
      'activityUserInfo': activityUserInfo.toMap(),
      'text': text,
      'favouriteCounter': favouriteCounter,
      'canEnter': canEnter,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      lastUpdatedAt: map['lastUpdatedAt'] ?? '',
      postType: map['postType'] ?? '',
      userInfo: UserInfo.fromMap(map['userInfo']),
      shareLinks: List<ShareLink>.from(
          map['shareLinks']?.map((x) => ShareLink.fromMap(x))),
      postComments: List<PostComment>.from(
          map['postComments']?.map((x) => PostComment.fromMap(x))),
      likesCount: LikesCount.fromMap(map['likesCount']),
      likes: List<Like>.from(map['likes']?.map((x) => Like.fromMap(x))),
      contestPrizes: List<dynamic>.from(map['contestPrizes']),
      actionButtons: List<dynamic>.from(map['actionButtons']),
      assets: List<Asset>.from(map['assets']?.map((x) => Asset.fromMap(x))),
      publishAt: map['publishAt'] ?? '',
      canEdit: map['canEdit'] ?? false,
      canDelete: map['canDelete'] ?? false,
      futureDated: map['futureDated'] ?? false,
      pinned: map['pinned'] ?? false,
      reward: map['reward'] ?? '',
      viewUrl: map['viewUrl'] ?? '',
      activityType: map['activityType'] ?? '',
      activityUserInfo: ActivityUserInfo.fromMap(map['activityUserInfo']),
      text: map['text'] ?? '',
      favouriteCounter: map['favouriteCounter']?.toInt() ?? 0,
      canEnter: map['canEnter'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, postType: $postType, userInfo: $userInfo, shareLinks: $shareLinks, postComments: $postComments, likesCount: $likesCount, likes: $likes, contestPrizes: $contestPrizes, actionButtons: $actionButtons, assets: $assets, publishAt: $publishAt, canEdit: $canEdit, canDelete: $canDelete, futureDated: $futureDated, pinned: $pinned, reward: $reward, viewUrl: $viewUrl, activityType: $activityType, activityUserInfo: $activityUserInfo, text: $text, favouriteCounter: $favouriteCounter, canEnter: $canEnter)';
  }
}

class UserInfo {
  final String id;
  final bool guest;
  final String photoUrl;
  final String nickname;
  final String name;
  final String surname;
  final String displayName;
  final bool influencer;
  UserInfo({
    required this.id,
    required this.guest,
    required this.photoUrl,
    required this.nickname,
    required this.name,
    required this.surname,
    required this.displayName,
    required this.influencer,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'guest': guest,
      'photoUrl': photoUrl,
      'nickname': nickname,
      'name': name,
      'surname': surname,
      'displayName': displayName,
      'influencer': influencer,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      id: map['id'] ?? '',
      guest: map['guest'] ?? false,
      photoUrl: map['photoUrl'] ?? '',
      nickname: map['nickname'] ?? '',
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      displayName: map['displayName'] ?? '',
      influencer: map['influencer'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserInfo(id: $id, guest: $guest, photoUrl: $photoUrl, nickname: $nickname, name: $name, surname: $surname, displayName: $displayName, influencer: $influencer)';
  }
}

class ShareLink {
  final String name;
  final String icon;
  final String shareUrl;
  ShareLink({
    required this.name,
    required this.icon,
    required this.shareUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
      'shareUrl': shareUrl,
    };
  }

  factory ShareLink.fromMap(Map<String, dynamic> map) {
    return ShareLink(
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
      shareUrl: map['shareUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ShareLink.fromJson(String source) =>
      ShareLink.fromMap(json.decode(source));

  @override
  String toString() =>
      'ShareLink(name: $name, icon: $icon, shareUrl: $shareUrl)';
}

class LikesCount {
  final int THUMB_DOWN;
  final int THUMB_UP;
  LikesCount({
    required this.THUMB_DOWN,
    required this.THUMB_UP,
  });

  Map<String, dynamic> toMap() {
    return {
      'THUMB_DOWN': THUMB_DOWN,
      'THUMB_UP': THUMB_UP,
    };
  }

  factory LikesCount.fromMap(Map<String, dynamic> map) {
    return LikesCount(
      THUMB_DOWN: map['THUMB_DOWN']?.toInt() ?? 0,
      THUMB_UP: map['THUMB_UP']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory LikesCount.fromJson(String source) =>
      LikesCount.fromMap(json.decode(source));

  @override
  String toString() =>
      'LikesCount(THUMB_DOWN: $THUMB_DOWN, THUMB_UP: $THUMB_UP)';
}

class Like {
  final String id;
  final String createdAt;
  final String lastUpdatedAt;
  final UserInfo userInfo;
  final String emotion;
  Like({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.userInfo,
    required this.emotion,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'lastUpdatedAt': lastUpdatedAt,
      'userInfo': userInfo.toMap(),
      'emotion': emotion,
    };
  }

  factory Like.fromMap(Map<String, dynamic> map) {
    return Like(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      lastUpdatedAt: map['lastUpdatedAt'] ?? '',
      userInfo: UserInfo.fromMap(map['userInfo']),
      emotion: map['emotion'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Like.fromJson(String source) => Like.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Like(id: $id, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, userInfo: $userInfo, emotion: $emotion)';
  }
}

class ActivityUserInfo {
  final String id;
  final bool guest;
  final String photoUrl;
  final String nickname;
  final String name;
  final String surname;
  final String displayName;
  final bool influencer;
  ActivityUserInfo({
    required this.id,
    required this.guest,
    required this.photoUrl,
    required this.nickname,
    required this.name,
    required this.surname,
    required this.displayName,
    required this.influencer,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'guest': guest,
      'photoUrl': photoUrl,
      'nickname': nickname,
      'name': name,
      'surname': surname,
      'displayName': displayName,
      'influencer': influencer,
    };
  }

  factory ActivityUserInfo.fromMap(Map<String, dynamic> map) {
    return ActivityUserInfo(
      id: map['id'] ?? '',
      guest: map['guest'] ?? false,
      photoUrl: map['photoUrl'] ?? '',
      nickname: map['nickname'] ?? '',
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      displayName: map['displayName'] ?? '',
      influencer: map['influencer'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityUserInfo.fromJson(String source) =>
      ActivityUserInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ActivityUserInfo(id: $id, guest: $guest, photoUrl: $photoUrl, nickname: $nickname, name: $name, surname: $surname, displayName: $displayName, influencer: $influencer)';
  }
}

class PostComment {
  final String id;
  final String createdAt;
  final String lastUpdatedAt;
  final String text;
  final UserInfo userInfo;
  final LikesCount likesCount;
  final List<dynamic> likes;
  final bool display;
  final String type;
  PostComment({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.text,
    required this.userInfo,
    required this.likesCount,
    required this.likes,
    required this.display,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'lastUpdatedAt': lastUpdatedAt,
      'text': text,
      'userInfo': userInfo.toMap(),
      'likesCount': likesCount.toMap(),
      'likes': likes,
      'display': display,
      'type': type,
    };
  }

  factory PostComment.fromMap(Map<String, dynamic> map) {
    return PostComment(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      lastUpdatedAt: map['lastUpdatedAt'] ?? '',
      text: map['text'] ?? '',
      userInfo: UserInfo.fromMap(map['userInfo']),
      likesCount: LikesCount.fromMap(map['likesCount']),
      likes: List<dynamic>.from(map['likes']),
      display: map['display'] ?? false,
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PostComment.fromJson(String source) =>
      PostComment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostComment(id: $id, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, text: $text, userInfo: $userInfo, likesCount: $likesCount, likes: $likes, display: $display, type: $type)';
  }
}

class Asset {
  final String id;
  final String createdAt;
  final String lastUpdatedAt;
  final String url;
  final String bucket;
  final String type;
  final String mimeType;
  final int filesize;
  final int width;
  final int height;
  final String profileId;
  final List<Thumbnail> thumbnails;
  final String hash;
  final String originalFilename;
  Asset({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.url,
    required this.bucket,
    required this.type,
    required this.mimeType,
    required this.filesize,
    required this.width,
    required this.height,
    required this.profileId,
    required this.thumbnails,
    required this.hash,
    required this.originalFilename,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'lastUpdatedAt': lastUpdatedAt,
      'url': url,
      'bucket': bucket,
      'type': type,
      'mimeType': mimeType,
      'filesize': filesize,
      'width': width,
      'height': height,
      'profileId': profileId,
      'thumbnails': thumbnails.map((x) => x.toMap()).toList(),
      'hash': hash,
      'originalFilename': originalFilename,
    };
  }

  factory Asset.fromMap(Map<String, dynamic> map) {
    return Asset(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      lastUpdatedAt: map['lastUpdatedAt'] ?? '',
      url: map['url'] ?? '',
      bucket: map['bucket'] ?? '',
      type: map['type'] ?? '',
      mimeType: map['mimeType'] ?? '',
      filesize: map['filesize']?.toInt() ?? 0,
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
      profileId: map['profileId'] ?? '',
      thumbnails: List<Thumbnail>.from(
          map['thumbnails']?.map((x) => Thumbnail.fromMap(x))),
      hash: map['hash'] ?? '',
      originalFilename: map['originalFilename'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Asset.fromJson(String source) => Asset.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Asset(id: $id, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, url: $url, bucket: $bucket, type: $type, mimeType: $mimeType, filesize: $filesize, width: $width, height: $height, profileId: $profileId, thumbnails: $thumbnails, hash: $hash, originalFilename: $originalFilename)';
  }
}

class Thumbnail {
  final String id;
  final String createdAt;
  final String lastUpdatedAt;
  final String type;
  final String url;
  final String mimeType;
  final int filesize;
  final int width;
  final int height;
  Thumbnail({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    required this.type,
    required this.url,
    required this.mimeType,
    required this.filesize,
    required this.width,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'lastUpdatedAt': lastUpdatedAt,
      'type': type,
      'url': url,
      'mimeType': mimeType,
      'filesize': filesize,
      'width': width,
      'height': height,
    };
  }

  factory Thumbnail.fromMap(Map<String, dynamic> map) {
    return Thumbnail(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      lastUpdatedAt: map['lastUpdatedAt'] ?? '',
      type: map['type'] ?? '',
      url: map['url'] ?? '',
      mimeType: map['mimeType'] ?? '',
      filesize: map['filesize']?.toInt() ?? 0,
      width: map['width']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Thumbnail.fromJson(String source) =>
      Thumbnail.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Thumbnail(id: $id, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, type: $type, url: $url, mimeType: $mimeType, filesize: $filesize, width: $width, height: $height)';
  }
}
