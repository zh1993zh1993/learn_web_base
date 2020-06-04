<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .bg{
            width: 100%;
            height: 100%;

        }
        div>img{
            width: 100%;
            height: 100%;
        }
        .dl{
            position: absolute;
            left: 691px;
            top: 251px;
        }
        .dl>input{
            width: 228px;
            height: 26px;
            border: 2px solid #37A9F4;
        }
        .dl>.message{
            color: red;
            font-size: 5px;
            display: none;
        }
        .pw{
            position: absolute;
            left: 692px;
            top: 299px;
        }
        .pw>.message{
            color: red;
            font-size: 5px;
            display: none;
        }
        .pw>input{
            width: 228px;
            height: 26px;
            border: 2px solid #37A9F4;
        }
        #lz{
            position: absolute;
            display: inline-block;
            width: 296px;
            height: 40px;
            left: 629px;
            top: 354px;
        }
        #lz>input{
            position: absolute;
            text-decoration: none;
            width: 100%;
            height: 100%;
            color: black;
            font-size: 15px;
            padding: 5px;
            background:deepskyblue;
            border-radius: 10px;
            outline: none;
        }
        #lz>input:hover{
            cursor: pointer;
            outline: none;
        }
        #zc{
            position: relative;
            display: inline-block;
            background: red;
            width: 296px;
            height: 40px;
            left: 629px;
            top: -310px;
            border-radius: 10px;

        }
        #zc>a{
            position: absolute;
            text-decoration: none;
            width: 100%;
            height: 100%;
            color: black;
            font-size: 15px;
            left: 123px;
            padding: 10px;
        }
        #zc>a:hover{
            cursor: pointer;
        }
    </style>
</head>
<script src="jquery-1.11.3/jquery.js"></script>
<script>
    $(function () {
        $(".dl>input").focus(function () {
            $(".dl>.message").show();
        })
        $(".pw>input").focus(function () {
            $(".pw>.message").show();
        })
        $(".dl>input").blur(function () {
            if ($(this).val() === "") {
                $(".dl>.message").show().html("账号不能为空").css("color", "red");
            } else {
                $(".dl>.message").show().html("输入正确").css("color", "black");
            }
        })
        $(".pw>input").blur(function () {
            if ($(this).val() === "") {
                $(".pw>.message").show().html("密码不能为空").css("color", "red");
            } else {
                $(".pw>.message").show().html("输入正确").css("color", "black");
            }
        })
    })
</script>
<body>
<form action="http://localhost:8080/JavaWeb_01/loginServlet" method="post">
    <div class="bg"><img src="img/bg.jpg" alt=""></div>
    <div class="dl">
        <input type="text" placeholder="学号" name="studentId" >
        <p class="message">请输入账号</p>
    </div>
    <div class="pw">
        <input type="password" placeholder="密码" name="password">
        <p class="message">请输入密码</p>
    </div>
    <p id="lz"><input type="button" value="登录" /></p>
</form>

<form action="#" method="post">
    <p id="zc"><a href="#">注册</a></p>
</form>
<script>
    var b=${msg};
    if (!b){
        alert("账号或密码错误！")
    }
</script>
</body>
</html>