import 'package:flutter/material.dart';
import 'result.dart';

class BMICalc extends StatefulWidget {
  const BMICalc({super.key});

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  int value = 70;
  int width = 0;
  bool gender = true;
  int age = 0;
  late double reslt;
  late String stat;
  late Color colur;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 25, 39),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 23, 25, 39),
        title:const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    gender = true;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: gender
                          ? Colors.green
                          : const Color.fromARGB(55, 69, 128, 141),
                    ),
                    width: 170,
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                          color: Colors.limeAccent[700],
                        ),
                        const Text(
                          'Male',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    gender = false;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: gender
                          ? const Color.fromARGB(55, 69, 128, 141)
                          : Colors.green,
                    ),
                    width: 170,
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 100,
                          color: Colors.limeAccent[700],
                        ),
                        const Text(
                          'female',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:const Color.fromARGB(55, 69, 128, 141),
            ),
            width: 375,
            height: 180,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 25, color: Colors.white70),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$value',
                      style: const TextStyle(fontSize: 60, color: Colors.white),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                        'cm',
                        style: TextStyle(fontSize: 24, color: Colors.white70),
                      ),
                    ),
                  ],
                ),
                Slider(
                    value: value.toDouble(),
                    thumbColor: Colors.limeAccent[700],
                    activeColor: Colors.limeAccent[700],
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) =>const Color.fromARGB(147, 143, 231, 89)),
                    min: 30,
                    max: 230,
                    onChanged: (double newValue) {
                      setState(() {
                        value = newValue.round();
                      });
                    })
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color:const Color.fromARGB(55, 69, 128, 141),
                ),
                width: 174,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'WIDTH',
                      style: TextStyle(fontSize: 22, color: Colors.white70),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (width >= 10) {
                              width -= 10;
                            }
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$width',
                          style: const TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              width += 10;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add_circle,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (width != 0) {
                              width--;
                            }
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: IconButton(
                            onPressed: () {
                              width++;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add_circle,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color:const Color.fromARGB(55, 69, 128, 141),
                ),
                width: 170,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'AGE',
                      style: TextStyle(fontSize: 22, color: Colors.white70),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (age >= 10) {
                              age -= 5;
                            }
                            setState(() {});
                          },
                          icon:const Icon(
                            Icons.remove_circle,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$age',
                          style:const TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              age += 5;
                              setState(() {});
                            },
                            icon:const Icon(
                              Icons.add_circle,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (age != 0) {
                              age--;
                            }
                            setState(() {});
                          },
                          icon:const Icon(
                            Icons.remove_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: IconButton(
                            onPressed: () {
                              age++;
                              setState(() {});
                            },
                            icon:const Icon(
                              Icons.add_circle,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.limeAccent[700],
              minimumSize: const Size(700, 79),
            ),
            onPressed: () {
              reslt = width / ((value / 100) * (value / 100));
              if (reslt < 18.5) {
                setState(() {
                  stat = 'Under Weight';
                  colur=Colors.yellow;
                });
              } else if (reslt >= 18.5 && reslt < 25) {
                setState(() {
                  stat = 'Normal Weight';
                  colur=Colors.green;
                });
              } else if (reslt >= 25 && reslt < 30) {
                setState(() {
                  stat = "Over Weight";
                  colur=Colors.orange;
                });
              } else {
                setState(() {
                  stat = "obese";
                  colur=Colors.red;
                });
              }
              ;

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return result(
                  age: age,
                  value: value,
                  gender: gender,
                  width: width,
                  reslt: reslt,
                  stat: stat, 
                  colur: colur,
                );
              }));
            },
            child:const Text(
              'CALCULATE',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
