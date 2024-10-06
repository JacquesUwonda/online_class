class CourseRequestEntity {
  int? id;

  CourseRequestEntity({
    this.id,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class SearchRequestEntity {
  String? search;

  SearchRequestEntity({
    this.search,
  });

  Map<String, dynamic> toJson() => {
        "search": search,
      };
}

class CourseListResponseEntity {
  int? code;
  String? msg;
  List<CourseItem>? data;

  CourseListResponseEntity({
    this.code,
    this.msg,
    this.data,
  });

  factory CourseListResponseEntity.fromJson(Map<String, dynamic> json) =>
      CourseListResponseEntity(
        code: json["code"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<CourseItem>.from(
                json["data"].map((x) => CourseItem.fromJson(x))),
      );
}

//api post response msg
class CourseDetailResponseEntity {
  int? code;
  String? msg;
  CourseItem? data;

  CourseDetailResponseEntity({
    this.code,
    this.msg,
    this.data,
  });

  factory CourseDetailResponseEntity.fromJson(Map<String, dynamic> json) =>
      CourseDetailResponseEntity(
        code: json["code"],
        msg: json["msg"],
        data: CourseItem.fromJson(json["data"]),
      );
}

class AuthorRequestEntity {
  String? token;

  AuthorRequestEntity({
    this.token,
  });

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}

//api post response msg
class AuthorResponseEntity {
  int? code;
  String? msg;
  AuthorItem? data;

  AuthorResponseEntity({
    this.code,
    this.msg,
    this.data,
  });

  factory AuthorResponseEntity.fromJson(Map<String, dynamic> json) =>
      AuthorResponseEntity(
        code: json["code"],
        msg: json["msg"],
        data: AuthorItem.fromJson(json["data"]),
      );
}

// login result
class AuthorItem {
  String? token;
  String? name;
  String? description;
  String? avatar;
  String? job;
  int? follow;
  int? score;
  int? download;
  int? online;

  AuthorItem({
    this.token,
    this.name,
    this.description,
    this.avatar,
    this.job,
    this.follow,
    this.score,
    this.download,
    this.online,
  });

  factory AuthorItem.fromJson(Map<String, dynamic> json) => AuthorItem(
        token: json["token"],
        name: json["name"],
        description: json["description"],
        avatar: json["avatar"],
        job: json["job"],
        follow: json["follow"],
        score: json["score"],
        download: json["download"],
        online: json["online"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "name": name,
        "description": description,
        "avatar": avatar,
        "job": job,
        "follow": follow,
        "score": score,
        "download": download,
        "online": online,
      };
}

// login result
class CourseItem {
  String? userToken;
  String? name;
  String? description;
  String? thumbnail;
  String? video;
  String? price;
  String? amountTotal;
  int? lessonNum;
  int? videoLen;
  int? downNum;
  int? follow;
  int? score;
  int? id;

  CourseItem({
    this.userToken,
    this.name,
    this.description,
    this.thumbnail,
    this.video,
    this.price,
    this.amountTotal,
    this.lessonNum,
    this.videoLen,
    this.downNum,
    this.follow,
    this.score,
    this.id,
  });

  factory CourseItem.fromJson(Map<String, dynamic> json) => CourseItem(
        userToken: json["user_token"],
        name: json["name"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        video: json["video"],
        price: json["price"],
        amountTotal: json["amount_total"],
        lessonNum: json["lesson_num"],
        videoLen: json["video_len"],
        downNum: json["down_num"],
        follow: json["follow"],
        score: json["score"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_token": userToken,
        "name": name,
        "description": description,
        "thumbnail": thumbnail,
        "video": video,
        "price": price,
        "amount_total": amountTotal,
        "lesson_num": lessonNum,
        "video_len": videoLen,
        "down_num": downNum,
        "follow": follow,
        "score": score,
        "id": id,
      };
}
