<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddPharmacy.aspx.cs" Inherits="HospitalManagementSystem.Admin.AddPharmacy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

      <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Pharmacy</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Pharmacy</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Pharmacy Holder Name</label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Pharmacy Name</label>
                                           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>   

                                       
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Pharmacy Address</label>
                                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Pharmacy Mobile No</label>
                                           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Marketing Officer</label>
                                           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Pharmacy Status</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
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
         </div>

</asp:Content>
