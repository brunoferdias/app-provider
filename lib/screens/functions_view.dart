import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import '../model/counter_model.dart';

class FunctionsView extends StatelessWidget {
  const FunctionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 187, 187),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        elevation: 10,
        title: Text(
          'Funções',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumorphicButton(
            onPressed: () async{
              await Future.delayed(Duration(milliseconds: 300));
              Navigator.pop(context); // This pops the current screen off the navigation stack
            },
            style: NeumorphicStyle(
              depth: 4,
              intensity: 0.8,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200,
              child: NeumorphicText(
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
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: NeumorphicButton(
                      onPressed: counter.increment,
                      style: NeumorphicStyle(
                        color: Colors.grey[300]!,
                        depth: 5,
                        intensity: 0.8,
                        surfaceIntensity: 0.4,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)
                        ),
                        shadowLightColor: Colors.white,
                        shadowDarkColor: Color.fromARGB(255, 101, 99, 99),
                        shape: NeumorphicShape.convex,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'Incrementar',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: NeumorphicButton(
                      onPressed: counter.decrement,
                      style: NeumorphicStyle(
                        color: Colors.grey[300]!,
                        depth: 5,
                        intensity: 0.8,
                        surfaceIntensity: 0.8,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)
                        ),
                        shadowLightColor: Colors.white,
                        shadowDarkColor: Color.fromARGB(255, 101, 99, 99),
                        shape: NeumorphicShape.convex,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'Decrementar',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),



            ),
            const SizedBox(height: 40),
            NeumorphicText(
              'Se gostou, curte 👍',
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
          ],
        ),
      ),
    );
  }
}
