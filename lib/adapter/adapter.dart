class Adaptee {
  String concreteOperator() {
    return "Adaptee";
  }
}

abstract class ITarget {
  String operator();
}

/// 对象适配器
class ObjectAdapter implements ITarget {
  var adaptee = Adaptee();

  String operator() {
    return adaptee.concreteOperator();
  }
}

/// 类适配器
class ClassAdapter extends Adaptee {
  String operator() {
    return super.concreteOperator();
  }
}

class Client {
  Client(this.adapter);
  final ITarget adapter;

  operator() {
    var result = adapter.operator();
    assert(result == 'Adaptee');
  }
}
