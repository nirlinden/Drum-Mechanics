<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="The_Drummers_Perspective.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5 pb-5">
        <h1 class="metal-title text-uppercase">ICONIC BANDS</h1>
        <div class="mt-3 mb-4">
            <span class="metal-subtitle">Bands that revolutionized drums</span>
        </div>
    </div>

    <div class="container pb-5 text-center cards-container">
        <div class="row g-4 justify-content-center">
            
            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/LedZepplin.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">LED ZEPPELIN</h3>  
                        <p class="small text-white opacity-75">The heavy foundation and swing of John Bonham.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Metallica.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">METALLICA</h3>
                        <p class="small text-white opacity-75">The double-bass era and thrash stamina.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Tool.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">TOOL</h3>
                        <p class="small text-white opacity-75">The sacred geometry of Danny Carey’s polyrhythms.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Rush.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">RUSH</h3>
                        <p class="small text-white opacity-75">The lyrical precision and architectural kit of Neil Peart.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Slayer.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">SLAYER</h3>
                        <p class="small text-white opacity-75">The relentless velocity and aggression of Dave Lombardo.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/DreamTheater.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">DREAM THEATER</h3>
                        <p class="small text-white opacity-75">A masterclass in technical skill and odd-time flow.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/BlackSabbath.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">BLACK SABBATH</h3>
                        <p class="small text-white opacity-75">The dynamic jazz-inspired darkness of Bill Ward.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="face-card rounded" style="background-image: url('Images/Bands/Qotsa.png');">
                    <div class="face-card-content text-start">
                        <h3 class="text-white mb-1 text-uppercase">QOTSA</h3>
                        <p class="small text-white opacity-75">The powerful drive of modern desert rock.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>