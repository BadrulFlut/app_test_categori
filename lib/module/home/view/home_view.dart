import 'package:flutter/material.dart';
import 'package:movie_app_v1/core.dart';
import 'package:movie_app_v1/module/home/widget/button_page.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buttonPage(() {
                    controller.page1();
                  }, "page 1",
                      controller.page == 1 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page2();
                  }, "page 2",
                      controller.page == 2 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page3();
                  }, "page 3",
                      controller.page == 3 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page4();
                  }, "page 4",
                      controller.page == 4 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page5();
                  }, "page 5",
                      controller.page == 5 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page6();
                  }, "page 6",
                      controller.page == 6 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page7();
                  }, "page 7",
                      controller.page == 7 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page8();
                  }, "page 8",
                      controller.page == 8 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page9();
                  }, "page 9",
                      controller.page == 9 ? Colors.grey : Colors.blue),
                  const SizedBox(
                    width: 5,
                  ),
                  buttonPage(() {
                    controller.page10();
                  }, "page 10",
                      controller.page == 10 ? Colors.grey : Colors.blue),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            controller.listDataFilm.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.listDataFilm.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      final data = controller.listDataFilm[index];
                      return Card(
                        child: ListTile(
                          title: Text(data['original_title']),
                          subtitle: Text(data['overview']),
                        ),
                      );
                    },
                  )
          ],
        ),
      ),
    ));
  }

  @override
  State<HomeView> createState() => HomeController();
}
