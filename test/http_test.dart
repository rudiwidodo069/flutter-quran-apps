import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran_apps/app/data/models/detail_surah.dart';
import 'package:quran_apps/app/data/models/surah.dart';

void main() async {
  // test model surah
  Uri url = Uri.parse("https://api.quran.sutanlab.id/surah");
  var res = await http.get(url);
  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  Surah surah = Surah.fromJson(data[0]);

  print("==========Surah=========");
  print(surah.toJson());
  print("=======================");

  Uri urlDetailSurah = Uri.parse("https://api.quran.sutanlab.id/surah/19");
  var resDetailSuarh = await http.get(urlDetailSurah);
  Map<String, dynamic> dataDetailSurah =
      (json.decode(resDetailSuarh.body) as Map<String, dynamic>)["data"];

  DetailSurah detailSurah = DetailSurah.fromJson(dataDetailSurah);

  print("==========Detail Surah=========");
  print(detailSurah.toJson());
  print("============================");
}
