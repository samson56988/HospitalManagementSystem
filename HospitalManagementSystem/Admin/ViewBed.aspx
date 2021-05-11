<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewBed.aspx.cs" Inherits="HospitalManagementSystem.Admin.ViewBed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src ="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.dataTables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Bed List</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">

                                <HeaderTemplate>
                                    <table class="table table-bordered" id="example">
                              <thead>
                                <tr>
                               
                                  <th scope="col">ID</th>
                                  <th scope="col">SeatNO</th>
                                  <th scope="col">FloorNo</th>
                                     <th scope="col">Rent Day</th>
                                    <th scope="col">Room</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Type</th>
                                     <th scope="col">Image</th>
                                    <th scope ="col">Edit</th>
                                    <th scope ="col">Delete</th>
                                 
                                  




                              </tr>
                          </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                  <tr>
                            
                                      <td><%#Eval("ID") %></td>
                                      <td><%#Eval("SeatNO") %></td>
                                      <td><%#Eval("FloorNo") %></td>
                                      <td><%#Eval("Rent_Day") %></td>
                                      <td><%#Eval("Room") %></td>
                                      <td><%#Eval("Status") %></td>
                                      <td><%#Eval("Type") %></td>
                                      <td><img src="<%#Eval("Image") %>" height="100" width="100"/></td>


                          <td><a href="EditBed.aspx?id=<%#Eval("ID")%>">Edit Bed</a></td>
                              
                         <td><a href="DeleteDepartment.aspx?id2=<%#Eval("ID")%>">Delete Bed</a></td>
       
                            
                  
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
