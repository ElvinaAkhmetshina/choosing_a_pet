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
    public partial class ads_details : System.Web.UI.Page
    {
        public static string connection_string = @"Data Source=LAPTOP-NQ4AHNK7;Initial Catalog=choosing_a_pet;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";


        //int id;
        //int tel;

        private string GetIdFromName(int id, string tel)
        {
            string image_url = id +tel +".jpg";


            return image_url;
        }




        private void GetPersonalData(int id, string tel)
        {
            using (SqlConnection new_connection = new SqlConnection(connection_string))
            {
                using (SqlCommand sql_get_data = new SqlCommand($"SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds where id = {id} and tel = {tel}"))
                {
                    using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
                    {
                        sql_get_data.Connection = new_connection;
                        get_data_adapt.SelectCommand = sql_get_data;
                        using (DataTable table_data_vet = new DataTable())
                        {
                            get_data_adapt.Fill(table_data_vet);
                            LName.Text = table_data_vet.Rows[0][1].ToString();
                            LTown.Text = table_data_vet.Rows[0][2].ToString();
                            LTel.Text = table_data_vet.Rows[0][3].ToString();
                            LAddr.Text = table_data_vet.Rows[0][4].ToString();
                            LComment.Text = table_data_vet.Rows[0][5].ToString();
                            UserImage.ImageUrl = GetIdFromName(id, tel);
                        }
                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var tel = Request.QueryString["tel"];
            int int_id = int.Parse(id);
            GetPersonalData(int_id, tel);
        
            UserImage.ImageUrl = GetIdFromName(int_id, tel);
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("ads.aspx");
        }
    }
}