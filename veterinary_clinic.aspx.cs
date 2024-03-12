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
    public partial class veterinary_clinic : System.Web.UI.Page
    {
        public static string connection_string = @"Data Source=LAPTOP-NQ4AHNK7;Initial Catalog=choosing_a_pet;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        //public DataTable GetVetClinicsData()
        //{
        //    SqlConnection new_connection = new SqlConnection(connection_string);

        //    new_connection.Open();



        //    string sql_get_data_command = "SELECT * FROM vetclinics";

        //    SqlCommand get_data_command = new SqlCommand(sql_get_data_command, new_connection);
      
        //    get_data_command.ExecuteNonQuery();

        //    SqlDataAdapter get_data_adapt = new SqlDataAdapter(get_data_command);
        //    DataTable vetclinics_data = new DataTable("vetclinics");
        //    get_data_adapt.Fill(vetclinics_data);




        //    new_connection.Close();
        //    return vetclinics_data;
        //}




        //public int FindMaxId()
        //{
        //    int max_id;
        //    SqlConnection new_connection = new SqlConnection(connection_string);

        //    new_connection.Open();



        //    string sql_max_id_command = "SELECT MAX(id) FROM vetclinics";

        //    SqlCommand max_id_command = new SqlCommand(sql_max_id_command, new_connection);


        //    max_id = (int)max_id_command.ExecuteScalar();


        //    new_connection.Close();
        //    return max_id;
        //}


        private void GetData()
        {
            using (SqlConnection new_connection = new SqlConnection(connection_string))
            {
                using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name, addres, reiting, added, tel FROM vetclinics"))
                {
                    using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
                    {
                        sql_get_data.Connection = new_connection;
                        get_data_adapt.SelectCommand = sql_get_data;
                        using (DataTable table_data_vet = new DataTable())
                        {
                            get_data_adapt.Fill(table_data_vet);
                            VetClinicsList.DataSource = table_data_vet;
                            VetClinicsList.DataBind();
                        }
                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            
        }
    }
}