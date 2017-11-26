<%@ page import="chai.Services.MemberService" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="chai.models.Member" %>
<%@ page import="java.util.List" %>
<%@ page import="chai.Services.ClaimService" %>
<%@ page import="chai.models.Claim" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%
    MemberService memberService = new MemberService();
    List<Member> members = memberService.getAllMembers();
    pageContext.setAttribute("members", members);

    ClaimService claimService = new ClaimService();
    List<Claim> claims = claimService.getAllClaims();
    pageContext.setAttribute("claims", claims);
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
                        <c:if test = "${member.balance > 0}">
                            <tr>
                                <th>${member.id}</th>
                                <th>${member.firstName} ${member.lastName}</th>
                                <th>${member.balance}</th>
                            </tr>
                        </c:if>
                    </c:forEach>
                </table>
                
                <div style="clear: both;"></div> <br>
                
                <h3>Submitted Claims</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Rationale</th>
                        <th>Amount (�)</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <c:forEach items="${claims}" var="claim">
                        <c:if test = "${claim.status == 'SUBMITTED'}">
                            <tr >

                                <th>${claim.id}</th>
                                <th>${claim.member.firstName} ${claim.member.lastName}</th>
                                <th>${claim.rationale}</th>
                                <th>${claim.amount}</th>
                                <th>ACCEPT</th>
                                <th>REJECT</th>
                            </tr>
                        </c:if>
                    </c:forEach>
                </table>

        </div>
    </body>
</html>
