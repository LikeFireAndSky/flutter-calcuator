import 'package:flutter/material.dart';
import 'calculate_button.dart';
import 'input.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String sum = '';
  String? _buttonText = '';

  final List _buttonList = [
    '더히기', '빼기', '곱하기', '나누기'
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = List.empty(growable: true);
  TextEditingController control1 = TextEditingController();
  TextEditingController control2 = TextEditingController();


  @override
  void initState() {
    super.initState();

    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(
        value: item,
        child: Text(item),
      ));
    }

    _buttonText = _dropDownMenuItems[0].value;
  }

  void _add() {
    setState(() {
      sum = (int.parse(control1.text) + int.parse(control2.text)).toString();
    });
  }

  void _subtract() {
    setState(() {
      sum = (int.parse(control1.text) - int.parse(control2.text)).toString();
    });
  }

  void _multiply() {
    setState(() {
      sum = (int.parse(control1.text) * int.parse(control2.text)).toString();
    });
  }

  void _divide() {
    setState(() {
      sum = (int.parse(control1.text) / int.parse(control2.text)).toString();
    });
  }

  void _changeButtonText(String? value) {
    setState(() {
      _buttonText = value;
    });
  }

  Function _getFunction() {
    switch (_buttonText) {
      case '더하기':
        return _add;
      case '빼기':
        return _subtract;
      case '곱하기':
        return _multiply;
      case '나누기':
        return _divide;
      default:
        return _add;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child : Text('결과 : $sum', style: const TextStyle(fontSize: 20),),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : <Widget>[
                InputNumber(control: control1, placeholder: '첫번째 숫자를 입력하세요',),
                InputNumber(control: control2, placeholder: '두번째 숫자를 입력하세요',)
                ]),
            CalculatorButton(title: '$_buttonText', fn: _getFunction()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Center(
                child: DropdownButton(
                  padding: const EdgeInsets.all(16),
                  items: _dropDownMenuItems, 
                  onChanged: (String? value) { _changeButtonText(value); }, 
                  value: _buttonText, ),
              )
              ,)
          ],
        ),
      );
  }
}

