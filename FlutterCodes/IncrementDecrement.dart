import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberInputWithIncrementDecrement(),
    );
  }
}

class NumberInputWithIncrementDecrement extends StatefulWidget {
  @override
  _NumberInputWithIncrementDecrementState createState() =>
      _NumberInputWithIncrementDecrementState();
}

class _NumberInputWithIncrementDecrementState
    extends State<NumberInputWithIncrementDecrement> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Field increment decrement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextFormField(
                controller: _controller,
                keyboardType: TextInputType.numberWithOptions(
                    decimal: false, signed: false),
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  minWidth: 5.0,
                  child: Icon(Icons.arrow_drop_up),
                  onPressed: () {
                    int currentValue = int.parse(_controller.text);
                    setState(() {
                      currentValue++;
                      _controller.text =
                          (currentValue).toString(); // incrementing value
                    });
                  },
                ),
                MaterialButton(
                  minWidth: 5.0,
                  child: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    int currentValue = int.parse(_controller.text);
                    setState(() {
                      print("Setting state");
                      currentValue--;
                      _controller.text =
                          (currentValue).toString(); // decrementing value
                    });
                  },
                ),
              ],
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
