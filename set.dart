main(){

// set 去重

var set = new Set();
set.add("苹果");
set.add("香蕉");
set.add("苹果");

print(set.toList());


var l = new List();
l.add("苹果");
l.add("香蕉");
l.add("苹果");
print(l);
print(l.toSet());
}