<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BoatRents._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Welcome to BoatRent's  Portal. Here you can rent any boat on Hourly basis.</h2>
            </hgroup>
            
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Add a new Boat to inventory</h5>
            <a href="AddNewBoatToInventory.aspx">Go to AddBoat Page...</a>
        </li>
        <li class="two">
            <h5>Rentout a Boat</h5>
            <a href="RentOutBoat.aspx">Goto renting a boat..</a>
        </li>
        
    </ol>
</asp:Content>
