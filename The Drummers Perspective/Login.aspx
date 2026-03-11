<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="The_Drummers_Perspective.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5">
        <h1 class="metal-title" style="font-size: 3.5rem;">LOGIN</h1>

        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card auth-card p-4 text-white text-start">
                    
                    <div class="mb-3">
                        <label class="form-label text-uppercase small letter-spacing-2 text-danger fw-bold">Email address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control bg-dark text-white border-secondary" placeholder="drummer@example.com"></asp:TextBox>
                    </div>

                    <div class="mb-4">
                        <label class="form-label text-uppercase small letter-spacing-2 text-danger fw-bold">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="btn btn-red w-100 py-2 fw-bold" />
                    
                    <div class="text-center mt-3">
                        <a href="Register.aspx" class="text-muted small text-decoration-none">No account? Register here.</a>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>