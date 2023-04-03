class NewsModel {
  String? status;
  int? totalResults;
  List<articalModal>? articallist = [];

  NewsModel({this.status, this.totalResults, this.articallist});

  NewsModel newsFromJson(Map m1) {
    status = m1['status'];
    totalResults = m1['totalResults'];

    List hlist = m1['articles'];
    articallist = hlist.map((e) => articalModal().extraJsonParsing(e)).toList();
    NewsModel n1 = NewsModel(
        articallist: articallist, status: status, totalResults: totalResults);
    return n1;
  }
}

class articalModal {
  String? author, title, description, url, urlToImage, publishedAt, content;
  Source? s1;

  articalModal(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content,
      this.s1});

  articalModal extraJsonParsing(Map m1) {
    author = m1['author'];
    title = m1['title'];
    content = m1['content'];
    description = m1['description'];
    publishedAt = m1['publishedAt'];
    url = m1['url'];
    urlToImage = m1['urlToImage'];

    Source s1 = Source().SourceFromJson(m1['source']);
    articalModal h1 = articalModal(
        title: title,
        content: content,
        author: author,
        description: description,
        publishedAt: publishedAt,
        s1: s1,
        url: url,
        urlToImage: urlToImage);
    return h1;
  }
}

class Source {
  String? name, id;

  Source({this.name, this.id});

  Source SourceFromJson(Map m1) {
    id = m1['id'];
    name = m1['name'];
    Source s1 = Source(id: id, name: name);
    return s1;
  }
}
