<%--
  Created by IntelliJ IDEA.
  User: Jerry
  Date: 2019/3/20
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>假的抽奖系统</title>
    <style>
        #draw_button {
            position: relative;
            top: 100px;
        }

        #stop_button {
            position: relative;
            top: 150px;
        }
    </style>
</head>

<body>
<div align="center">
    <img src="image/toppic.jpg" alt="抽奖上方图片">
</div>
<div align="center">
    <h1 id="lucky_name">中奖的是：</h1>
</div>
<div align="center" id="draw_button">
    <input type="submit" value="抽奖" id="draw_button2" onclick="rolling()">
    <input type="submit" id="stop_button2" value="停止" onclick="">
</div>
<script>
    function getNameList() {
        return ['黄相铭', '李航', '石艺'];
    }

    function lucky() {
        var name_list = getNameList();
        var lucky_num = Math.round(Math.random() * name_list.length);
        if (lucky_num === name_list.length) {
            lucky_num = 0;
        }
        return name_list[lucky_num];
    }

    function rolling() {
        var stop_button = document.getElementById('stop_button2');
        var roll = function () {
            document.getElementById('lucky_name').innerText = '中奖的是：  ' + lucky();
        };
        stop_button.onclick = function () {
            clearInterval(mm);
        };

        var mm = setInterval(roll, 100);
    }
</script>
</body>
</html>
