# CoocleSelect

### [环境安装](http://blog.csdn.net/ppp8300885/article/details/52594839)   [Rails指南](http://guides.rubyonrails.org/)

* * *
### 本系统是一个课程网站选择系统，可以用来作为学校的学生的选课系统来使用

### 说明

* ruby版本：2.3.1
* rails版本：4.x
* 数据库 postgreSQL [安装指南](http://www.ruanyifeng.com/blog/2013/12/getting_started_with_postgresql.html)
* 使用[Bootstrap](http://getbootstrap.com/)作为前端库
* 使用[Rails_admin Gem](https://github.com/sferik/rails_admin)作为后台管理

### 安装

在Ubuntu下运行以下命令


* $ git clone https://github.com/lockfu/CoocleCS.git
* $ cd CoocleCS
* $ bundle install
* $ rake db:migrate
* $ rake db:seed
* $ rails s 
<br />
在浏览器中输入`localhost:3000`访问主页


### 请访问： http://207.246.121.99:3000/   来使用

* * *

### 本系统支持的功能：

* 通知
* 多角色登陆（学生，老师，管理员）
* 学生根据学院进行选择课程
* 学生批量选择、删除课程
* 学生动态选课，退课
* 选择课程是否为学位课
* 学生选课冲突
* 课程人数上限设置
* 选择课程学分提示
* 学生查看自己课表
* 学生查看考试安排
* 学生成绩单下载
* 学生课程信息的查看
* 老师动态增加，删除课程
* 老师课程的开通
* 老师安排考试信息
* 老师对课程下的学生添加、修改成绩
* 老师下载成绩单
* 老师下载学生名单
* 权限控制：老师和学生只能看到自己相关课程信息

### 功能预览

<img src="/lib/pic/c1.png" width="700">  

<img src="/lib/pic/c2.png" width="700">  

<img src="/lib/pic/c3.png" width="700">  

<img src="/lib/pic/c4.png" width="700">  

<img src="/lib/pic/c5.png" width="700">  




## 使用

1.学生登陆：

账号：`student1@test.com`

密码：`password`

2.老师登陆：

账号：`teacher1@test.com`

密码：`password`


3.管理员登陆：

账号：`admin@test.com`

密码：`password`

账号中数字都可以替换成2,3...等等


## 部署到服务器

项目可直接在Heroku上免费部署

1. 首先可以到阿里云或者其他地方购买一个服务器
2. 安装前面的步骤 在服务器上安装环境
3. git项目到服务器上
4. 绑定项目到服务器上，发布地址访问


## 本地测试

本项目包含了部分的测试（integration/fixture/model test），测试文件位于/test目录下。
使用 rails new application_name 命令创建一个 Rails 项目时，Rails 会生成 test 目录。如果列出这个目录里的内容，你会看到下述目录和文件：
<p>
  <br />
  $ ls -F test <br />
  controllers/           helpers/               mailers/               system/                test_helper.rb <br/>
  fixtures/              integration/           models/                application_system_test_case.rb
</p>

<p>
  helpers 目录存放视图辅助方法的测试，mailers 目录存放邮件程序的测试，models 目录存放模型的测试，controllers 目录存放控制器的测试，integration 目录存放涉及多个控制器交互的测试。此外，还有一个目录用于存放邮件程序的测试，以及一个目录用于存放辅助方法的测试。

system 目录存放系统测试，在浏览器中全面测试应用。系统测试模拟用户的交互，还能测试 JavaScript。系统测试源自 Capybara，在浏览器中测试应用。

测试数据使用固件（fixture）组织，存放在 fixtures 目录中。


</p>

```

# Running:
.........

Finished in 1.202169s, 7.4865 runs/s, 16.6366 assertions/s.

9 runs, 20 assertions, 0 failures, 0 errors, 0 skips
```

### 模型测试

以用户模型为例, 位于`test/models/user_test.rb`, 首先生成一个`@user`对象，然后`assert`用户是否有效，这里的调用`valid`方法会去检查你的模型中的相关的`validates`语句是否正确，若`@user.valid?`为false, 那么此`assert`会报错，代表`"should be valid"`这条测试没有通过, 单独运行此测试文件使用`rake test test/models/user_test.rb`


```
class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "password", password_confirmation: "password")
  end

  test "should be valid" do
    assert  @user.valid?
  end

  ...

end
```

### 视图和控制器测试

以用户登录为例，位于`test/integration/user_login_test.rb`，首先同样生成一个@user模型，这个@user的用户名和密码可以在`test/fixtures/users.yml`中指定, 然后我们用get方法到达登录页面（sessions_login_path），然后使用post方法提交这个@user的账号密码来登录，如果登录成功，当前应该会跳转至homes控制器下的index方法进行处理，`assert_redirected_to`能判断这个跳转过程是否发生，然后调用`follow_redirect！`来紧跟当前的跳转，用`assert_template`来判读跳转后的视图文件是否为`homes/index`, 最后在这个视图文件下做一些测试，比如判断这个视图下连接为root_path的个数等等（根据当前登录的角色不同，当前的页面链接会不同，比如admin用户就会有控制面板的链接rails_admin_path，而普通用户没有，因此可以根据链接的个数来判断当前登录用户的角色）

```
class UserLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:peng)
  end

  test "login with valid information" do
    get sessions_login_path
    post sessions_login_path(params: {session: {email: @user.email, password: 'password'}})
    assert_redirected_to controller: :homes, action: :index
    follow_redirect!
    assert_template 'homes/index'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", rails_admin_path, count: 0
  end
end
```

### 测试涵盖率检测

我们可以使用[simplecov](https://github.com/colszowka/simplecov/)库来检测我们编写的测试对于我们的项目是否完整，步骤如下：

1. 在Gemfile文件中导入simplecov库：`gem 'simplecov', :require => false, :group => :test`，然后`bundle install`安装
2. 在test/test_helper.rb的最前面加入simplecov的启动代码（这里默认使用rails自带的test框架，simplecov也支持其他测试框架如rspec，那么启动代码导入的位置请参考simplecov的官方文档）

  ```
  # 注意这里必须在 require rails/test_help 之前加入，否则不会生效
  require 'simplecov'
  SimpleCov.start 'rails'

  ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  require 'rails/test_help'

  class ActiveSupport::TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
  ```

3. 运行`rake test`,成功后会根目录的coverage下生成一个index.html文件，用浏览器打开能看到结果如下：

  <img src="/lib/pic/c6.png" width="700">  

  <img src="/lib/pic/c7.png" width="700">  






