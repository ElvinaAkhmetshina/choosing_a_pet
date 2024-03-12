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
    public partial class ads : System.Web.UI.Page
    {
        public static string connection_string = @"Data Source=LAPTOP-NQ4AHNK7;Initial Catalog=choosing_a_pet;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        
        private void GetDataFromFound(string admin)
        {
            using (SqlConnection new_connection = new SqlConnection(connection_string))
            {
                using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds where added = 'admin'"))
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



        //private void GetDataFromHelpSearch()
        //{
        //    using (SqlConnection new_connection = new SqlConnection(connection_string))
        //    {
        //        using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
        //        {
        //            using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
        //            {
        //                sql_get_data.Connection = new_connection;
        //                get_data_adapt.SelectCommand = sql_get_data;
        //                using (DataTable table_data_vet = new DataTable())
        //                {
        //                    get_data_adapt.Fill(table_data_vet);
        //                    HSearchList.DataSource = table_data_vet;
        //                    HSearchList.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}


        //private void GetDataFromHelpShelter()
        //{
        //    using (SqlConnection new_connection = new SqlConnection(connection_string))
        //    {
        //        using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
        //        {
        //            using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
        //            {
        //                sql_get_data.Connection = new_connection;
        //                get_data_adapt.SelectCommand = sql_get_data;
        //                using (DataTable table_data_vet = new DataTable())
        //                {
        //                    get_data_adapt.Fill(table_data_vet);
        //                    HShelterList.DataSource = table_data_vet;
        //                    HShelterList.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}




        //private void GetDataFromLost()
        //{
        //    using (SqlConnection new_connection = new SqlConnection(connection_string))
        //    {
        //        using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
        //        {
        //            using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
        //            {
        //                sql_get_data.Connection = new_connection;
        //                get_data_adapt.SelectCommand = sql_get_data;
        //                using (DataTable table_data_vet = new DataTable())
        //                {
        //                    get_data_adapt.Fill(table_data_vet);
        //                    LostList.DataSource = table_data_vet;
        //                    LostList.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}




        //private void GetDataFromNeedsAdopt()
        //{
        //    using (SqlConnection new_connection = new SqlConnection(connection_string))
        //    {
        //        using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
        //        {
        //            using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
        //            {
        //                sql_get_data.Connection = new_connection;
        //                get_data_adapt.SelectCommand = sql_get_data;
        //                using (DataTable table_data_vet = new DataTable())
        //                {
        //                    get_data_adapt.Fill(table_data_vet);
        //                    NeedsAdoptList.DataSource = table_data_vet;
        //                    NeedsAdoptList.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}




        //private void GetDataFromAdopt()
        //{
        //    using (SqlConnection new_connection = new SqlConnection(connection_string))
        //    {
        //        using (SqlCommand sql_get_data = new SqlCommand("SELECT id, name_fam_ot, town, tel, addr, comment, added FROM users_adds"))
        //        {
        //            using (SqlDataAdapter get_data_adapt = new SqlDataAdapter())
        //            {
        //                sql_get_data.Connection = new_connection;
        //                get_data_adapt.SelectCommand = sql_get_data;
        //                using (DataTable table_data_vet = new DataTable())
        //                {
        //                    get_data_adapt.Fill(table_data_vet);
        //                    TempAdoptList.DataSource = table_data_vet;
        //                    TempAdoptList.DataBind();
        //                }
        //            }
        //        }
        //    }
        //}







        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataFromFound("admin");
            //GetDataFromHelpSearch();
            //GetDataFromHelpShelter();
            //GetDataFromLost();
            //GetDataFromNeedsAdopt();
            //GetDataFromAdopt();

        }
    }
}