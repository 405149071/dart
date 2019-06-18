main() {
  // 1 方法可在方法内部，也可在外部

  // 参数： ，可选参数[]，默认参数 int a=10, 命名参数{int age,String sex="男"}

  // 把一个方法当作参数，函数式编程
  fn1() {
    print("fn1");
  }

  ;

  fn2(fnName) {
    fnName();
  }

  ;

  fn2(fn1);

  // 箭头函数

  var list = [1, 4, 5, 6, 8];
  // 普通map方法 * 2
  var myList = list.map((value) {
    return value * 2;
  });
  print(myList.toList());
  // 箭头函数方法  箭头函数只能有一个语句
  var myList1 = list.map((v) => v * 2);
  print(myList1.toList());

  var myList2 = list.map((v) => {v * 2});
  print(myList2.toList());

  // 还有 匿名函数

  var fn = () {
    print("匿名函数");
  };

  fn();

  // 自执行函数
  (() {
    print("自执行函数");
  })();

  // 递归函数 （自己调用自己）

  // 闭包
  // 方法里嵌套方法，然后返回里面的方法
  // 变量既可以常驻内存，又不污染全局
  fnBibao() {
    var a = 123; // 不污染全局
    return () {
      a++;
      print(a);
    };
  }

  var b=fnBibao();
  b();
  b();
  b();
}
