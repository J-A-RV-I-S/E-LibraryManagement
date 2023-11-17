<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="WebApplication1.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript" >
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           // $('.table1').DataTable();
       });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Author Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/writer.png" width="100px" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Author ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Author Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button class="btn btn-lg btn-success btn-block" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button class="btn btn-lg btn-warning btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Author List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
