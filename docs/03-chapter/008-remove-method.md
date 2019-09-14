# remove method
- 有些场景，我们还是需要用到删除某些方法才可以达到目的。

## 两种方式
- Module#undef_method:会删除自身以及继承来的方法
- Module#remove_method: 会删除本身的方法，但并不会删除继承来的方法

