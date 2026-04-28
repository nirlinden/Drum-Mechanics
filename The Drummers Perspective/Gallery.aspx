<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="The_Drummers_Perspective.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5 pb-5">
        <h1 class="metal-title text-uppercase">GALLERY</h1>
        <div class="mt-3 mb-4">
            <span class="metal-subtitle">Icons of Rock & Metal Drumming</span>
        </div>
    </div>

    <div class="container pb-5 text-center">
        
        <div class="row mb-4">
            <div class="col-12">
                <hr class="border-secondary mb-4" />
            </div>
        </div>

        <div class="row g-4 justify-content-center">
            
            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Metallica.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">METALLICA</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Tool.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">TOOL</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/BlackSabbath.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">BLACK SABBATH</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/LedZepplin.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">LED ZEPPELIN</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Slayer.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">SLAYER</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/DreamTheater.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">DREAM THEATER</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Rush.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">RUSH</h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-lg-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Qotsa.png'); height: 350px;">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1">QUEENS OF THE STONE AGE</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>