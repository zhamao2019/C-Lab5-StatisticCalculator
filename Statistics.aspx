<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="lab5.Calculate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Statistics</title>
    <style>
        .form{
            display:grid;
            grid-template-columns: 150px 300px;
            margin-bottom:10px;
        }
        .form label {
            text-align: right;
            margin-right: 5px;
            font: bold;
            font-weight:900;
        }
        .container{
            background-color:lightblue;
            padding:20px;
            margin-bottom:20px;
        }
        #errorProm{
            color:red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Statistic Calculator</h1>
        <p>Enter three numbers and click Submit button to find out the statistics</p>
        <form id="form" runat="server">
            <div class="form">
                <label>First Number:</label>
                <asp:TextBox ID="tBox1" runat="server"/>
            </div>

            <div class="form">
                <label>Second Number:</label>
                <asp:TextBox ID="tBox2" runat="server"/>
            </div>

            <div class="form">
                <label>Third Number:</label>
                <asp:TextBox ID="tBox3" runat="server"/>
            </div>

            <asp:Panel runat="server" ID="pnlResult">
                <p>
                    <asp:Label ID="errorProm" runat="server"></asp:Label>
                </p>
            </asp:Panel>
            <asp:Button id="button" Text="Submit" OnClick="btnSubmit" runat="server"/>
        </form>  
    </div>

    <div class="container">
        <h1>Statistics of the numbers you entered</h1>
        <div class="form">
            <label>Maximum:</label>
            <asp:Label ID="maximum" runat="server"/>
        </div>
        
        <div class="form">
            <label>Minimum:</label>
            <asp:Label ID="minimum" runat="server"/>
        </div>

        <div class="form">
            <label>Average:</label>
            <asp:Label ID="average" runat="server"/>
        </div>
        
        <div class="form">
            <label>Total:</label>
            <asp:Label ID="total" runat="server"/>
        </div>
    </div>
    
    
</body>
</html>
