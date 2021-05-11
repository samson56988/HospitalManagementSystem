<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStock.aspx.cs" Inherits="HospitalManagementSystem.Admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Request Stock/Add Stock</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Request Stock/Add Stock</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Name</label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Quantity</label>
                                           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>   

                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Price</label>
                                          <asp:TextBox ID="PriceID" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>  

                      
                                      

                                         <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Stock Type</label>
                                          <asp:DropDownList CssClass="form-control"  ID="DropDownList1" runat="server"></asp:DropDownList>
                                           </div>

                                      
                                      
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Proceed Stock" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Stock Added Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>

</asp:Content>
