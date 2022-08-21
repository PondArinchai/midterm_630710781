
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temperrature extends StatefulWidget {

  @override
  State<Temperrature> createState() => _Temperrature();
}




class _Temperrature extends State<Temperrature> {

  final _controller = TextEditingController();
  var _feedbacktext = "";
  var _showtestbutton = false;
  double cf=0;
  double ck=0;
  double fc=0;
  double fk=0;
  double kc=0;
  double kf=0;

  void CelsiustoFahrenheit() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      cf=((9/5)*tem)+32;
      setState(() {
        _feedbacktext = 'Temperature: $cf°F';
      });
    }
  }
  void CelsiustoKelvin(){
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      ck=tem+273;
      setState(() {
        _feedbacktext = 'Temperature: $ck°K';
      });
    }
  }
  void FahrenheittoCelsius(){
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      fc=(5/9)*(tem-32);
      setState(() {
        _feedbacktext = 'Temperature: $fc°C';
      });
    }
  }
  void FahrenheittoKelvin(){
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      fk=(5/9)*(tem-32)+273;
      setState(() {
        _feedbacktext = 'Temperature: $fk°K';
      });
    }
  }
  void KelvintoCelsius(){
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      kc=tem-273;
      setState(() {
        _feedbacktext = 'Temperature: $kc°C';
      });
    }
  }
  void KelvintoFahrenheit(){
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var tem = double.tryParse(_controller.text);

    if (tem == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Enter put the Temperature';
      });
    }
    else{
      kf=((9/5)*tem-273)+32;
      setState(() {
        _feedbacktext = 'Temperature: $kf°F';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Midtrem Temperature")),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(""),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a Temperature",
              ),
            ),

            ElevatedButton(onPressed: CelsiustoFahrenheit, child: Text("Celsius to Fahrenheit"),),

            ElevatedButton(onPressed: CelsiustoKelvin, child: Text("Celsius to Kelvin"),),

            ElevatedButton(onPressed: FahrenheittoCelsius, child: Text("Fahrenheit to Celsius"),),

            ElevatedButton(onPressed: FahrenheittoKelvin, child: Text("Fahrenheit to Kelvin"),),

            ElevatedButton(onPressed: KelvintoCelsius, child: Text("Kelvin to Celsius"),),

            ElevatedButton(onPressed: KelvintoFahrenheit, child: Text("Kelvin to Fahrenheit"),),
            Text(_feedbacktext),
          ],
        ),
      ),
    );
  }

}
