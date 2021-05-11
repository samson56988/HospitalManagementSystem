<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="HospitalManagementSystem.Admin.AddPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Patient</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Patient</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Date</label>
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient Type</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div> 
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient Name</label>
                                           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Gender</label>
                                         <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Date Of Birth</label>
                                         <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Occupation</label>
                                         <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Relative</label>
                                         <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server"></asp:DropDownList>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Relative Name</label>
                                           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Patient  Mobile</label>
                                           <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Home  Mobile</label>
                                           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Blood Group</label>
                                           <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Religion</label>
                                           <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Current Address</label>
                                           <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Permanent Address</label>
                                           <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Visiting Doctors</label>
                                           <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Floor Bed</label>
                                           <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Email</label>
                                           <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Image</label>
                                           <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
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
