import 'package:flutter/material.dart';
class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);
  @override
  State<game> createState() => _gameState();
}
class _gameState extends State<game> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  int result = 0;
 
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
        elevation: 0,
      ),
      // number generator
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
                    'Game',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _firstController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: '',
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
                
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Calculate'),
                      onPressed: () {
                        if (_globalkey.currentState!.validate()) {
                          _gameState();
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