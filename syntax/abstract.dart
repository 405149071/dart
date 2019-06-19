
abstract class Animal{
  String url;
  eat();
  run();
  printInfo(){
    print("这是一个普通方法");
  }
}


class Dog extends Animal{
  @override
  eat() {
    print("dog 吃骨头");
  }

  @override
  run() {
    print("dog is running");
  }

}

class Cat extends Animal{
  @override
  eat() {
    print("cat 吃鱼");
  }

  @override
  run() {
    print("cat is running");
  }
}

class Oo {
  pp(){
    print("oo.pp");
  }
}

abstract class Drinkable{
  drink();
}

// 把抽象类（或普通类，建议抽象类)当作接口使用 ,dart里没有interface的说法
// 用implements去实现，但是要覆盖抽象类的所有属性，方法，不仅仅是抽象方法
class Bird extends Oo implements Animal,Drinkable{
  @override
  String url;

  @override
  eat() {
    print("鸟在吃虫");
  }

  @override
  printInfo() {
    super.pp(); // 调用父类的普通方法，但是抽象类里的普通方法也被认为是抽象的，无法调用
    print("鸟");
  }

  @override
  run() {
    print("鸟在飞");
  }

  @override
  drink() {
    print("鸟在喝水");
  }

}


main() {
  Dog dog = new Dog();
  dog.eat();

  // 多态的形式
  Animal d1 = new Dog();
  d1.run();
  // 实现多接口
  Bird b1 = new Bird();
  b1.run();
  b1.drink();
  b1.printInfo();
}