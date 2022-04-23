# Spells

中文 | 英文 | 描述 | 页码
---|---|---|---
打开类 | Open Class | 修改已有的类 | 14
猴子补丁 | Monkeypatch | 修改已有类的特性 | 16
命名空间 | Namespace | 在一个模块中定义常量，以防止命名冲突| 23
内核方法 | Kernel Method | 在 Kernel 中定义一个方法，使得所有对象都可使用 | 32 
细化 |  Refinement | 为类打补丁，作用范围仅到文件结束，或仅限于包含模块的作用域中 | 36
动态派发 | Dynamic Dispatch | 在运行时决定调用那个方法 | 48
动态方法 | Dynamic Method | 在运行时决定怎样定义一个方法 | 51
幽灵方法 | Ghost Method | 响应一个没有关联方法的消息 | 57
动态代理 | Dynamic Proxy | 把不能对应某个方法的消息转发给另外一个对象 | 60
白板类 | Blank Slate | 移除一个对象中的所有方法，以便把它们转换成幽灵方法 | 57
作用域门 | Scope Gate | 用 class、module 或 def 关键字隔离作用域 | 81
扁平作用域 | Flat Scope | 使用闭包在两个作用域之间共享变量 | 83
共享作用域 | Shared Scope | 在同一个扁平作用域的多个上下文中共享变量 | 84
上下文探针| Context Probe | 执行一个代码块来获取一个对象上下文中的信息 | 85
洁净室 | Clean Room | 使用一个对象作为执行一个代码块环境 | 87
延迟执行 | Deferred Evaluation | 在 proc  或 lambda 中存储一段代码及其上下文，用于以后执行 | 89
类实例变量| Class Instance Variable | 在一个 class 对象的实例变量中存储类级别的状态 | 110
单件方法 | Singleton Method | 在一个对象上定义方法 | 115
类宏 | Class Macro | 在类定义中使用类方法 | 117
对象扩展  | Object Extension | 通过给一个对象的单件类混入模块来定义单件方法
类扩展 | Class Extension | 通过向类的单件类中加入模块来定义类方法
环绕别名f | Around Alias | 从一个重新定义的方法中调用原始的、被重命名的版本