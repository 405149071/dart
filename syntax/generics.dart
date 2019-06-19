// dart泛型

// 1)可以解决代码重用问题， 对不特定类型进行支持
// 2. 在支持都过程中可以做到类型校验。

// 泛型方法
T getInfo<T>(T value) {
  return value;
}

// 将以下普通类调整为泛型类
class Print{
  List list = new List<int>();
  void add(int value){
    this.list.add(value);
  }
  void printInfo(){
    for(var i=0;i<this.list.length;i++){
      print(this.list[i]);
    }
  }
}

// 泛型类
class PrintO<T>{
  List list = new List<T>();
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for(var i=0;i<this.list.length;i++){
      print(this.list[i]);
    }
  }
}

// 泛型接口
// 也是支持 , cache的类型和value的类型一致
abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
  }

}


main() {
  print(getInfo("aaa"));
  print(getInfo<int>(22));
  print(getInfo<String>("hahalala"));

  // 泛型类 (内置)
  List l = new List<String>();
  //l.add(12); // 错误的
  l.add("你好");
  print(l);

  // 自定义
  var p = new Print();
  p.add(1);
  p.add(10);
  p.add(12);
  p.printInfo();

  var pp = new PrintO<String>();  //可以自定义为很多类，不写的话也可以随便输入字符，数字都可以
  pp.add("12");
  pp.add("value");
  pp.printInfo();

  // 泛型接口
  FileCache f = new FileCache<Map>();
  f.setByKey("index", {"name":"章三","age":20});
  
}



