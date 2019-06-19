

// 1. 只有async方法才能使用await关键字
// 2。如果调用别的async方法必须使用await关键字
// async 让方法变成异步
// await 是等待异步方法执行完成

test(){
  return "hello";
}

// 异步方法
testAsyn() async{
  return "hello asyn";
}

main() async{
  var result = await testAsyn();
  print(result);

}