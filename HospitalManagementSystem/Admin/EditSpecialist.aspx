<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditSpecialist.aspx.cs" Inherits="HospitalManagementSystem.EditSpecialist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
      <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src ="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.dataTables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Specialist</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Specialist Details</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Specialist Name</label>
                                          <asp:TextBox ID="Specialist" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>      
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Edit Specialist" OnClick="btnadd_Click" />
                                      </div>

                                      <div>
                                         

                                       
                                      </div>

                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Specialist Updated Successfully </strong>
                        </div>
                                        <div class="card-header">
                            <strong class="card-title">Specialist List</strong>
                        </div>

                                          <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">

                                <HeaderTemplate>
                                    <table class="table table-bordered" id="example">
                              <thead>
                                <tr>
                                 <%--// <th scope="col">Image</th>--%>
                                  <th scope="col">ID</th>
                                  <th scope="col">Specialist</th>

                              </tr>
                          </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                  <tr>
                         
                              <td><%#Eval("ID") %></td>
                             <td><%#Eval("Specialist") %></td>
                           
                         
                              
                         <%--<td><a href="DeleteDepartment.aspx?id2=<%#Eval("DepartmentID")%>">Delete Books</a></td>--%>
       
                            
                  
                                 </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                   </table>

                                </FooterTemplate>


                            </asp:Repeater>
                            
                         
                           
                         
                      
                        </div>



                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                
    <script type="text/javascript">

        $(document).ready(function () {

            $('#example').DataTable({

                "pagingType": "full_numbers"

            });
        });

    </script>  
   



</asp:Content>
