class CatFact {
  var fact;

  CatFact({this.fact}) {}

  factory CatFact.fromJson({required Map json}) {
    return CatFact(fact: json["fact"]);
  }
}
