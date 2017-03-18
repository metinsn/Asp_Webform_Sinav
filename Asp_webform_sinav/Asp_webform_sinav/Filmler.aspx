<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Filmler.aspx.cs" Inherits="Asp_webform_sinav.Filmler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12">

         <table class="table table-bordered">
                    <tr>
                        <td>
                            <asp:Label ID="Etiket1" runat="server" Text="Kurs Adı    :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtkursAdi" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket2" runat="server" Text="Kurs Saati :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtkurssaati" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Etiket3" runat="server" Text="Kurs Ücreti :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtkursucreti" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
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
                                <th>Kurs Adı</th>
                                <th>Kurs Saati</th>
                                <th>Kurs Ücreti</th>
                                <th>Sil    -    Güncelle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Tekrar1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("kursAdi") %></td>
                                        <td><%#Eval("kursUcret") %></td>
                                        <td><%#Eval("kursSaati") %></td>
                                        <td>
                                            <a href="kurslar.aspx?ID=<%#Eval("kursID") %>" class="btn btn-primary">Sil</a>
                                             <a href="kurslar.aspx?GID=<%#Eval("kursID") %>" class="btn btn-success">Güncelle</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>


    </div>
</asp:Content>
