import 'package:flutter/material.dart';

class SimpleInterest2 extends StatefulWidget {
  @override
  State<SimpleInterest2> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest2> {
  final _globalKey = GlobalKey<FormState>();
  final _firstcontroller = TextEditingController();
  final _secondcontroller = TextEditingController();
  final _thirdcontroller = TextEditingController();

  // int? principal = 0;
  // int? rate = 0;
  // int? time = 0;

  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest screen 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   principal = int.parse(value);
                // },
                keyboardType: TextInputType.number,
                controller: _firstcontroller,
                decoration: const InputDecoration(
                  labelText: 'Principal',
                  hintText: 'Enter the principal',
                  border: OutlineInputBorder(),
                ),
                 validator:(value){
                if(value!.isEmpty){
                  return 'Please enter the principal';
                }
        
                return null; 
                },
              ),
             
                const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value){
                //   rate = int.parse(value);},
                controller: _secondcontroller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Rate',
                  hintText: 'Enter the rate',
                  border: OutlineInputBorder(),
                ),
                  validator:(value){
                if(value!.isEmpty){
                  return 'Please enter the rate';
                } 
                return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value){
                //   time = int.parse(value);},
                controller: _thirdcontroller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Time',
                  hintText: 'Enter the time',
                  border: OutlineInputBorder(),
                ),
                 validator:(value){
                   if(value!.isEmpty){
                      return 'Please enter the time';
                   }
                    return null;
                 },
              ),
               const SizedBox(height: 8),
              SizedBox(
                width: 400,
                child: ElevatedButton(onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    setState(() {
                      result =
                          int.parse(_firstcontroller.text) +
                              int.parse(_secondcontroller.text) +
                              int.parse(_thirdcontroller.text);
                    });
                  }
                }, child: Text('Calculate')),
              ),
                  
              const SizedBox(height: 8),
              Text("Result:$result"),
            ],
          ),
        ),
      ),
    );
  }
}
         







