import 'dart:convert';

import '../services/sakai_services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;



class SakaiController {
  final SakaiService _service = SakaiService(sakaiUrl: 'https://xlms.myworkspace.vn/');

  Future<http.Response> authenticate(String username, String password){
    return _service.authenticate(username, password);
  }

  Future<List<String>> getSites() async {
    var response = await _service.getSites();
    var jsonSite = json.decode(response.body);
    List<String> courses = [];

    for(var site in jsonSite['site_collection']) {
      courses.add(site['entityTitle']);
    }
    return courses;
  }
}