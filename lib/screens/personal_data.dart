import '../base/loading_state.dart';
import 'package:flutter/material.dart';

class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => new _PersonalDataState();
}

class _PersonalDataState extends LoadingBaseState<PersonalData> {

  @override
  Widget content() {
    return new Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
      ),
    );
  }


}
