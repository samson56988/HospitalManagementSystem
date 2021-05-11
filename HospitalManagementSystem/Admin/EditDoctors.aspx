<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditDoctors.aspx.cs" Inherits="HospitalManagementSystem.Admin.EditDoctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Edit Doctors</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Doctor Details</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Name</label>
                                          <asp:TextBox ID="txt_Name" runat="server" CssClass="form-control"></asp:TextBox>
                                      </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Degree</label>
                                       <asp:DropDownList CssClass="form-control" ID="txt_Degree" runat="server">
                                           <asp:ListItem>Bsc</asp:ListItem>
                                           <asp:ListItem>Msc</asp:ListItem>
                                           <asp:ListItem></asp:ListItem>
                                           </asp:DropDownList>
                                         
                                      </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Username</label>
                                          <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Email</label>
                                          <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Date Of Birth</label>
                                          <asp:TextBox ID="DOB" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Specialist</label>
                                          <asp:DropDownList CssClass="form-control" ID="SpecialistDropDown" runat="server"></asp:DropDownList>
                                      </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Department</label>
                                          <asp:DropDownList CssClass="form-control" ID="DepartmentCB" runat="server"></asp:DropDownList>
                                      </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Country</label>
                                          <asp:DropDownList CssClass="form-control" ID="CountryCb" runat="server">
                                              <asp:ListItem>Nigeria</asp:ListItem>
                                           </asp:DropDownList>
                                      </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Address</label>
                                           <asp:TextBox ID="Address" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                      </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Phone</label>
                                          <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Short Bio</label>
                                           <asp:TextBox ID="txtBio" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Status</label>
                                          <asp:DropDownList CssClass="form-control" ID="DropDownStatus" runat="server">
                                              <asp:ListItem>Active</asp:ListItem>
                                              <asp:ListItem>In-active</asp:ListItem>


                                          </asp:DropDownList>
                                      
                                      </div>
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Doctor Image</label>
                                          <asp:FileUpload ID="F1" runat="server" CssClass="form-control" />
                                      </div>




                                       
                                      
                                       
                                     
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Add Doctor" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Doctor Updated Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  
    
</asp:Content>
