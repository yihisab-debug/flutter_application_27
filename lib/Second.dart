import 'package:flutter/material.dart';
import 'package:flutter_application_24/main.dart';

void main() {
  runApp(Second());
}

class Second extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Second> {
  double balance = 5000;
  List<String> history = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Баланс',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(
        balance: balance,
        onWithdraw: (amount) {
          setState(() {
            balance -= amount;
            history.add('Снято: $amount | Остаток: $balance');
          });
        },
        onDeposit: (amount) {
          setState(() {
            balance += amount;
            history.add('Пополнено: $amount | Баланс: $balance');
          });
        },
        history: history,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final double balance;
  final void Function(double) onWithdraw;
  final void Function(double) onDeposit;
  final List<String> history;

  const HomePage({
    required this.balance,
    required this.onWithdraw,
    required this.onDeposit,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        
                    Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    
            child: 
            Column(
              children: [

                Container(
                          width: 400,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                            ),
                          ), 

                          child: Column(
                            children: [
                    
                            SizedBox(height: 10),

                              Text(
                                'Главное меню',
                                  textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25, color: Colors.white),
                              ),

                            SizedBox(height: 2),

                              Text(
                                'Выберите операцию',
                                  textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12, color: Colors.white),
                              ),

                            SizedBox(height: 10),

                            ],
                          ),
                ),

          const SizedBox(height: 20),

                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),

              child: Text(
                'Баланс: ${balance.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              
            ),



                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Third(balance: balance),
                              ),
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('💰 Проверить баланс', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Fourth(onWithdraw: onWithdraw),
                              ),
                            );                         
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('💸 Снять деньги', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Fifth(onDeposit: onDeposit),
                              ),
                            );                      
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('💳 Пополнить счет', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sixth(history: history),
                              ),
                            );                               
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text('📊 История операций', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),

                        SizedBox(height: 20),


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
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Icon(Icons.arrow_back_ios_new_rounded, size: 24, color: Colors.white,),

                              SizedBox(width: 10),

                              Text('Выход', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.white,),
                              
                            ],
                          ),
                        ),

              ],
            ),
          ),

        
      ),
    );
  }
}


class Third extends StatelessWidget {
  final double balance;

  const Third({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        
                  Container(
                    height: 600,
                    width: 400,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),

                    child: Column( 
                      children: [
                Container(
                          width: 400,
                          height: 80,

                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                            ),
                          ), 

                          child: Column(
                            children: [
                    
                            SizedBox(height: 10),

                              Text(
                                'Главное меню',
                                  textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25, color: Colors.white),
                              ),

                            SizedBox(height: 2),

                              Text(
                                'Выберите операцию',
                                  textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12, color: Colors.white),
                              ),

                            SizedBox(height: 10),

                            ],
                          ),
                ),

                            SizedBox(height: 20),


         Container(
          padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),

            child: Text(
            'Ваш баланс: ${balance.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),

        
                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Second()),
                            );                               
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Icon(Icons.arrow_back_ios_rounded, size: 24, color: Colors.black,),

                              SizedBox(width: 10),

                              Text('Назад', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),
                    ]
                  ),
                   
        ),
      ),
    );
  }
}

class Fourth extends StatefulWidget {
  final void Function(double) onWithdraw;

  const Fourth({required this.onWithdraw});

  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<Fourth> {
  final TextEditingController _controller = TextEditingController();

  void _withdraw(double amount) {
    widget.onWithdraw(amount);
    Navigator.pop(context);
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
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
    ),

    child: Center(
      child: Column(
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

                    Text(
                      'Снятие денег',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Выберите или введите сумму',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),

                  ],
                ),
              ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (var amount in [100, 500, 1000, 2000])
              
                ElevatedButton(
                  onPressed: () => _withdraw(amount.toDouble()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _withdraw == amount ? Colors.green : Colors.red,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(150, 50),
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                  child: Text('$amount'),
                ),
            ],
          ),

          const SizedBox(height: 20),

              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(labelText: 'Введите сумму'),
                  keyboardType: TextInputType.number,
                ),
              ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              double? value = double.tryParse(_controller.text);
              if (value != null && value > 0) {
                _withdraw(value);
              }
            },
                  
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(350, 50),
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

            child: const Text('Подтвердить'),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              fixedSize: Size(350, 50),
              textStyle: TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 24,
                  color: Colors.black,
                ),

                SizedBox(width: 10),

                Text(
                  'Назад',
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(width: 10),

                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                  color: Colors.black,
                ),

              ],
            ),
          ),

        ],
      ),
    ),
  ),
),
),
);
}
}

class Fifth extends StatefulWidget {
  final void Function(double) onDeposit;

  const Fifth({required this.onDeposit});

  @override
  _DepositPageState createState() => _DepositPageState();
}

class _DepositPageState extends State<Fifth> {
  final TextEditingController _controller = TextEditingController();

  void _deposit(double amount) {
    widget.onDeposit(amount);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(

  child: Container(
    height: 600,
    width: 400,

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [

        BoxShadow(
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),

      ],
    ),
        
       child:  Center(
      child: Column(
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

                    Text(
                      'Пополнение счёта',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Выберите или введите сумму',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),

                  ],
                ),
              ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (var amount in [100, 500, 1000, 2000])
              
                ElevatedButton(
                  onPressed: () => _deposit(amount.toDouble()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _deposit == amount ? Colors.green : Colors.green,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(150, 50),
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                  child: Text('$amount'),
                ),
            ],
          ),

            const SizedBox(height: 20),

              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(labelText: 'Введите сумму'),
                  keyboardType: TextInputType.number,
                ),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                double? value = double.tryParse(_controller.text);
                if (value != null && value > 0) {
                  _deposit(value);
                }
              },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(350, 50),
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              child: const Text('Подтвердить'),
            ),

                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Second()),
                            );                               
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: Size(350, 50),
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Icon(Icons.arrow_back_ios_rounded, size: 24, color: Colors.black,),

                              SizedBox(width: 10),

                              Text('Назад', overflow: TextOverflow.ellipsis,),

                              SizedBox(width: 10),

                              Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black,),
                              
                            ],
                          ),
                        ),
        ],
      ),
    ),
  ),
  ),
  ),
  ),
  );     
  }
}

class Sixth extends StatelessWidget {
  final List<String> history;

  const Sixth({required this.history, super.key});

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
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),

            child: Column(
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

                  child: Center(

                    child: Text(
                      'История операций',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    
                    child: ListView.builder(
                      itemCount: history.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                          child: Center(

                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade50,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),

                              child: Center(

                                child: Text(
                                  history[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Second()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(350, 50),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [

                      Icon(Icons.arrow_back_ios_rounded, size: 24, color: Colors.black),

                      SizedBox(width: 10),

                      Text('Назад', overflow: TextOverflow.ellipsis), 
                      
                      SizedBox(width: 10),

                      Icon(Icons.arrow_forward_ios_rounded, size: 24, color: Colors.black),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
