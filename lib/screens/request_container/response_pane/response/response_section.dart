import 'package:dune/controllers/response_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'response_tabbar_container.dart';

class ResponseSection extends StatelessWidget {
  const ResponseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReponseController responseController =
        Provider.of<ReponseController>(context);
    return Flexible(
      flex: 90,
      fit: FlexFit.tight,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(7)),
        child: responseController.response != null
            ? ResponseTabBarContainer()
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/response_background.png'),
                      fit: BoxFit.cover),
                ),
              ),
      ),
    );
  }
}
