import 'package:flutter/material.dart';
import 'package:flutter_application_24/Second.dart';

void main() {
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [

                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),

                ],
              ),

              padding: EdgeInsets.all(20),

              child: Column(
                children: [

                  SizedBox(height: 70),

                  Image.asset(
                    'lib/assets/images/Bank.png',
                    width: 70,
                    height: 70,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Добро пожаловать',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Добро пожаловать в банкомат.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),

                  SizedBox(height: 5),

                  Text(
                    'Нажмите кнопку, чтобы начать работу.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cod()),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      fixedSize: Size(250, 50),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Вход', overflow: TextOverflow.ellipsis),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Cod extends StatefulWidget {
  const Cod({super.key});

  @override
  State<Cod> createState() => _CodState();
}

class _CodState extends State<Cod> {
  String _enteredPin = '';
  final String _correctPin = '1234';

  void _addDigit(String digit) {
    if (_enteredPin.length < 4) {
      setState(() {
        _enteredPin += digit;
      });
      if (_enteredPin.length == 4) {
        _checkPin();
      }
    }
  }

  void _clearPin() {
    setState(() {
      _enteredPin = '';
    });
  }

  void _checkPin() {
    if (_enteredPin == _correctPin) {
      

      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Second()),
        );
      });
    } else {
      _clearPin();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(

          child: Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [

                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),

              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  width: 400,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      Text('Введите PIN-код', style: TextStyle(color: Colors.white, fontSize: 18)),

                      SizedBox(height: 5),

                      Text(
                        'Для доступа к счету',
                        textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white),
                      ),

                    ],
                  ),
                ),

                Text(
                  '*' * _enteredPin.length,
                  style: const TextStyle(fontSize: 32, letterSpacing: 8),
                ),

                Container(
                  width: 400,
                  height: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      Text(
                        'Подсказка PIN-код 1234',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildNumberButton('1'),

                    const SizedBox(width: 20),

                    _buildNumberButton('2'),

                    const SizedBox(width: 20),

                    _buildNumberButton('3'),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildNumberButton('4'),

                    const SizedBox(width: 20),

                    _buildNumberButton('5'),

                    const SizedBox(width: 20),

                    _buildNumberButton('6'),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildNumberButton('7'),

                    const SizedBox(width: 20),

                    _buildNumberButton('8'),

                    const SizedBox(width: 20),

                    _buildNumberButton('9'),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 100, height: 60),

                    const SizedBox(width: 20),

                    _buildNumberButton('0'),

                    const SizedBox(width: 20),
                    
                    _buildCancelButton(),
                  ],
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => First()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    fixedSize: const Size(350, 50),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Icon(Icons.arrow_back_ios_rounded, size: 24, color: Colors.white),

                      SizedBox(width: 10),

                      Text('Назад', overflow: TextOverflow.ellipsis),

                      SizedBox(width: 10),

                      Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.white),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return Container(
      width: 100,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft:Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),

      child: TextButton(
        onPressed: () => _addDigit(number),
        child: Text(number, style: const TextStyle(color: Colors.white, fontSize: 18)),
      ),

    );
  }

  Widget _buildCancelButton() {
    return Container(
      width: 100,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      
      child: TextButton(
        onPressed: _clearPin,
        child: const Icon(Icons.cancel_outlined, size: 24, color: Colors.white),
      ),

    );
  }
}

