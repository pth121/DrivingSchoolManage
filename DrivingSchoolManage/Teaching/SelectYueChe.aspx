﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="SelectYueChe.aspx.cs" Inherits="DrivingSchoolManage.Teaching.SelectYueChe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        教练分配查询</div>
    <br />
    <table align="center" cellpadding="3" cellspacing="1" style="border: medium solid #FFCC99;
        width: 98%; height: 100%;">
        <tr>
            <td height="35" colspan="2" align="center">
                学员编号：<asp:TextBox runat="server" Width="150px" ID="Textbox1" />
                <asp:Button ID="ButtonSelect" runat="server" Text="按编号查找" OnClick="ButtonSelect_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    AllowPaging="True" AllowSorting="True" PageSize="12" OnRowDataBound="GridView1_RowDataBound"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="xnum" HeaderText="学员编号" ReadOnly="True" />
                        <asp:BoundField DataField="xname" HeaderText="学员姓名" />
                        <asp:BoundField DataField="jname" HeaderText="教练名" />
                        <asp:BoundField DataField="yctime" HeaderText="约车时间" />
                        <asp:BoundField DataField="ycaddr" HeaderText="约车地点" />
                        <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
                        <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#FF3300" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
