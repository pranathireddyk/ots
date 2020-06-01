import 'package:flutter/material.dart';
import 'package:ots/ots.dart';

void main() => runApp(
      MaterialApp(
        home: OTS(
          child: Home(),
        ),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Show LoadToast'),
                  onPressed: () {
                    showNotification(
                      message: 'Hello, this is notification',
                      title: 'Test',
                      backgroundColor: Colors.blue,
                      autoDismissible: true,
                      notificationDuration: 2500,
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text('LoadToast Success'),
                  onPressed: () {
//                    hideLoadToastWithSuccess();
                  },
                ),
                RaisedButton(
                  color: Colors.red,
                  child: Text('LoadToast Error'),
                  onPressed: () {
//                    hideLoadToastWithError();
                  },
                ),
                RaisedButton(
                  color: Colors.orange,
                  child: Text('LoadToast Warning'),
                  onPressed: () {
//                    hideLoadToastWithWarning();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
