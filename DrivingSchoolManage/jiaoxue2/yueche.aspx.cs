﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace JXGL.jiaoxue2
{
    public partial class yueche : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = ""; 
            TextBox6.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-GP0GUGB\\SQLEXPRESS;Database=JXGL;Integrated Security = true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string sql = string.Format("insert into Y(xnum,xname,jname,yctime,ycaddr) values('" + TextBox1.Text + "','"
                + TextBox2.Text + "','" + this.DropDownList1.SelectedItem.Text + "','"+TextBox5 .Text +"','"+TextBox6 .Text +"')");
            SqlCommand cmd = new SqlCommand(sql, conn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblResult.Text = "信息保存成功";
            }
            else
            {
                lblResult.Text = "操作失败";
            }
            conn.Close(); 
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
