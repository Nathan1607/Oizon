class Formation {
  String? uolib;
  String? acanom;

  Formation({
    this.uolib,
    this.acanom,
  });

  factory Formation.fromJson(Map<String, dynamic> json) {
    return Formation(
      uolib: json['uo_lib'],
      acanom: json['aca_nom'],
    );
  }
}

