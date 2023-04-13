class Memory {
  // onde se grava as memorias das operações
  static const operations = [
    '÷',
    'x',
    '–',
    '+',
    '=',
  ];
  String _value = '0';
  final _buffer = [0.0, 0.0];
  int _index = 0;
  String? _operator;
  bool _cleanValue = false;

  void command(String command) {
    if (command == 'C') {
      _clear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else if (command == 'del') {
      _clearNumber();
    } else {
      _addNumber(command);
    }
  }

  //Seta a operação
  _setOperation(String newOperator) {
    //caso o index for zero,ele seta um novo operador
    print(newOperator);
    if (_index == 0) {
      _operator = newOperator;
      _index = 1;
      _cleanValue = true;
    }
    //senao ele calcula
    else {
      _buffer[0] = _calculate();
      _buffer[1] = 0.0;
      _value = _buffer[0].toString();
      _value = _value.endsWith('.0') ? _value.split('.')[0] : _value;
      bool equal = newOperator == '=';
      //caso haja o operador igual, ele recebe o valor vazio, senao ele recebe o nobo operador
      _operator = equal ? '' : newOperator;
      //caso exista o operador igual, o index muda para 0 senao muda para 1
      _index = equal ? 0 : 1;
    }
    _cleanValue = true;
  }

  //Adiciona o numero na tela
  _addNumber(String number) {
    final isDot = number == '.';
    final cleanValue = (_value == '0' && !isDot) || _cleanValue;
    if (isDot && value.contains('.') && !cleanValue) {
      return;
    }
    final emptyValue = isDot ? '0' : '';
    final currentValue = cleanValue ? emptyValue : _value;
    _value = currentValue + number;
    _cleanValue = false;
    _buffer[_index] = double.tryParse(_value) ?? 0;
    //print(_buffer);
  }

  _clearNumber() {
    _value = _value.substring(0, _value.length - 1);
    if (_value.isEmpty) {
      _value = '0';
    }
  }

  _clear() {
    _value = '';
    _buffer[0] = 0.0;
    _buffer[1] = 0.0;
    _index = 0;
  }

  _calculate() {
    switch (_operator) {
      case '÷':
        if (_buffer[1] == 0) {
          return _clear();
        } else {
          return _buffer[0] / _buffer[1];
        }
      case 'x':
        return _buffer[0] * _buffer[1];
      case '–':
        return _buffer[0] - _buffer[1];
      case '+':
        return _buffer[0] + _buffer[1];
      default:
        return _buffer[0];
    }
  }

  String get value {
    return _value;
  }
}
