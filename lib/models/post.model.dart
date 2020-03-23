import 'author.model.dart';
import 'meta.model.dart';

class Post {
  Meta meta;
  String sId;
  String title;
  String summary;
  Author author;
  String category;
  String createDate;

  Post(
      {this.meta,
      this.sId,
      this.title,
      this.summary,
      this.author,
      this.category,
      this.createDate});

  Post.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    sId = json['_id'];
    title = json['title'];
    summary = json['summary'];
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
    category = json['category'];
    createDate = json['createDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['summary'] = this.summary;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    data['category'] = this.category;
    data['createDate'] = this.createDate;
    return data;
  }
}
