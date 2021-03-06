import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:blockchain_ticker/src/ui/widgets/dumb/skeleton.dart';
import 'package:blockchain_ticker/src/ui/global/ui_helpers.dart';
import 'package:blockchain_ticker/src/ui/views/startup/startup_view_model.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (StartupViewModel model) => model.handleStartup(),
      builder: (
        BuildContext context,
        StartupViewModel model,
        Widget child,
      ) {
        return Skeleton(
          isBusy: model.isBusy,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // TODO(yazeed): Put Your Logo Here :)

                verticalSpaceMedium(context),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }
}