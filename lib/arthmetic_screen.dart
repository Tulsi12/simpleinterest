import 'package:flutter/material.dart';
class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);
  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}
class _SimpleCalculatorState extends State<SimpleCalculator> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  int result = 0;
  String? group = "MyGroup";
  _calculate() {
    if (group == "add") {
      setState(() {
        result = int.parse(_firstController.text) +
            int.parse(_secondController.text);
      });
    } else if (group == "subtract") {
      setState(() {
        result = int.parse(_firstController.text) -
            int.parse(_secondController.text);
      });
    } else if (group == "multiply") {
      setState(() {
        result = int.parse(_firstController.text) *
            int.parse(_secondController.text);
      });
    } else if (group == "divide") {
      setState(() {
        result = int.parse(_firstController.text) ~/
            int.parse(_secondController.text);
      });
    } else {
      setState(() {
        result = 0;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple  Calculator'),
        elevation: 0,
      ),
      // simple interest calculator
      body: Form(
        key: _globalkey,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Simple Calculator',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _firstController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: 'Principal',
                        hintText: 'Enter Principal',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter principal';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _secondController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: 'Rate of Interest',
                        hintText: 'Enter Rate of Interest',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter rate of interest';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    title: const Text('Add'),
                    leading: Radio(
                      value: 'add',
                      groupValue: group,
                      onChanged: (String? value) {
                        setState(() {
                          group = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Subtract'),
                    leading: Radio(
                      value: 'subtract',
                      groupValue: group,
                      onChanged: (String? value) {
                        setState(() {
                          group = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Multiply'),
                    leading: Radio(
                      value: 'multiply',
                      groupValue: group,
                      onChanged: (String? value) {
                        setState(() {
                          group = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Divide'),
                    leading: Radio(
                      value: 'divide',
                      groupValue: group,
                      onChanged: (String? value) {
                        setState(() {
                          group = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Calculate'),
                      onPressed: () {
                        if (_globalkey.currentState!.validate()) {
                          _calculate();
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Addition is $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}