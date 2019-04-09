<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="issued_books.aspx.cs" Inherits="library.librarian.issued_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Available Books</strong>
            </div>
            <div class="card-body">

                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Customer Name</th>
                                    <!--<th scope="col">Cover</th> -->
                                    <th scope="col">Book's ISBN</th>
                                    <th scope="col">Issue Date</th>
                                    <th scope="col">Return Date</th>                                  
                                                                     
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("student_enrollment_no") %></td>
                            
                            <td><%# Eval("books_isbn") %></td>
                            <td><%# Eval("books_issue_date") %></td>
                            <td><%# Eval("books_approx_return_date") %></td>
                            
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
</asp:Content>
