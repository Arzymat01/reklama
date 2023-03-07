import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadService {
  void ShowLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Center(
            child: CupertinoActivityIndicator(radius: 20),
          ),
          content: Text('Куто турунуз ...'),
        );
      },
    );
  }
}
