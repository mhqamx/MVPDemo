# MVPDemo

MVP是用户视角：所见即View。MVC则是程序员视角：I control everyone。

在群里讨论的时候有人问我这句话如何解释，在这里我详细说明一下。

MVC中的C可以比喻为一个大管家，家里的每个成员(View)需要就餐时，会将每个人的口味偏好告知给管家(Controller)，管家将这些信息告知厨房(Model)，厨房做好后上菜开饭。

MVP中的P则可以比喻为一个私人秘书，你要吃什么直接跟秘书(Presenter)说就好了，只要秘书(Presenter)拥有调用厨房(Model)的权限即可。

一句话总结，C是家族大管家，P是贴身小秘书。

可能这里解释的还是不太清楚，还是直接用代码来说明吧。

MVP登录示例Demo

Demo的简单说明如下：

View层：LoginViewController负责创建UI，响应交互。当有交互事件触发时，调用自己的preseter的对应方法处理。
Presenter层：LoginPresenter，是LoginViewController的贴身秘书，负责具体处理事件交互，并将处理结果报告给LoginViewController。
Model层：LoginModel，完成登录业务逻辑。
对比MVC，以前View的事件通知给Controller可能需要使用block，delegate，View结构层级复杂的话可能还需要使用通知等等。还会多个View共用一个Controller的情况：Controller拿到Model的返回后，需要将返回值交给View并逐级传递下去完成展示。

而在MVP中，每个View都会有一个贴身Presenter来处理交互，这样就将原本MVC中的多View共用Controller的场景进行了拆分，这样避免了出现跨层传值的情况。(示例涉及到一个界面，因为没有模拟这种情况)

架构设计并不是为了给开发者增加麻烦，而是在开发及维护的大层面上给开发者减少麻烦。

可能有的开发者会说，这么简单的一个登陆随便写写不就完了，所谓”专家”就会把简单问题复杂化。但是，如果每个人都随便写写的话，

“There are a thousand Hamlets in a thousand people’s eyes.”

莎士比亚的这句话在程序开发中绝对是禁忌，没有人愿意维护一段代码的时候还要穿越时空去复现你开发时的思维。
