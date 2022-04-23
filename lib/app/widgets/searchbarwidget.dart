import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:inspector_brandon_frontend/app/core/const/icons.dart';
import 'package:inspector_brandon_frontend/app/core/const/string.dart';
import 'package:inspector_brandon_frontend/app/core/const/vars.dart';
import 'package:inspector_brandon_frontend/app/modules/home/controllers/home_controller.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Theme.of(context).colorScheme.background,
          child: SizedBox(
            width: 960.w,
            child: TextField(
              onChanged: (str) => {controller.inputString.value = str},
              style: Theme.of(context).textTheme.headline3,
              decoration: const InputDecoration(
                  hintText: sHintTextSearchBar,
                  labelText: sLabelTextSearchBar,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: mapMaker,
                  ),
                  border: OutlineInputBorder()),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            controller.getData("Coca-Cola");
            Get.snackbar(
              sRequestSent,
              controller.inputString.value,
              snackPosition: SnackPosition.BOTTOM,
              colorText: Theme.of(context).colorScheme.surface,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              maxWidth: 500.w,
              animationDuration: const Duration(milliseconds: 500),
              isDismissible: true,
              duration: const Duration(milliseconds: 2500),
            );
          },
          child:
              Padding(padding: EdgeInsets.all(vLspacing.w), child: iconSearch),
          style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.button,
              primary: Theme.of(context).colorScheme.secondary),
        )
      ],
    );
  }
}
