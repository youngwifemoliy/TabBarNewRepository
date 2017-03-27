# TabBarNewRepository
新建一个项目,应该包含了基础库,以及TabBar.

# 项目目录

    ├── TabBarNewRepository
    │   ├── 3：三方库
    |   |   ├── MLDPhotoManager: 相册管理器
    |   |   ├── MLDBaseButton: 基于POP的按钮动画,创建按钮后直接更改按钮继承即可
    |   |   └── MLDTableViewCell: 基于POP的tableViewCell动画,同样直接改继承关系即可
    │   ├── Classes：放置主要类的文件夹
    |   |   └── MLDTabBarViewController(TabBar控制器)
    │   ├── NIB: 放置StoryBoard的文件夹
    │   ├── BaseClesses: 放置基类的文件夹
    |   |   └── BaseViewController(除了TabBarController上面的三个控制器其余的控制器都可继承于此类已经写好了隐藏TabBar的代码)
    │   ├── HTTPHelper: 放置网络请求的文件夹
    |   |   └── APIConfig:网络控制器已经写好了证书代码刻意直接用宏来改变请求方式
    └── Pods：项目使用了CocoaPods管理工具

# 开源鸣谢
名称|说明|地址
---|---|---
iconfont @Anita张阿姨| tabbar图标|http://www.iconfont.cn/plus/collections/detail?cid=3010 (未注开源,图侵删)
pop|FaceBook动画库|https://github.com/facebook/pop
SVProgressHUD|菊花提示|https://github.com/SVProgressHUD/SVProgressHUD
IQKeyboardManager|键盘弹出通知|https://github.com/hackiftekhar/IQKeyboardManager
AFNetworking|不做说明|https://github.com/AFNetworking/AFNetworking
MJRefresh|不做说明|https://github.com/CoderMJLee/MJRefresh
YYKit|其中副文本和JSONModel还有N多的好东东|https://github.com/ibireme/YYKit
XHToast|类似于安卓的提示框|https://github.com/CoderZhuXH/XHToast
RDVTabBarController|tabbar控制器|https://github.com/robbdimitrov/RDVTabBarController
TYPagerController|分页控制器|https://github.com/12207480/TYPagerController
SDCycleScrollView|图片轮播|https://github.com/gsdios/SDCycleScrollView
Wonderful|色库,渐变,走马灯|https://github.com/dsxNiubility/Wonderful
MLDPhotoManager|基于LGPhotoBrowser二次封装的可以相册管理器|https://github.com/youngwifemoliy/MLDPhotoManager
MLDBaseButton|基于POP的按钮动画,创建按钮后直接更改按钮继承即可|https://github.com/youngwifemoliy/MLDClass
MLDTableViewCell|基于POP的tableViewCell动画,同样直接改继承关系即可|https://github.com/youngwifemoliy/MLDClass

