import 'package:flutter/material.dart';
import 'package:week3/game.dart';

class GamePage extends StatefulWidget {

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();
  final game = Game();
  var _feedbacktext = "";
  var _showtestbutton = false;

  void handleClickGuess() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print("Button ClickGuess");
    print(_controller.text);
    var guess = int.parse(_controller.text);
    if(guess==null){
      print('Input error');
      setState(() {
        _feedbacktext = 'Input error, please try again';
      });

    }
    else{
      var result =game.doGuess(guess);
      if (result == Result.tooHigh) {
        print('Too high');
        setState(() {
          _feedbacktext = 'Too high, please try again';
        });
      }
      else if(result ==Result.tooLow ){
        print('Too low');
        setState(() {
          _feedbacktext = 'Too low, please try again';
        });
      }
      else{
        print('Correct');
        setState(() {
          _feedbacktext = 'Good job!';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guess the Number")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please enter number between 1 and 100"),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a search term",
              ),
            ),
            ElevatedButton(onPressed: handleClickGuess, child: Text("GUESS"),),
            Text(_feedbacktext),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: _showtestbutton ? Colors.green : Colors.red,
              ),
              onPressed: () {},
              child: const Text('TEST'),
            ),
            Icon(_showtestbutton ? Icons.print : Icons.access_time_rounded),
          ],
        ),
      ),
    );
  }
}