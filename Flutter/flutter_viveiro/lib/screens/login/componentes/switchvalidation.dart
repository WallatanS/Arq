import 'package:flutter/material.dart';

class SwitchValidation extends StatefulWidget {
  final bool switchValue;

  const SwitchValidation(this.switchValue, {Key? key}) : super(key: key);

  @override
  _SwitchValidationState createState() => _SwitchValidationState();
}

class _SwitchValidationState extends State<SwitchValidation> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.switchValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
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
    );
  }
}
