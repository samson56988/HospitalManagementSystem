<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddApointMent.aspx.cs" Inherits="HospitalManagementSystem.Admin.AddApointMent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Patient Appointment</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Patient Appointment</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Appointment ID</label>
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient Name</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div> 
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient Email</label>
                                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient Phone Number</label>
                                         <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Doctor</label>
                                         <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Department</label>
                                         <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Date</label>
                                         <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Time</label>
                                           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Message</label>
                                           <asp:TextBox ID="txt_Message" runat="server" CssClass="form-control"></asp:TextBox>
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
