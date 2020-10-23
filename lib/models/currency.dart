class Currency {
  String title;
  String buying;
  String selling;
  String type;

  Currency(this.title, this.buying, this.selling, this.type);
  Currency.empty();

  Currency.fromJson(Map json, title) {
    this.title = title;
    this.buying = json['Alış'];
    this.selling = json['Satış'];
    this.type = json['Tür'];
  }
  @override
  String toString() {
    // ignore: unnecessary_brace_in_string_interps
    return 'title : ${title}, buying: ${buying}, selling: ${selling}, type: ${type}';
  }
}
