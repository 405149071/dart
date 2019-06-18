main(){

// list 不去重
// 3种方式
// 1

var l1 = ["1",2,3];
print(l1);
print(l1[0]);


// 2
var l2 = new List();
l2.add("张三");
l2.add("李四");
l2.add("王五");


print(l2);
//反转
print(l2.reversed.toList());
// addall
l2.addAll(["赵六","孙七","张三"]);
print(l2);
// 将1开始，3结束（1，2）都换成haha（或数组）
l2.fillRange(1,3,"haha");
print(l2);
// 插入(可批量插入)
l2.insert(1,"aaa");
print(l2);
l2.insertAll(1,["bbb",'ccc']);
print(l2);
// list 转字符串
String s = l2.join("-");
print(s);
print(s is String);
print(s.split("-"));

// 3
var l3 = new List<String>();
l3.add("北京");
l3.add("222");
l3.add("天津");
print(l3);

}