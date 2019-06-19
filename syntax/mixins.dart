
// mixins 不属于接口也不属于类，是混合，用来实现类似与多继承，关键字with，属于dart的新特性
// 条件1: 类必须是从object继承的才能用with
// 2， 类同时不能有构造函数才能用with
// 3 可以mixins多个类（可抽象如A）。with后边
// 4 当多个类中同时有多个同名方法时，后边多会覆盖前边的
// 5 c类同时是person，a,b,c 所有类型。

class Person{
  String name;
  int age;
  Person(this.name,this.age);

  printInfo(){
    print("person");
  }

  run(){
    print("person run");
  }
}

abstract class A{
  String sa;
  printA(){
    print("print a");
  }

  run(){
    print("A run");
  }

  beat();
}

class B{
  printB(){
    print("print b");
  }

  run(){
    print("B run");
  }
}

class C extends Person with A,B{
  C(String name, int age) : super(name, age);

  @override
  beat() {
    print("c beat");
  }

}

main() {
  C c = new C("zhangsan", 20);
  c.printA();
  c.printB();
  c.printInfo();
  c.run();  // 最后一个覆盖前面的同名方法
  c.beat();
  // c 同时是很多类型
  print(c is Person);
  print(c is A);
  print(c is B);
  print(c is C);
}