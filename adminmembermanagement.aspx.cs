using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebApplication1
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // Go Button Link
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberById();
        }

        // Active Button Link
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStatus("active");
        }

        // Pending Button Link
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStatus("pending");
        }

        // Deactive Button Link
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatus("deactive");
        }

        // Delete Button Link
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMember();
        }

        // User Defined Function

        bool checkMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id = '" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
        }
        void deleteMember()
        {
            if(checkMemberExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id = '" + TextBox1.Text.Trim() + "' ", con);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else 
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }

            
        }

        void updateStatus(String status)
        {
            if(checkMemberExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status = '" + status + "' WHERE member_id = '" + TextBox1.Text.Trim() + "';", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
            
        }

        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id = '" + TextBox1.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox10.Text = dr.GetValue(5).ToString();
                        TextBox11.Text = dr.GetValue(6).ToString();
                        TextBox6.Text = dr.GetValue(7).ToString();

                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
