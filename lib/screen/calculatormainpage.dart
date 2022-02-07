import 'package:flutter/material.dart';

class CalculatorMainPage extends StatefulWidget {
  const CalculatorMainPage({Key? key}) : super(key: key);

  @override
  _CalculatorMainPageState createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
  double billAmount = 0;
  int wait = 1;
  int sliderpersentage = 0;

  calculateTotalTip(double billAmount, int tipPercentage) {
    double totalTip = 0.0;

    if (billAmount < 0 || billAmount.toString().isEmpty) {
      // no go!
    } else {
      totalTip = (billAmount * tipPercentage) / 100;
    }
    return totalTip;
  }

  perperson(double billAmount, int tipPercentage, int devaidedbetween) {
    double totaltiptwo = 0;
    double perperson = 0;
    totaltiptwo = ((billAmount * tipPercentage) / 100);
    perperson = (totaltiptwo / devaidedbetween);
    return perperson;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.amber,
                Colors.red,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                height: 100,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.purple[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'PER SERVENT',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                        '\$ ${(perperson(billAmount, sliderpersentage, wait).round())}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30))
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * .8,
                child: Card(
                  shadowColor: Colors.red,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          style: const TextStyle(color: Colors.purple),
                          decoration: const InputDecoration(
                            hintText: "Enter Bill, Rich KID!",
                            prefixIcon: Icon(Icons.attach_money),
                          ),
                          onChanged: (String value) {
                            try {
                              billAmount = double.parse(value);
                            } catch (exception) {
                              billAmount = 0.0;
                            }
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Divide Between :'),
                            SizedBox(
                              height: 75,
                              width: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (wait > 1) {
                                          wait--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                  ),
                                  Text('$wait'),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        wait++;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.purple,
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.add),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Total Tip :'),
                            Text(
                                "\$ ${(calculateTotalTip(billAmount, sliderpersentage))}")
                          ],
                        ),
                        Text('$sliderpersentage%'),
                        Slider(
                          min: 0,
                          max: 100,
                          divisions: 20,
                          activeColor: Colors.purple,
                          inactiveColor: Colors.grey,
                          value: sliderpersentage.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              sliderpersentage = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
