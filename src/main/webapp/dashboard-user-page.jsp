<%@ page import="chai.Services.PaymentService" %>
<%@ page import="chai.models.Payment" %>
<%@ page import="java.util.List" %>
<%@ page import="chai.models.User" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%

    User loggedInUser = (User) session.getAttribute("loggedInUser");

    PaymentService paymentService = new PaymentService();
    List<Payment> payments = paymentService.getPaymentOfMember(loggedInUser.getId());

    pageContext.setAttribute("payments", payments);


%>

<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
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
            <h3>DashBoard</h3>
            <form action="/">
                <table>
                    <tbody>
                        <tr></tr>
                        <tr>
                            <td><label>Outstanding:</label></td>
                            <td><label>�100</label></td>
                            <td><input type="submit" value="Payment" class="btn"/></td>
                            <td><input type="submit" value="Claim" class="btn"/></td>
                        </tr>
                    </tbody>
                </table>
                
                <div style="clear: both;"></div>
                <div style="clear: both;"></div>
                
                <h3>All Payments</h3>
                    <table>

                            <tr>
                                <th>ID</th>
                                <th>Payment Type</th>
                                <th>Amount (�)</th>
                                <th>Date</th>
                                <th>Time</th>
                            </tr>
                            <c:forEach items="${payments}" var="payment">
                                <tr>
                                    <th>${payment.id}</th>
                                    <th>${payment.typeOfPayment}</th>
                                    <th>${payment.amount}</th>
                                    <th>${payment.dateString}</th>
                                    <th>${payment.timeString}</th>
                                </tr>
                            </c:forEach>
                    </table>
                
                <div style="clear: both;"></div>
                <div style="clear: both;"></div>
                
                <h3>All Claims</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Rationale</th>
                        <th>Amount (�)</th>
                        <th>Status</th>
                        <th>Date</th>
                    </tr>
                    <tr>
                        <th>1</th>
                        <th>Change Mirror</th>
                        <th>120</th>
                        <th>APPROVED</th>
                        <th>2016-04-16</th>
                    </tr>
                    <tr>
                        <th>2</th>
                        <th>Repair Scratch</th>
                        <th>120</th>
                        <th>APPROVED</th>
                        <th>2016-04-16</th>
                    </tr>
                    <tr>
                        <th>3</th>
                        <th>Polish Tyers</th>
                        <th>120</th>
                        <th>APPROVED</th>
                        <th>2016-04-16</th>
                    </tr>
                    
                </table>
                
            </form>
        </div>
    </body>
</html>
