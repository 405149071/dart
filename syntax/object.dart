class Person {
  String name;
  int age;

  Person(this.name, this.age);

  printInfo() {
    print("name = $name , age = $age");
  }
}

class Web extends Person{
  Web(String name,int age) : super(name, age){
    // 构造函数无法继承
  
  }

}

main() {
  Person p; //=new Person("zhangsan", 20);
  p?.printInfo(); // ? 如果p不存在，则不调用该方法

  Person p1 = new Person("name", 22);
  if (p1 is Person) {
    print(true);
  }
  //连缀操作
  p1
    ..name = "王五"
    ..age = 55
    ..printInfo();
  print(p1);

  Web web = new Web("web1", 100);
   web.printInfo();

}
