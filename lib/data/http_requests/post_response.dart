/// id : 1
/// title : "This is a test article"
/// content : "This is an article to test the API"
/// slug : "this-is-a-test-article"
/// picture : "https://fakeimg.pl/350x200/?text=FreeFakeAPI"
/// user : "/api/users/1"
/// _links : {"self":{"href":"/api/api/posts/1"},"modify":{"href":"/api/api/posts/1"},"delete":{"href":"/api/api/posts/1"}}

class PostResponse {
  PostResponse({
      int? id, 
      String? title, 
      String? content, 
      String? slug, 
      String? picture, 
      String? user, 
      Links? links,}){
    _id = id;
    _title = title;
    _content = content;
    _slug = slug;
    _picture = picture;
    _user = user;
    _links = links;
}

  PostResponse.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _content = json['content'];
    _slug = json['slug'];
    _picture = json['picture'];
    _user = json['user'];
    _links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  int? _id;
  String? _title;
  String? _content;
  String? _slug;
  String? _picture;
  String? _user;
  Links? _links;
PostResponse copyWith({  int? id,
  String? title,
  String? content,
  String? slug,
  String? picture,
  String? user,
  Links? links,
}) => PostResponse(  id: id ?? _id,
  title: title ?? _title,
  content: content ?? _content,
  slug: slug ?? _slug,
  picture: picture ?? _picture,
  user: user ?? _user,
  links: links ?? _links,
);
  int? get id => _id;
  String? get title => _title;
  String? get content => _content;
  String? get slug => _slug;
  String? get picture => _picture;
  String? get user => _user;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['content'] = _content;
    map['slug'] = _slug;
    map['picture'] = _picture;
    map['user'] = _user;
    if (_links != null) {
      map['_links'] = _links?.toJson();
    }
    return map;
  }

}

/// self : {"href":"/api/api/posts/1"}
/// modify : {"href":"/api/api/posts/1"}
/// delete : {"href":"/api/api/posts/1"}

class Links {
  Links({
      Self? self, 
      Modify? modify, 
      Delete? delete,}){
    _self = self;
    _modify = modify;
    _delete = delete;
}

  Links.fromJson(dynamic json) {
    _self = json['self'] != null ? Self.fromJson(json['self']) : null;
    _modify = json['modify'] != null ? Modify.fromJson(json['modify']) : null;
    _delete = json['delete'] != null ? Delete.fromJson(json['delete']) : null;
  }
  Self? _self;
  Modify? _modify;
  Delete? _delete;
Links copyWith({  Self? self,
  Modify? modify,
  Delete? delete,
}) => Links(  self: self ?? _self,
  modify: modify ?? _modify,
  delete: delete ?? _delete,
);
  Self? get self => _self;
  Modify? get modify => _modify;
  Delete? get delete => _delete;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_self != null) {
      map['self'] = _self?.toJson();
    }
    if (_modify != null) {
      map['modify'] = _modify?.toJson();
    }
    if (_delete != null) {
      map['delete'] = _delete?.toJson();
    }
    return map;
  }

}

/// href : "/api/api/posts/1"

class Delete {
  Delete({
      String? href,}){
    _href = href;
}

  Delete.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Delete copyWith({  String? href,
}) => Delete(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}

/// href : "/api/api/posts/1"

class Modify {
  Modify({
      String? href,}){
    _href = href;
}

  Modify.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Modify copyWith({  String? href,
}) => Modify(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}

/// href : "/api/api/posts/1"

class Self {
  Self({
      String? href,}){
    _href = href;
}

  Self.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Self copyWith({  String? href,
}) => Self(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}