import 'package:flutter/material.dart';

class UserBalance extends StatelessWidget {
  final String name;
  final double balance;

  const UserBalance({
    Key? key,
    required this.name,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome $name'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              width: 700,
              height: 300,
            child: Card(
              elevation: 6,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: DefaultTextStyle(
                  style: TextStyle(color: Colors.white,),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account No: ##########', style: TextStyle(fontSize: 20),),
                      SizedBox(height: 10,),
                      Text(
                        '$name',
                        style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Balance: \$${balance.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 28),
                      ),
                      const SizedBox(height: 40),

                      GestureDetector(
                        onTap: () {
                          print('$name has sent money');
                        },
                        child: Container(
                          height: 55,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                            ),
                          child: Center(
                            child: const Text('Send Money', 
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold, 
                              color: Colors.black),)),
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
