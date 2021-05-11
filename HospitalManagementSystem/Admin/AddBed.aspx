<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBed.aspx.cs" Inherits="HospitalManagementSystem.Admin.AddBed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Bed Sit</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Bed Details Details</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Seat No</label>
                                          <asp:TextBox ID="Txtseatno" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>  
                                      
                                         
                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Floor No</label>
                                            <asp:DropDownList ID="FloorCB" CssClass="form-control" runat="server">
                                                <asp:ListItem>Floor 1</asp:ListItem>
                                                <asp:ListItem>Floor 2</asp:ListItem>
                                                <asp:ListItem>Floor 3</asp:ListItem>
                                                <asp:ListItem>Floor 4</asp:ListItem>
                                            </asp:DropDownList>
                                           </div>   

                                        <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Rent/Day</label>
                                          <asp:TextBox ID="Renttx" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                           </div>  

                      
                                      
                                          <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Room</label>
                                          <asp:TextBox ID="txtRoom" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div> 
                                      
                                          <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Status</label>
                                              <asp:DropDownList ID="StatusCB" CssClass="form-control" runat="server">
                                                  <asp:ListItem>Active</asp:ListItem>
                                                  <asp:ListItem>In-active</asp:ListItem>
                                              </asp:DropDownList>
                                           </div> 

                                         <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Type</label>
                                             <asp:DropDownList ID="TypeCB" CssClass="form-control" runat="server">
                                                 <asp:ListItem>General</asp:ListItem>
                                                 <asp:ListItem>Cabin</asp:ListItem>
                                                 <asp:ListItem></asp:ListItem>
                                             </asp:DropDownList>
                                           </div>

                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Room Image</label>
                                          <asp:FileUpload ID="F1" runat="server" CssClass="form-control" />
                                      </div>
                                      
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Add Bed" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Bed Added Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> 
</asp:Content>
