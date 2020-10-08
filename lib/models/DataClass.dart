class Data {
  String name;
  String sub1;
  String sub2;
  String sub3;
  String sub4;
  String sub5;
  String sub6;

  Data(
    this.name,
    this.sub1,
    this.sub2,
    this.sub3,
    this.sub4,
    this.sub5,
    this.sub6,
  );

  //for database
  Map<String, dynamic> toJson() => {
        'name': name,
        'sub1': sub1,
        'sub2': sub2,
        'sub3': sub3,
        'sub4': sub4,
        'sub5': sub5,
        'sub6': sub6,
      };
}
