using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                
                
            }
        }
        SqlConnection con = new SqlConnection("Data Source=DHAVAL;Initial Catalog=employee;User ID=sa;Password=Dhav@l05");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into empdetail values('" + int.Parse(TextBox1.Text) + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            Response.Redirect(Request.Url.AbsoluteUri);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from empdetail", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update empdetail set Name = '"+TextBox2.Text+"',Email = '"+TextBox3.Text+"',Contact = '"+TextBox4.Text+"',DOB = '"+TextBox5.Text+"',Gender = '"+TextBox6.Text+"',Address = '"+ TextBox7.Text +"',Department='"+ TextBox8.Text +"' where Employee_ID ='" + int.Parse(TextBox1.Text) + "'",con );
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            Response.Redirect(Request.Url.AbsoluteUri);
            LoadRecord();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete empdetail where Employee_ID ='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            Response.Redirect(Request.Url.AbsoluteUri);
            LoadRecord();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from empdetail where Employee_ID='"+ int.Parse(TextBox1.Text) +"'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(2).ToString();
                TextBox3.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
                TextBox5.Text = r.GetValue(5).ToString();
                TextBox6.Text = r.GetValue(6).ToString();
                TextBox7.Text = r.GetValue(7).ToString();
                TextBox8.Text = r.GetValue(1).ToString();
            }

        }

        
    }
}
       