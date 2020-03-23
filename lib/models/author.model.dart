class Author {
  String bio;
  String sId;
  String name;
  String title;
  String badge;
  String image;

  Author({this.bio, this.sId, this.name, this.title, this.badge, this.image});

  Author.fromJson(Map<String, dynamic> json) {
    bio = json['bio'];
    sId = json['_id'];
    name = json['name'];
    title = json['title'];
    badge = json['badge'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bio'] = this.bio;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['title'] = this.title;
    data['badge'] = this.badge;
    data['image'] = this.image;
    return data;
  }
}
