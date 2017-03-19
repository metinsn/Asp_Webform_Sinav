<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Aktorler.aspx.cs" Inherits="Asp_webform_sinav.Aktorler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">

         <table class="table table-bordered">
                    <tr>
                        <td>
                            <asp:Label ID="Etiket1" runat="server" Text="Aktor Adı    :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAktorAdi" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket2" runat="server" Text="Aktor Doğum Yılı :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAktorDogYili" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket3" runat="server" Text="Aktor Rolü :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAktorRolu" CssClass="form-control" runat="server" ></asp:TextBox>
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
                                <th>Aktor Adı</th>
                                <th>Aktor Doğum Yılı</th>
                                <th>Aktor Rolü</th>
                              <%--  <th>Aktor Filmler</th>--%>
                                <th>Sil    -    Güncelle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Tekrar1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("AktorAdi") %></td>
                                        <td><%#Eval("AktorDogumYili") %></td>
                                        <td><%#Eval("AktorFilmRolu") %></td>
                                       <%-- <td><%#Eval("Filmleri") %></td>--%>
                                        <td>
                                            <a href="Aktorlar.aspx?ID=<%#Eval("AktorNo") %>" class="btn btn-primary">Sil</a>
                                             <a href="Aktorlar.aspx?GID=<%#Eval("AktorNo") %>" class="btn btn-success">Güncelle</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
    </div>

</asp:Content>
