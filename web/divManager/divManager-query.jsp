<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: silence
  Date: 16/4/26
  Time: 上午10:34
  部门经理部门需求列表
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门经理->申请查看</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="../css/divManager.css">
</head>
<body>
    <%--firsthead--%>
    <%@ include file="../common/head.jsp" %>

    <%--secondhead--%>
    <section id="second_bar">
        <div class="user">
            <p>${ sessionScope.user.userName }（
                <a href="">${ sessionScope.count }个未处理</a>
                ）
            </p>
        </div>
        <div class="web_palce">
            <article class="place">
                <a   class="user_status" href="#">部门经理</a>
                <div class="place_driver"></div>
                <a  class="current" href="#">需求查看</a>
            </article>
        </div>
    </section>
    <%--Function--%>
    <%@include file="../common/divManagerFun.jsp"%>
    <%--main--%>
    <section id="main">
        <div id = "main_div">
            <header class="notice">
                <h3>需求单列表</h3>
            </header>
            <table class="table table-striped table-hover table-bordered" >
                <thead>
                    <tr>
                        <td>需求单编号</td>
                        <td>申请人</td>
                        <td>物品名称</td>
                        <td>数量</td>
                        <td>金额</td>
                        <td>状态</td>
                        <td>申请时间</td>
                        <td>&nbsp;</td>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${ requestScope.requests }" var="request" varStatus="status">
                        <c:if test="${ status.index<20 }">
                            <tr>
                                <td>${ request.getRequestId()}</td>
                                <td>${ request.getRequestMan().getUserName() }</td>
                                <td>${ request.getItem().getItemName() }</td>
                                <td>${ request.getNumber() }</td>
                                <td>${ request.getTotalCost() }</td>
                                <td>${ request.getRequestStatus() }</td>
                                <td>${ request.getRequestTime() }</td>
                                <td><a href="divManagerInfo.action?requestID=${ request.getRequestId()}">详情</a></td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="side_div1">
            <header id="time">
                <h3>日历</h3>
            </header>
            <%@include file="../common/calendar.jsp"%>
        </div>

        <div id="side_div2">
            <header id="curRecord">
                <h3>需求统计</h3>
            </header>
            <br />
            <p style="font-size: 1.8em;text-align: center;">月申请统计</p>
            <hr />
            <br>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <label style="font-size: 1.3em">月累计申请次数:&nbsp;&nbsp;</label>
            <input type="text" readonly="readonly" value="${ requestScope.countOfTime }" />
            <br /><br />
            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <label style="font-size: 1.3em">月累计申请金额:&nbsp;&nbsp;</label>
            <input type="text" readonly="readonly" value="${requestScope.sumOfMoney}">
            <br />
        </div>
    </section>
</body>
</html>
