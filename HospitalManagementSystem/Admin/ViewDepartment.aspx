<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewDepartment.aspx.cs" Inherits="HospitalManagementSystem.ViewDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src ="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.dataTables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Department List</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">

                                <HeaderTemplate>
                                    <table class="table table-bordered" id="example">
                              <thead>
                                <tr>
                                 <%--// <th scope="col">Image</th>--%>
                                  <th scope="col">ID</th>
                                  <th scope="col">Department</th>
                                  <th scope="col">Department Description</th>
                                    <th scope="col">Edit</th>
                                    <th scope="col">Delete</th>
                                 
                                  




                              </tr>
                          </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                  <tr>
                             <%-- <td><img src="<%#Eval("studentimage") %>" height="100" width="100" /></td>--%>
                              <td><%#Eval("DepartmentID") %></td>
                                      <td><%#Eval("Department") %></td>
                              <td><%#Eval("DepartmentDescription") %></td>
                          <td><a href="EditDepartment.aspx?id=<%#Eval("DepartmentID")%>">Edit Books</a></td>
                              
                         <td><a href="DeleteDepartment.aspx?id2=<%#Eval("DepartmentID")%>">Delete Books</a></td>
       
                            
                  
                                 </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                   </table>

                                </FooterTemplate>


                            </asp:Repeater>
                            
                         
                           
                         
                      
                        </div>
                    </div>
                </div>
            
       <script type="text/javascript">

        $(document).ready(function () {

            $('#example').DataTable({

                "pagingType": "full_numbers"

            });
        });

    </script>            
                      


</asp:Content>
