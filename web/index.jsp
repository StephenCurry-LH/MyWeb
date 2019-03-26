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
    <title>找抽</title>
    <%--<link rel="stylesheet" href="css/main.css" />--%>
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
<div class="header">
    <div class="Logo">
        <h1><span style="color: #076ce0; ">找抽</span></h1></div>
    <div class="header_right"><a href="Login.jsp">登陆</a>
        <a href="Resiger.jsp">注册</a></div>
</div>
<div class="banner" id="b04">
    <ul>
        <li class="slider-item"><a href="#"><img src="images/01.jpg" alt="1" width="640" height="480" ><span class="slider-title"><em>我们的优势1</em></span></a></li>
        <li class="slider-item"><a href="#"><img src="images/02.jpg" alt="1" width="640" height="480" ><span class="slider-title"><em>我们的优势2</em></span></a></li>
        <li class="slider-item"><a href="#"><img src="images/03.jpg" alt="1" width="640" height="480" ><span class="slider-title"><em>我们的优势3</em></span></a></li>
        <li class="slider-item"><a href="#"><img src="images/04.jpg" alt="1" width="640" height="480" ><span class="slider-title"><em>我们的优势4</em></span></a></li>
        <li class="slider-item"><a href="#"><img src="images/05.jpg" alt="1" width="640" height="480" ><span class="slider-title"><em>我们的优势4</em></span></a></li>
    </ul>
    <div class="progress"></div>
    <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="img/arrowl.png" alt="prev" width="20" height="35"></a>
    <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="img/arrowr.png" alt="next" width="20" height="37"></a>
</div>
<script src="js/index/jquery-1.11.1.min.js"></script>
<script src="js/index/unslider.min.js"></script>
<script>
    $(document).ready(function(e) {
        var progress = $(".progress"),li_width = $("#b04 li").length;
        var unslider04 = $('#b04').unslider({
                dots: true,
                complete:function(index){//自己添加的，官方没有
                    progress.animate({"width":(100/li_width)*(index+1)+"%"});
                }
            }),

            data04 = unslider04.data('unslider');
        $('.unslider-arrow04').click(function() {
            var fn = this.className.split(' ')[1];
            data04[fn]();
        });
    });
</script>
<div class="footnote">
    <p>made by HSL</p>
</div>
</body>
</html>
