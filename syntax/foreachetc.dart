main() {
// forearch 等方法在list，set，map中通用
  var list = ["aaa", "bbb", "ccc"];

//1 for
  for (int i = 0; i < list.length; i++) {
    print("list[$i] = ${list[i]}");
  }

  // 2 for in
  for (var item in list) {
    print("item = $item");
  }

  // 3 foreach

  list.forEach((value) {
    print(value);
  });

// 高级用法
// 修改list每一项
  List myList = [1, 3, 6];
  var newList = myList.map((v) {
    return v * 2;
  }); 
  print(newList is Iterable);
  print(newList.toList());

  // where 返回新的集合
   List myList1 = [1, 3, 6,4,5,7,8,9];
   var mynew1 = myList1.where((v){
     return v>5;
   });
   print(mynew1.toList());
// any 只要集合中有满足条件的值就返回true
// every 集合中每一个子项目都要满足条件才返回true

// set 方法同list
// map 同list，只是参数多了一个key 为（key，value）
}
