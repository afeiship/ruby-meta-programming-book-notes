# proc vs lambda

## 总结一下： 把块转化为 Proc 的方法
- Proc.new
- lambda
- proc
- & 操作符

## lambda 创建的 Proc 与其它方式是有区别的
- 与 return 关键字相关：
- 与参数检查相关


### return 关键字
- lambda 中，return 仅表示从这个 lambda block 中返回
- proc 中，则是表示从定义的 block 中返回