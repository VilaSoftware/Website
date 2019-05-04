<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Vila Software</title>
	<link rel="shortcut icon" href="files/images/sites/logo.png">
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        #ImageButton2 {
            margin-left: 25px;
        }
        .button1 {
            width: 100%;
            height: 50px;
            border: 0px;
            background-color: white;
            color: black;
            margin: 0 auto;
        }
        .button1:hover {
            background-color: #58D68D;
            color: white;
            cursor: pointer;
        }
        .button2 {
            width: 250px;
            height: 50px;
            border: 0px;
            background-color: white;
            color: black;
            margin: 0 auto;
        }
        .button2:hover {
            background-color: #58D68D;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="header">
	<div id="header_inside">
		<div id="logo">
			<a href="login.aspx"><img src="files/images/sites/logo.png"></a>
		</div>
		<div id="menu">
			<table>
				<tr>
					<td>
	                    <asp:Panel ID="Panel1" runat="server" Height="48px" Width="191px">
                            <a href="login.aspx">Oturum Aç <img src="files/images/sites/user.png"></a></td>
				        </asp:Panel>
                </tr>
			</table>
		</div>
	</div>
</div>
<div id="container">
	<div class="big_post" id="post1">
        <asp:DataList ID="DataList1" runat="server" Height="490px" Width="1390px">
            <ItemTemplate>
                <table style="width:100%; height: 100%;">
                    <tr style="height: 80%;">
                        <td class="style1">
                            <asp:ImageButton ID="ImageButton2" ImageUrl='<%# "~/files/images/posts/"+Eval("post_image").ToString() %>' PostBackUrl='<%# "~/post.aspx?post_id="+Eval("post_id").ToString() %>' runat="server" Width="1385px" Height="400px" />
                        </td>
                    </tr>
                    <tr style="height: 10%; font-size: 30px;">
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("post_header").ToString() %>'></asp:Label>
                        </td>
                    </tr>
                    <tr style="height: 10%;">
                        <td>
                            <asp:Button ID="Button1" CssClass="button1" runat="server" PostBackUrl='<%# "~/post.aspx?post_id="+Eval("post_id").ToString() %>' Text="Detaylar için tıklayın" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
	<!-- <div class="mini_post" id="post2"></div>
	<div class="mini_post" id="post3"></div>
	<div class="mini_post" id="post4"></div> -->
	<div id="latest_posts">
        <asp:DataList ID="DataList2" runat="server" Width="1390px" RepeatColumns="5">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton3" ImageUrl='<%# "~/files/images/posts/"+Eval("post_image").ToString() %>'  PostBackUrl='<%# "~/post.aspx?post_id="+Eval("post_id").ToString() %>' runat="server" Width="230px" Height="178px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("post_header").ToString() %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" CssClass="button2" runat="server" PostBackUrl='<%# "~/post.aspx?post_id="+Eval("post_id").ToString() %>' Text="Detaylar için tıklayın" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
<!-- <div id="footer">
	<table>
		<tr>
			<td><img src="files/images/sites/logo.png"></td>
			<td>VILA SOFTWARE – 2019</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>	
</div> -->
    </form>
</body>
</html>
