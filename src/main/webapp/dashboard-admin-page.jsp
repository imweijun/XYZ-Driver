<%@ page import="chai.Services.MemberService" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="chai.models.Member" %>
<%@ page import="java.util.List" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%
    MemberService memberService = new MemberService();
    List<Member> members = memberService.getAllMembers();
    pageContext.setAttribute("members", members);
%>

<!DOCTYPE html>
<html>
    <head>
        <title>** ADMIN ** DASHBOARD ** ADMIN ** DASHBOARD</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>XYZ Driver Association</h2>
                <a href="${pageContext.request.contextPath}/logout">Log out</a>
            </div>
        </div>
        <div id="container">
            <h3>ADMIN ** DASHBOARD ** ADMIN ** DASHBOARD ** ADMIN ** DASHBOARD</h3>



                <table>
                    <tr></tr>
                    <tr>
                        <th><h3>User List</h3></th>
                    </tr>
                </table>
                <table>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>D.O.B</th>
                        <th>Status</th>
                        <th>Balance (�)</th>
                    </tr>
                    <c:forEach items="${members}" var="member">
                        <tr>
                            <th>${member.id}</th>
                            <th>${member.firstName} ${member.lastName}</th>
                            <th>${member.address}</th>
                            <th>${member.dobString}</th>
                            <th>${member.status}</th>
                            <th>${member.balance}</th>
                        </tr>
                    </c:forEach>
                </table>
                
                <div style="clear: both;"></div> <br>
                
                <h3>Outstanding</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Amount (�)</th>
                    </tr>
                    <c:forEach items="${members}" var="member">
                        <tr>
                            <c:if test = "${member.balance > 0}">
                                <th>${member.id}</th>
                                <th>${member.firstName} ${member.lastName}</th>
                                <th>${member.balance}</th>
                            </c:if>

                        </tr>
                    </c:forEach>
                </table>
                
                <div style="clear: both;"></div> <br>
                
                <h3>Claims</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Rationale</th>
                        <th>Amount (�)</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th>mem-3</th>
                        <th>Member 3</th>
                        <th>Change Wheels</th>
                        <th>30</th>
                        <th>APPROVE</th>
                        <th>REJECT</th>
                    </tr>
                    <tr>
                        <th>mem-3</th>
                        <th>Member 3</th>
                        <th>Change Wheels</th>
                        <th>30</th>
                        <th>APPROVE</th>
                        <th>REJECT</th>
                    </tr>
                    <tr>
                        <th>mem-3</th>
                        <th>Member 3</th>
                        <th>Change Wheels</th>
                        <th>30</th>
                        <th>APPROVE</th>
                        <th>REJECT</th>
                    </tr>
                    <tr>
                        <th>mem-3</th>
                        <th>Member 3</th>
                        <th>Change Wheels</th>
                        <th>30</th>
                        <th>APPROVE</th>
                        <th>REJECT</th>
                    </tr>
                </table>
        </div>
    </body>
</html>
