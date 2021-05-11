<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSchedule.aspx.cs" Inherits="HospitalManagementSystem.Admin.AddSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Schedule</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Schedule</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Doctor Name</label>
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Available Days</label>
                                           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div> 
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Available Time</label>
                                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Status</label>
                                         <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
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
