import 'package:flutter/material.dart';

import '../../core/widgets/secondary_appbar_text.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SecondaryAppBarText(
          title: 'Add Card',
        ),
      ),
    );
  }
}
