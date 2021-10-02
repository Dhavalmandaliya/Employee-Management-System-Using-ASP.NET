<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EMS.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html >
<head id="Head1" runat="server">
    <title></title>
    <style>
        .mydiv{
                margin-top: 10px;
                border: 5px solid #add8e6;
                background-color: #0E4D92;
                text-align: center;
                font-family: Georgia, 'Times New Roman', Times, serif; 
                color: #B0DFE5;
                font-size:15px;
            }
            .mydiv1{
                width: 31.4em;
                height: 35.5em;
                border: 5px solid #add8e6;
                background-color: #0E4D92;
                color: #B0DFE5;
                margin-top: 15px;
        }
            .mydiv2{
                width: 62em;
                height: 30em;
                border: 5px solid #add8e6;
                background-color: #0E4D92;
                color: #B0DFE5;
                position: absolute;
                top: 110px;        
                left: 528px; 

            }
            .mydiv3{
                width: 60.5em;
                height: 35.5em;
                border: 5px solid #add8e6;
                background-color:#0E4D92;
                color: #B0DFE5;
                position:absolute;
                top: 78px;        
                left: 550px;    
                overflow: auto;

            }
            .mydiv4{
                width : 95.2em;
                height : 45.98em;
                border: 2px solid #add8e6;
                background-color: #0E4D92;
                color: #B0DFE5;
                position:absolute;
                top:inherit;
            }
            .mydiv5{
                width: 58.7em;
                height: 3.6em;
                border: 5px solid #add8e6;
                background-color:#0E4D92;
                color: #B0DFE5;
                position:absolute;
                top: 5px;        
                left: 9px;    
                overflow: auto;
            }
            .manage{
                margin-left: 30px;
                font-size: 18px;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
            .buttons{
                width: 29.2em;
                border: 5px solid #add8e6;
                margin-left: 11px;
                
        }
            .button {
                background-color: #1b73d1; /* Green */
                border: none;
                color: white;
                padding: 12px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 10px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
            .button1:hover {
                background-color: white; 
                color: black; 
                border: 1px solid #4CAF50;
            }
            .button2{
                background-color: #1b73d1; /* Green */
                border: none;
                color: white;
                padding: 8px 25px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 10px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
            .button2:hover {
                background-color: white; 
                color: black; 
                border: 1px solid #4CAF50;
            }
            .input {

                transition: 180ms box-shadow ease-in-out;
            }
            .input:focus {
                outline: 3px solid transparent;
            }
        </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div class="mydiv4">
   <div class="mydiv"  >
   <h3 ><b><marquee behavior="alternate" scrollamount="10">Employee Management System</marquee></b></h3>
   </div>
   
    <div class="mydiv1">
    <h2 style="font-family: Georgia, 'Times New Roman', Times, serif; margin-top: 2px;"><marquee behavior="alternate" scrollamount="10">  Manage Employee </marquee></h2>
    <br />
    <a1 class="manage">Employee ID<asp:TextBox style="margin-left: 85px; " ID="TextBox1" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
    <asp:Button class="button button2" ID="Button5" runat="server" Text="Get" 
            onclick="Button5_Click" />
        </a1><br><br>
    <a1 class="manage">Employee Department<asp:TextBox style="margin-left: 8px; " ID="TextBox8" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox></a1><br><br>
    <a1 class="manage">Employee Name<asp:TextBox style="margin-left: 57px;" ID="TextBox2" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox></a1><br><br>
    <a1 class="manage">Employee Email<asp:TextBox style="margin-left: 57px;" 
            ID="TextBox3" runat="server" Font-Size="Medium" Height="28px" Width="164px" 
            TextMode="Email"></asp:TextBox></a1><br><br>
    <a1 class="manage">Contact Number<asp:TextBox style="margin-left: 55px;" ID="TextBox4" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox></a1><br><br>
    <a1 class="manage">Date of Birth<asp:TextBox style="margin-left: 85px;" 
            ID="TextBox5" runat="server" Font-Size="Medium" Height="28px" Width="164px" 
            TextMode="Date"></asp:TextBox></a1><br><br>
    <a1 class="manage">Gender<asp:TextBox style="margin-left: 125px;" ID="TextBox6" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox></a1><br><br>
    <a1 class="manage">Address<asp:TextBox style="margin-left: 120px;" ID="TextBox7" runat="server" Font-Size="Medium" Height="28px" Width="164px"></asp:TextBox></a1><br><br>   
        <div class="buttons">
            
            <asp:Button class="button button1" ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" style="margin-left:20px;"/>
            
            &nbsp;
            
            <input type="reset" class="button button1"  value="RESET" />
            
            <asp:Button class="button button1" ID="Button2" runat="server" Text="UPDATE" style="margin-left:16px;"
                onclick="Button2_Click"  />
            
            <asp:Button class="button button1" ID="Button3" runat="server" Text="DELETE"  style="margin-left:16px;"
                onclick="Button3_Click" />
            
            
            
            <br />
            
        </div>

    </div>

    <div class="mydiv3">
    
    
        <asp:GridView ID="GridView1" runat="server" Width="940px" Height="174px" BackColor="Black" 
        BorderColor="LightBlue" BorderStyle="Solid" BorderWidth="5px" CellPadding="6" 
        CellSpacing="2"  Font-Names="Times New Roman" 
        Font-Overline="False" style="margin-left:1%; margin-top:1.5%;">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" BorderColor="Gray" />
                <HeaderStyle BackColor="#343a40"  ForeColor="White" />
                <PagerStyle BackColor="Black" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="#343a40" ForeColor="White" CssClass="table table-bordered table-striped, align-content-center"  />
                <SelectedRowStyle BackColor="#333333"  ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        
            <br />
            
        

        


    </div>
    </div>
    </form>
    
    
    </body>
</html>

