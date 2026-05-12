<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="The_Drummers_Perspective.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5 text-white">
        <h2 class="main-title" style="font-size:3rem">Admin Dashboard: Users</h2>
        
        <div class="row mb-4">
            <div class="col-md-6">
                <div class="input-group input-group-sm shadow-sm">
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control bg-dark text-white border-secondary" Placeholder="Search by username..."></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn" OnClick="btnClear_Click" />
                </div>
            </div>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
            CssClass="table table-dark table-bordered table-striped table-hover shadow-sm">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PreferredStyle" HeaderText="Style" SortExpression="PreferredStyle" />
                <asp:BoundField DataField="ExpLevel" HeaderText="Experience" SortExpression="ExpLevel" />
                <asp:CheckBoxField DataField="IsAdmin" HeaderText="Admin?" SortExpression="IsAdmin" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DrumData.mdf;Integrated Security=True;" 
            SelectCommand="SELECT * FROM [Users]"
            DeleteCommand="DELETE FROM Users WHERE Id = @Id"
            UpdateCommand="UPDATE Users SET Username=@Username, Email=@Email, Password=@Password, PreferredStyle=@PreferredStyle, ExpLevel=@ExpLevel, IsAdmin=@IsAdmin WHERE Id=@Id">
        </asp:SqlDataSource>
    </div>

</asp:Content>