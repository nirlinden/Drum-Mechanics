<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="The_Drummers_Perspective.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5">
        <h1 class="metal-title" style="font-size: 3.5rem;">REGISTER</h1>
        <div class="mb-4">
            <span class="metal-subtitle">Registration Protocol</span>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-5">
                <div class="card auth-card p-4 text-white text-start">
                    
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">First Name</label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control bg-dark text-white border-secondary"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">Last Name</label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control bg-dark text-white border-secondary"></asp:TextBox>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Email address</label>
                        <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Email"></asp:TextBox>
                    </div>

                    <div class="mb-4">
                        <label class="form-label text-uppercase small text-danger fw-bold">Password</label>
                        <asp:TextBox ID="txtRegPass" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnRegister" runat="server" Text="CREATE ACCOUNT" CssClass="btn btn-red w-100 py-2 fw-bold" />
                    
                    <div class="text-center mt-3">
                        <a href="Login.aspx" class="text-muted small text-decoration-none">Already have an account? Log In</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>