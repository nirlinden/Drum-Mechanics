<%@ Page Title="Sheet Music" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SheetMusic.aspx.cs" Inherits="The_Drummers_Perspective.SheetMusic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container mt-5 text-white">
        <div class="row mb-5 border-bottom border-secondary pb-3">
            <div class="col">
                <h1 class="display-5 fw-bold text-danger">Sheet Music</h1>
                <p class="lead text-white-50">Welcome back, <%= Session["Username"] %>. Select a chart below.</p>
            </div>
        </div>

        <div class="card bg-dark border-secondary shadow-sm mb-5">
            <div class="card-header border-bottom border-secondary py-3">
                <span class="fw-bold text-white fs-5">Song 1</span>
            </div>
            <div class="card-body text-center">
                <img src="Images/demo.png" alt="Song 1 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
                <br />
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">
                    Download Full PDF
                </a>
            </div>
        </div>

        <div class="card bg-dark border-secondary shadow-sm mb-5">
            <div class="card-header border-bottom border-secondary py-3">
                <span class="fw-bold text-white fs-5">Song 2</span>
            </div>
            <div class="card-body text-center">
                <img src="Images/demo.png" alt="Song 2 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
                <br />
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">
                    Download Full PDF
                </a>
            </div>
        </div>

        <div class="card bg-dark border-secondary shadow-sm mb-5">
            <div class="card-header border-bottom border-secondary py-3">
                <span class="fw-bold text-white fs-5">Song 3</span>
            </div>
            <div class="card-body text-center">
                <img src="Images/demo.png" alt="Song 3 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
                <br />
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">
                    Download Full PDF
                </a>
            </div>
        </div>
        
    </div>

</asp:Content>