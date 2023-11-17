<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section>
      <img src="imgs/home-bg.jpg" class="img-fluid" />
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img src="imgs/digital-inventory.png" width="150px" />
                  <h4>Digital Book Inventory</h4>
                  <p>To provide information on the availability of stocked items.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img src="imgs/search-online.png" width="150px" />
                  <h4>Search Books</h4>
                  <p>Search your desired books here.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img src="imgs/defaulters-list.png" width="150px" />
                  <h4>Defaulter List</h4>
                  <p>Functionality to return the library books issued against their name.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>
      <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img src="imgs/sign-up.png" width="150px" />
                  <h4>Sign Up</h4>
                  <p>A web page, popup, or modal where users enter the information required to access that website's services.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img src="imgs/search-online.png" width="150px" />
                  <h4>Search Books</h4>
                  <p>Search your desired books here.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img src="imgs/library.png" width="150px" />
                  <h4>Visit Us</h4>
                  <p>Have any query? Feel free to contact us.</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
