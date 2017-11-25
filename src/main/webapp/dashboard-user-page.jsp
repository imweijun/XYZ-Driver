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
                    <tr>
                        <th>testID1</th>
                        <th>FEE</th>
                        <th>250</th>
                        <th>2015-01-07</th>
                        <th>10:08:21</th>
                    </tr>
                    <tr>
                        <th>test2D</th>
                        <th>FEE</th>
                        <th>100</th>
                        <th>2015-01-08</th>
                        <th>11:08:19</th>
                    </tr>
                    <tr>
                        <th>test3D</th>
                        <th>FEE</th>
                        <th>50</th>
                        <th>2015-01-08</th>
                        <th>12:15:46</th>
                    </tr>
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
