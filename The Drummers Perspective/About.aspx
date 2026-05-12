<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="The_Drummers_Perspective.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="text-center py-5">
        <h1 class="main-title">ABOUT</h1>
        <span class="main-subtitle">Analyzing the complexity of Progressive Metal</span>
    </div>

    <div class="container">
    <div class="row g-4 text-center">   
        <div class="col-md-4">
            <div class="about-card rounded">
                <h2 class="h1 text-danger fw-bold">01</h2>
                <h4 class="text-white mt-3">POLYRHYTHMS</h4>
                <p class="small mt-2 text-white-50">Playing different time signatures at once (e.g., 7/8 against 4/4).</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="about-card rounded">
                <h2 class="h1 text-danger fw-bold">02</h2>
                <h4 class="text-white mt-3">ENDURANCE</h4>
                <p class="small mt-2 text-white-50">Sustaining 200+ BPM with double-kick techniques for long sets.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="about-card rounded">
                <h2 class="h1 text-danger fw-bold">03</h2>
                <h4 class="text-white mt-3">PRECISION</h4>
                <p class="small mt-2 text-white-50">Creating a human "feel" while staying locked to a rigid grid.</p>
            </div>
        </div>
    </div>
</div>

</asp:Content>