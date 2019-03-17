<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Add_Recipe.aspx.cs" Inherits="Add_Recipe" %>
<script runat="server">
    public string LabelText
    {
        set
        {
            Recipe_Name.Text = value;
            Submitted.Text = value;
            cList.Text = value;
            Time.Text = value;
            port.Text = value;
            CuList.Text = value;
            Desc.Text = value;
        }
    }
    public string Text
    {
        get
        {
            return Recipe_Name.Text;
            return Submitted.Text;
            return cList.Text;
            return Time.Text;
            return port.Text;
            return CuList.Text;
            return Desc.Text;
        }
    }
    void btn1_click(object obj, EventArgs e)
    {
        msgLabel.Text += "</br>" + Recipe_Name.Text;
        msgLabel.Text += "</br>" + Submitted.Text;
        msgLabel.Text += "</br>" + cList.Text;
        msgLabel.Text += "</br>" + Time.Text;
        msgLabel.Text += "</br>" + port.Text;
        msgLabel.Text += "</br>" + CuList.Text;
         if (CheckBox1.Checked == true)
        {
            msgLabel.Text += "</br>" + CheckBox1.Text;
        }
        else
        {
            msgLabel.Text += "</br>" + CheckBox2.Text;
        }
        msgLabel.Text += "</br>" + Desc.Text;
    }
    

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <h3>
        <asp:Label ID="rName" runat="server" Text="Recipe Name"></asp:Label>
&nbsp;<asp:TextBox ID="Recipe_Name" runat="server"></asp:TextBox>
    <br />
        <asp:Label ID="sName" runat="server" Text="Submitted By"></asp:Label>
&nbsp;<asp:TextBox ID="Submitted" runat="server"></asp:TextBox>
    <br />
            <asp:Label ID="Category" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="cList" runat="server">
                <asp:ListItem Text="Appetizers" value="Appetizers" />                <asp:ListItem Text="Bread" value="Bread" />                <asp:ListItem Text="Cakes" value="Cakes" /> 
                <asp:ListItem Text="Desserts" value="Desserts" /> 
                <asp:ListItem Text="Grilling" value="Grilling" /> 
                <asp:ListItem Text="Pasta" value="Pasta" /> 
                <asp:ListItem Text="Pie" value="Pie" /> 
                <asp:ListItem Text="Sandwiches" value="Sandwiches" /> 
                <asp:ListItem Text="Soups" value="Soups" /> 
            </asp:DropDownList>
   <br />
            <asp:Label ID="cTime" runat="server" Text="Cooking Time"></asp:Label>
&nbsp;<asp:TextBox ID="Time" runat="server" Height="30px"></asp:TextBox>
    <br />
            <asp:Label ID="Portions" runat="server" Text="Portions"></asp:Label>
&nbsp;<asp:TextBox ID="port" runat="server" Height="30px"></asp:TextBox>
    <br />
            <asp:Label ID="Cuisine" runat="server" Text="Cuisine"></asp:Label>
   
            <asp:DropDownList ID="CuList" runat="server">
                <asp:ListItem Text="Mexican" value="Mexican" />                <asp:ListItem Text="Italian" value="Italian" />                <asp:ListItem Text="Indian" value="Indian" />
                <asp:ListItem Text="Thai" value="Thai" />
                <asp:ListItem Text="Greek" value="Greek" />
                <asp:ListItem Text="Chinese" value="Chinese" />
                <asp:ListItem Text="Korean" value="Korean" />
                <asp:ListItem Text="Japanese" value="Japanese" />
            </asp:DropDownList>
   <br /> 
            <asp:Label ID="Mark" runat="server" Text="Mark as Private"></asp:Label>

            <asp:CheckBox ID="CheckBox1" runat="server" Text="Private" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Public" />
   
    <br />
            <asp:Label ID="rDescription" runat="server" Text="Recipe Description"></asp:Label>
    
            <asp:TextBox ID="Desc" runat="server" width="150px" Height="60px"></asp:TextBox>
  <br />
    <br />
    <asp:Button ID="btn1" Text="Submit" runat="server" OnClick="btn1_click" Height="30px" Width="70px" />
    <br />
    <asp:Label ID="msgLabel" runat="server"></asp:Label>
    </h3>
    </center>
    </asp:Content>
