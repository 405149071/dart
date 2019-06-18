
class Person {
  static String name; //静态属性
  int age=20;

  static void sayHello() { //静态方法
    print("hello");
  }

  void showInfo(){
    // 既可以访问静态属性，也可以访问非静态属性
    print(name);
    print(age);
    print(this.age); //两种方法都可以

    sayHello(); // 调用静态方法
  }

}


main() {
  
  // 调用静态方法
  Person.name = "aaaa";
  Person.sayHello();

  var p = new Person();
  p.showInfo();
}
