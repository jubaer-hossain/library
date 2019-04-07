using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace library.librarian
{
    public partial class edit_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\library\library\App_Data\lms.mdf;Integrated Security=True");
        int id_passed = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (IsPostBack) return;

            id_passed = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books where id = "+id_passed+"";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                title.Text = dr["books_title"].ToString();
                author.Text = dr["books_author_name"].ToString();
                isbn.Text = dr["books_isbn"].ToString();
                quantity.Text = dr["availability_qty"].ToString();
            }


        }

        protected void b1_Click(object sender, EventArgs e)
        {

            id_passed = Convert.ToInt32(Request.QueryString["id"].ToString());
            SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update books set books_title='" + title.Text + "', books_author_name='" + author.Text + "', books_isbn='" + isbn.Text + "', availability_qty='" + quantity.Text + "' where id = "+id_passed+"";
                cmd.ExecuteNonQuery();
                book_added.Style.Add("display", "block");
            
           
        }
    }
}