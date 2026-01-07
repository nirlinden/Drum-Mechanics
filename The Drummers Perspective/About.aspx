<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="The_Drummers_Perspective.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container text-center pt-5 pb-5">
        <h1 class="metal-title">PROJECT<br>OVERVIEW</h1>
        
        <div class="mb-5">
            <span class="metal-subtitle">The Objective</span>
        </div>
        
        <p class="lead text-light mb-4" style="max-width: 700px; margin: 0 auto; text-shadow: 1px 1px 2px #000;">
            Most listeners hear a song. We hear mathematics.
            <br />
            We break down the drum tracks to analyze exactly what makes heavy metal so complex.
        </p>
    </div>

    <div class="container" style="max-width: 1000px;">
        <div class="row g-4 mb-5">
            
            <div class="col-md-4">
                <div class="tech-card h-100 text-center">
                    <h2 class="h1 text-danger fw-bold">01</h2>
                    <h4 class="text-white mt-3 text-uppercase">Polyrhythms</h4>
                    <p class="small mt-2 text-muted">
                        The art of playing two different time signatures simultaneously (e.g., 7/8 against 4/4).
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="tech-card h-100 text-center">
                    <h2 class="h1 text-danger fw-bold">02</h2>
                    <h4 class="text-white mt-3 text-uppercase">Endurance</h4>
                    <p class="small mt-2 text-muted">
                        Sustaining 200+ Beats Per Minute (BPM) using double-kick techniques for extended durations.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="tech-card h-100 text-center">
                    <h2 class="h1 text-danger fw-bold">03</h2>
                    <h4 class="text-white mt-3 text-uppercase">Precision</h4>
                    <p class="small mt-2 text-muted">
                        Micro-timing adjustments that create the "human feel" within a rigid mathematical grid.
                    </p>
                </div>
            </div>

        </div>

        <hr class="border-secondary my-5" />
        
        <div class="text-center">
            <a href="Default.aspx" class="btn btn-red px-5 mb-4">RETURN HOME</a>
        </div>
    </div>

</asp:Content>