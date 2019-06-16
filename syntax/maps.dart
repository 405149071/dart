main(){
// 1
var person = {
  "name":"章三",
  "age":20,
  "work":["吃饭","穿衣","打豆豆"]
};

print(person);
print(person['name']);


//2

var p=new Map();
p['name']= "李四";
p['age']= 32;
p['name']= ["a","b","c"];

print(p);
print(p['age']);



}