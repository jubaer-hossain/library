<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/librarian.Master" AutoEventWireup="true" CodeBehind="add_books.aspx.cs" Inherits="library.librarian.add_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add new books</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">

                                  <form action="" id="f1" runat="server" method="post" novalidate="novalidate">
                                      
                                      <div class="form-group">
                                          <label class="control-label mb-1">Book's Name</label>
                                          
                                          <asp:TextBox ID="title" runat="server" class="form-control" ></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label class="control-label mb-1">Book's Image</label>
                                          <asp:FileUpload ID="fo1" runat="server" class="form-control" />
                                      </div>

                                      <div class="form-group">
                                          <label class="control-label mb-1">Book's Author Name</label>
                                          
                                          <asp:TextBox ID="author" runat="server" class="form-control" ></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label class="control-label mb-1">Book's ISBN</label>
                                          
                                          <asp:TextBox ID="isbn" runat="server" class="form-control" ></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label class="control-label mb-1">Book's Quatity</label>
                                          
                                          <asp:TextBox ID="quantity" runat="server" class="form-control" ></asp:TextBox>
                                      </div>
                                      
                                      
                                      <div>
                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Book" OnClick="b1_Click" />
                                      </div>
                                      <div id="book_added" class="alert alert-success" runat="server" style="margin-top: 10px; display: none;">
                                           <strong>Book addedd successfully!</strong>
                                     </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->

</asp:Content>

