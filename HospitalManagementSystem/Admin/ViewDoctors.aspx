<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewDoctors.aspx.cs" Inherits="HospitalManagementSystem.Admin.ViewDoctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src ="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.dataTables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
                        <div class="card-header">
                            <strong class="card-title">Doctors List</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">

                                <HeaderTemplate>
                                    <table class="table" id="example">
                              <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                  <th scope="col">Image</th>
                                  <th scope="col">Name</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">Department</th>
                                  <th scope="col">Specialist</th>
                                  <th scope="col">Status</th>
                                  <th scope="col">Edit Doctor</th>
                                   <th scope="col">Delete Doctor</th>




                              </tr>
                          </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                  <tr>
                               <td><%#Eval("ID") %></td>
                              <td><img src="<%#Eval("Image") %>" height="100" width="100" /></td>
                              <td><%#Eval("Name") %></td>
                              <td><%#Eval("Email") %></td>
                              <td><%#Eval("Department") %></td>
                              <td><%#Eval("Specialist")%></td>
                               <td><%#Eval("Status") %></td>
                              <td><a href="EditDoctors.aspx?id=<%#Eval("ID")%>">Edit Doctor</a></td>
                              <td><a href="DeleteDoctor.aspx?id2=<%#Eval("ID")%>">Delete Doctor</a></td>

                                 </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                   </table>

                                </FooterTemplate>


                            </asp:Repeater>
                            
                         
                           
                         
                      
                        </div>

    <script type="text/javascript">

        $(document).ready(function () {

            $('#example').DataTable({

                "pagingType": "full_numbers"

            });
        });

    </script>
                  

</asp:Content>
