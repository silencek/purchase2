<%--
  Created by IntelliJ IDEA.
  User: silence
  Date: 16/4/25
  Time: 下午6:18
  申请部门公用部分
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside id="side_bar">
    <div>
        <p id="alt">请选择</p>
        <hr>
    </div>
    <div class="function">
        <div id="notify"><a href="requestNotice.action">待办事项</a></div>
        <div id="request"><a href="requestRequest.action">需求申请</a></div>
        <div id="query"><a href="requestList.action">需求查看</a></div>
        <div id="exit"><a href="requestLogout.action">退出登录</a></div>
    </div>
    <%@ include file="foot.jsp" %>
</aside>
