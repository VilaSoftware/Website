using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // giriş yaptı mı yapmadı mı
        OleDbConnection cnn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/files/databases/db.accdb"));
        cnn.Open();
        if (Session["userID"] == null)
        {
            Panel1.Visible = true;
        }
        else if (Session["userID"] != null)
        {
            Panel1.Visible = false;
        }

        // big post        
        OleDbCommand cmd = new OleDbCommand("select * from posts where post_type='big_post'", cnn);
        OleDbDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        // latest posts
        OleDbConnection cnn2 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/files/databases/db.accdb"));
        cnn2.Open();
        OleDbCommand cmd2 = new OleDbCommand("select * from posts order by post_added_time desc", cnn2);
        OleDbDataReader reader2 = cmd2.ExecuteReader();
        DataList2.DataSource = reader2;
        DataList2.DataBind();
        cnn.Close();


        Session["userID"] = null;
    }
}