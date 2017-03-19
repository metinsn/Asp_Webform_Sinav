<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Filmler.aspx.cs" Inherits="Asp_webform_sinav.Filmler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12">

         <table class="table table-bordered">
                    <tr>
                        <td>
                            <asp:Label ID="Etiket1" runat="server" Text="Film Adı    :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFilmAdi" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket2" runat="server" Text="Film Yılı :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFilmYili" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket3" runat="server" Text="Film Turu :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFilmTuru" CssClass="form-control" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                        <td>
                            <asp:Label ID="Etiket4" runat="server" Text="Yönetmen :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFilmYönetmen" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
             <tr>
                        <td>
                            <asp:Label ID="Etiket5" runat="server" Text="Aktör :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFilmAktor" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="butonKaydet" runat="server" Text="Kaydet" CssClass="btn btn-block" Font-Bold="true" BackColor="Aqua" OnClick="butonKaydet_Click" />
                            <asp:Button ID="butonGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-block" Font-Bold="true" BackColor="#ff5050" OnClick="butonGuncelle_Click"  />
                        </td>
                    </tr>
                </table>
                <%-- Grid Tablo --%>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead style="color: slateblue">
                            <tr>
                                <th>Film Adı</th>
                                <th>Film Yılı</th>
                                <th>Film Türü</th>
                                <th>Sil    -    Güncelle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Tekrar1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("FilmAdi") %></td>
                                        <td><%#Eval("FilmYili") %></td>
                                        <td><%#Eval("FilmTuru") %></td>
                                       <%-- <td><%#Eval("YonetmenNo") %></td>
                                        <td><%#Eval("AktorNo") %></td>--%>
                                        <td>
                                            <a href="Filmler.aspx?ID=<%#Eval("FilmNo") %>" class="btn btn-primary">Sil</a>
                                             <a href="Filmler.aspx?GID=<%#Eval("FilmNo") %>" class="btn btn-success">Güncelle</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>


    </div>
</asp:Content>
