# using

- C# 中有一个关键字，using
- 看下面的代码

```c
RemoteConnection conn = new RemoteConnection("my_server");
using(conn){
    conn.eradData();
    /* other logics */
}

// 这个 conn 在任何情况下都会被释放
// 不会出现上一步异常的情况下就无法释放的情况
```