import 'package:apagar/screens/functions_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import '../model/counter_model.dart';

class ShowNumber extends StatelessWidget {
  ShowNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 187, 187),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        elevation: 10,
        title: Text(
          'Usando o Provider',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.bold,
            fontSize: 26
          ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphicText(
              'Contador: ${counter.counter}',
              style: NeumorphicStyle(
                depth: 4,
                intensity: 0.7,
                color: Colors.black.withOpacity(0.7),
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            NeumorphicButton(
              onPressed: () async {
                await Future.delayed(Duration(milliseconds: 500));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FunctionsView()),
                );
              },
              style: NeumorphicStyle(
                color: Colors.grey[300]!,
                depth: 5,
                intensity: 0.8,
                shadowLightColor: Colors.white,
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(20)
                ),
                shadowDarkColor: Color.fromARGB(255, 101, 99, 99),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text(
                  'Funções',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
