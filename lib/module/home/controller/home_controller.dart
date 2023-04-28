import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_v1/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    getData();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List listDataFilm = [];
  var page = 1;

  void page1() {
    setState(() {
      page = 1;
      getData();
    });
  }

  void page2() {
    setState(() {
      page = 2;
      getData();
    });
  }

  void page3() {
    setState(() {
      page = 3;
      getData();
    });
  }

  void page4() {
    setState(() {
      page = 4;
      getData();
    });
  }

  void page5() {
    setState(() {
      page = 5;
      getData();
    });
  }

  void page6() {
    setState(() {
      page = 6;
      getData();
    });
  }

  void page7() {
    setState(() {
      page = 7;
      getData();
    });
  }

  void page8() {
    setState(() {
      page = 8;
      getData();
    });
  }

  void page9() {
    setState(() {
      page = 9;
      getData();
    });
  }

  void page10() {
    setState(() {
      page = 10;
      getData();
    });
  }

  getData() async {
    var response = await Dio().get(
      "https://api.themoviedb.org/3/discover/movie?api_key=d8e957a69af1be921c9c4466f5661e87&page=$page",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    setState(() {
      listDataFilm = obj["results"];
    });
  }
}
