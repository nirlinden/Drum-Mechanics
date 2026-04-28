<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="The_Drummers_Perspective._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5 pb-5">
        <h1 class="metal-title text-uppercase">DRUM<br>MECHANICS</h1>
        
        <div class="mt-3 mb-4">
            <span class="metal-subtitle">Explaining Progressive Metal</span>
        </div>
    </div>

    <div class="container pb-5 text-center cards-container">
        
        <div class="row mb-4">
            <div class="col-12">
                <hr class="border-secondary mb-4" />
                <h3 class="small mt-2 text-white-50" style="letter-spacing: 2px;">Select a Drumming Style</h3>
            </div>
        </div>

        <div class="row g-4 justify-content-center">
            
            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-peart.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">PRECISION</h3> 
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-lombardo.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">SPEED</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-portnoy.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">COMPLEXITY</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="text-center mt-5 mb-5">
        <a href="About.aspx" class="btn btn-red btn-lg px-5">ABOUT</a>
    </div>

</asp:Content>