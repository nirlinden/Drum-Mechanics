<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="The_Drummers_Perspective._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5 pb-5">
        <h1 class="metal-title text-uppercase">DRUM<br>MECHANICS</h1>
        
        <div class="mt-3 mb-4">
            <span class="metal-subtitle">The Science of Heavy Metal</span>
        </div>
    </div>

    <div class="container pb-5 text-center cards-container">
        <div class="row mb-4">
            <div class="col-12">
                <hr class="border-secondary mb-4" />
                <h3 class="text-muted text-uppercase small letter-spacing-2">Select a Drumming Style</h3>
            </div>
        </div>

        <div class="row g-4 justify-content-center">
            
            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-peart.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">PRECISION</h3>  
                        <p class="small text-white opacity-75">
                            Learn how mathematical composition creates perfect rhythm.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-lombardo.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">SPEED</h3>
                        <p class="small text-white opacity-75">
                            Analyze the physical endurance required for thrash metal.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="face-card rounded" style="background-image: url('Images/card-portnoy.jpg');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">COMPLEXITY</h3>

                        <p class="small text-white opacity-75">
                            Understand odd-time signatures and progressive flow.
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <hr class="border-secondary my-5" />

    <div class="text-center mt-5 mb-5">
        <a href="About.aspx" class="btn btn-red btn-lg px-5">ABOUT</a>
    </div>

</asp:Content>