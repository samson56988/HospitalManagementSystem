<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditDepartment.aspx.cs" Inherits="HospitalManagementSystem.Admin.EditDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Edit Department</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Department Details</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Department</label>
                                          <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>




                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Department Description</label>
                                           <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                      </div>

                                       



                                       
                                      
                                       
                                     
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Update Department" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Department Updated Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>
