<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Yonetmen.aspx.cs" Inherits="Asp_webform_sinav.Yonetmen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-lg-12">

         <table class="table table-bordered">
                    <tr>
                        <td>
                            <asp:Label ID="Etiket1" runat="server" Text="Yönetmen Adı    :" Font-Size=" 25px" Font-Italic="true"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtYonetmenAdi" CssClass="form-control" runat="server"></asp:TextBox>
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
                                <th>Yönetmen Adı</th>                                
                                <th>Sil    -    Güncelle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Tekrar1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("YonetmenAdi") %></td>
                                        
                                        <td>
                                            <a href="Yonetmen.aspx?ID=<%#Eval("YonetmenID") %>" class="btn btn-primary">Sil</a>
                                             <a href="Yonetmen.aspx?GID=<%#Eval("YonetmenID") %>" class="btn btn-success">Güncelle</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
</asp:Content>
