class Meta {
  String description;
  String keywords;
  String url;

  Meta({this.description, this.keywords, this.url});

  Meta.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    keywords = json['keywords'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['keywords'] = this.keywords;
    data['url'] = this.url;
    return data;
  }
}
