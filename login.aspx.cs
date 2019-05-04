using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // giriş yaptı mı yapmadı mı
        OleDbConnection cnn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/files/databases/db.accdb"));
        cnn.Open();
        if (Session["userID"] == null)
        {
            ;
        }
        else if (Session["userID"] != null)
        {
            Response.Redirect("index.aspx");
        }
    }
    
    // giriş yap
    protected void Button1_Click(object sender, EventArgs e)
    {
        Boolean control = false;
        OleDbConnection cnn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+Server.MapPath("~/files/databases/db.accdb"));
        cnn.Open();
        OleDbCommand cmd = new OleDbCommand("select * from users", cnn);
        OleDbDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if (TextBox1.Text == reader["user_id"].ToString() && TextBox2.Text == reader["user_password"].ToString())
            {
                control = true;
                Session["userID"] = reader["user_id"].ToString();
                Response.Redirect("index.aspx");
            }
        }
        if (control == false)
        {
            Label1.Text = "Yanlış kullanıcı adı / şifre";
        }
        cnn.Close();
    }
}