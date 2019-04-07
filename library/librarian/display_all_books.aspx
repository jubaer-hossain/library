<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="display_all_books.aspx.cs" Inherits="library.librarian.display_all_books" %>

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
                                    <th scope="col">Book Name</th>
                                    <!--<th scope="col">Cover</th> -->
                                    <th scope="col">Author</th>
                                    <th scope="col">ISBN</th>
                                    <th scope="col">Availability</th>                                  
                                    <th scope="col">Edit Book</th>                                  
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("books_title") %></td>
                            <!--<td><img src="<%# Eval("book_image") %>" height="100" width="50"/></td>-->
                            <td><%# Eval("books_author_name") %></td>
                            <td><%# Eval("books_isbn") %></td>
                            <td><%# Eval("availability_qty") %></td>
                            <td><a href="edit_books.aspx?id=<%# Eval("id") %>">Edit</a></td>
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
