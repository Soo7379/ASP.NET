<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search_Recipe.aspx.cs" Inherits="Search_Recipe" %>
<script runat="server">
    void btn1_click(object obj, EventArgs e)
    {
        Label.Text += "</br>" + Name.Text;
        Label.Text += "</br>" + Submitted.Text;
        if (CheckBox1.Checked == true)
        {
            Label.Text += "</br>" + CheckBox1.Text;
        }
        else
        {
            Label.Text += "</br>" + CheckBox2.Text;
        }
    }

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h3> Please write down the name of recipe to search at here </h3>
        <p> 
            <asp:Label ID="Label1" runat="server" Text="Name of Recipe"></asp:Label>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
         </p>
         <p>
            <asp:Label ID="Label2" runat="server" Text="Submitted By"></asp:Label>
            <asp:TextBox ID="Submitted" runat="server"></asp:TextBox>
         </p>
         <p>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Private" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Public" />
        </p>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="btn1_click" Height="30px" Width="70px"/>
       <asp:Label ID="Label" runat="server"></asp:Label>
        </center>
</asp:Content>
