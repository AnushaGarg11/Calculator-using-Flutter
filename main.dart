import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  Widget calbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            color: txtcolor,
            fontSize: 35,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(btncolor),
          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
          shape: MaterialStatePropertyAll(CircleBorder()),
          //fixedSize: MaterialStatePropertyAll(FixedSizeListIterator
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text("Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('0',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 100,
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("C", Colors.white, Colors.orange),
                calbutton("X", Colors.white, Colors.orange),
                calbutton("%", Colors.white, Colors.orange),
                calbutton("/", Colors.white, Colors.orange),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("9", Colors.white, Colors.black),
                calbutton("8", Colors.white, Colors.black),
                calbutton("7", Colors.white, Colors.black),
                calbutton("x", Colors.white, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("6", Colors.white, Colors.black),
                calbutton("5", Colors.white, Colors.black),
                calbutton("4", Colors.white, Colors.black),
                calbutton("-", Colors.white, Colors.black),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calbutton("3", Colors.white, Colors.black),
                calbutton("2", Colors.white, Colors.black),
                calbutton("1", Colors.white, Colors.black),
                calbutton("+", Colors.white, Colors.black),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('0',
                      style: TextStyle(color: Colors.black, fontSize: 35)),
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(20, 10, 120, 10)),
                    shape: MaterialStatePropertyAll(StadiumBorder()),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                ),
                calbutton(".", Colors.white, Colors.black),
                calbutton("=", Colors.white, Colors.black),
              ],
            ),
          ],
        ));
  }
}
