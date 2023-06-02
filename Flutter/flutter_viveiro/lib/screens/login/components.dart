import 'package:flutter/material.dart';

import '../Home/home.dart';

Widget BotonLogin (BuildContext context){
  return SizedBox(
    height: 52,
    width: MediaQuery.of(context).size.width * .80,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 12),
      ),
    ),
  );
}

class SwitchLogin extends StatefulWidget {
  final bool switchValue;

  const SwitchLogin(this.switchValue, {Key? key}) : super(key: key);

  @override
  _SwitchLoginState createState() => _SwitchLoginState();
}

class _SwitchLoginState extends State<SwitchLogin> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.switchValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Switch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Manter Conectado',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
