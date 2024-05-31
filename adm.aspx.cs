using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace choosing_a_pet
{
    public partial class adm : System.Web.UI.Page
    {
        public static string connection_string = @"Data Source=LAPTOP;Initial Catalog=choosing_a_pet;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
       

        private void GetDataFromFound()
        {
            using (SqlConnection new_connection = new SqlConnection(connection_string))
            {
                using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
                {
                    using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
                    {
                        sql_get_data.Connection = new_connection;
                        get_data_adapt.SelectCommand = sql_get_data;
                        using (DataTable table_data_vet = new DataTable())
                        {
                            get_data_adapt.Fill(table_data_vet);
                            FoundList.DataSource = table_data_vet;
                            FoundList.DataBind();
                        }
                    }
                }
            }
            
        }



      


        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            GetDataFromFound();

            
        }

        protected void BEnter_Click(object sender, EventArgs e)
        {
            if (TLogin.Text == "admin" && TPass.Text == "1234")
            {
                Session["admin"] = "admin";
                LLogin.Visible = false;
                TLogin.Visible = false;
                LPass.Visible = false;
                TPass.Visible = false;
                BEnter.Visible = false;
                LResult.Text = "Вам доступны функции администратора.";
                GetDataFromFound();
                AllAds.Visible = true;
            }
            else
            {
                Session["admin"] = "false";
                LLogin.Visible = true;
                TLogin.Visible = true;
                LPass.Visible = true;
                TPass.Visible = true;
                BEnter.Visible = true;
                LResult.Text = "Вам не доступны функции администратора.";
            }
        }
    }
}