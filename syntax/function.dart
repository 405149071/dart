main(){

  // 1 方法可在方法内部，也可在外部

  // 参数： ，可选参数[]，默认参数 int a=10, 命名参数{int age,String sex="男"}

  // 把一个方法当作参数，函数式编程
  fn1(){
    print("fn1");
  };

  fn2(fnName){
    fnName();
  };

  fn2(fn1);

}