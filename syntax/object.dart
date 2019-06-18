class Person {
  // dart 没有public ,protect,private的限定，默认都是共有属性和方法， _name 就是私有，但是类必须独立一个文件才行
  String name;
  int age;

  //默认构造函数
  Person(this.name, this.age);
  //命名构造函数
  Person.nameha(String name){
    this.name = name;
  }
  // 常规方法
  printInfo() {
    print("name = $name , age = $age");
  }
  // get set 计算属性
  get prtInfo{
    print("计算属性");
  }
  set prtInfo(name){
    this.name = name;
  }

}

class Web extends Person{
  Web(String name,int age) : super(name, age){
    // 构造函数无法继承
  
  }

}

// 初始化，发生在构造函数之前,很少用
class Animal {
  String name;
  int age;
  Animal(String name):name="dog",age=3{
    this.name = name;
  }
  // 或 Animal():name="dog",age=3;
  printInfo(){
    print("$name ======= $age");
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

   Person p2=Person.nameha("name");
   p2 = new Person("name1111", 22);
   p2.prtInfo = "hohohola";// 计算属性 set
   p2.prtInfo; // 计算属性 get
   p2.printInfo();
   

   // 类的初始化 （很少用）
   Animal dog = new Animal("cat");
   dog.printInfo();

}
