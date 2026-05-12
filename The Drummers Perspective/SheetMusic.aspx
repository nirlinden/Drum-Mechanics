<%@ Page Title="Sheet Music" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SheetMusic.aspx.cs" Inherits="The_Drummers_Perspective.SheetMusic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container mt-5 text-white">
        <div class="row mb-5 border-bottom border-secondary pb-3">
            <div class="col">
                <h1 class="main-title"style="font-size:3rem">Sheet Music</h1>
                <p class="lead text-white-50">Welcome back, <%= Session["Username"] %>. Select a chart below.</p>
            </div>
        </div>

        <div class="card sheet-card bg-dark border-secondary shadow-sm mb-5 p-4 text-center">
            <h5 class="text-white fw-bold mb-4">Song 1</h5>
            <img src="Images/demo.png" alt="Song 1 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
            <div>
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">Download Full PDF</a>
            </div>
        </div>

        <div class="card sheet-card bg-dark border-secondary shadow-sm mb-5 p-4 text-center">
            <h5 class="text-white fw-bold mb-4">Song 2</h5>
            <img src="Images/demo.png" alt="Song 1 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
            <div>
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">Download Full PDF</a>
            </div>
        </div>

        <div class="card sheet-card bg-dark border-secondary shadow-sm mb-5 p-4 text-center">
            <h5 class="text-white fw-bold mb-4">Song 3</h5>
            <img src="Images/demo.png" alt="Song 1 Preview" class="img-fluid border border-secondary mb-4" style="max-height: 500px; object-fit: contain;" />
            <div>
                <a href="Downloads/demo.pdf" download class="btn btn-outline-danger fw-bold px-4">Download Full PDF</a>
            </div>
        </div>  
        
    </div>

</asp:Content>