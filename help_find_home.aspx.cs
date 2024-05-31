using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace choosing_a_pet
{
    public partial class help_find_home : System.Web.UI.Page
    {
        public string user_id;
        public string user_name;
        public string user_town;
        public string user_tel;
        public string user_addr;
        public string user_comment;
        public string who_added;
        public string table_name;
        public static string connection_string = @"Data Source=LAPTOP-NQ4AHNK7;Initial Catalog=choosing_a_pet;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        public class DataBase
        {
            SqlConnection new_connection = new SqlConnection(connection_string);
            public void OpenConnection()
            {
                new_connection.Open();
            }
            public void CloseConnection()
            {
                if (new_connection.State == System.Data.ConnectionState.Open)
                {
                    new_connection.Close();
                }
            }
            public SqlConnection GetConnection()
            {
                return new_connection;
            }
        }
        public static DataBase users_notice = new DataBase();
        public int DataBaseNotice(string table_name, string name, string town, string tel, string addr, string comment, string added)
        {

            string add_query_str = $"insert into {table_name}(name_fam_ot, town, tel, addr, comment, added) values('{name}','{town}','{tel}', '{addr}','{comment}', '{added}')";

            SqlCommand add_cmd = new SqlCommand(add_query_str, users_notice.GetConnection());
            users_notice.OpenConnection();
            if (add_cmd.ExecuteNonQuery() == 1)
            {
                users_notice.CloseConnection();
                return 1;
            }
            else
            {
                users_notice.CloseConnection();
                return 0;
            }

        }


        public int FindLastId()
        {
            int id;
            string add_query_str = "SELECT MAX(id) FROM users_adds";

            SqlCommand add_cmd = new SqlCommand(add_query_str, users_notice.GetConnection());
            users_notice.OpenConnection();
            
            id = Convert.ToInt32(add_cmd.ExecuteScalar());
            users_notice.CloseConnection();
            return id+1;
        }





        protected void Page_Load(object sender, EventArgs e)
        {

        }



       


        protected void ButtonFound_Click(object sender, EventArgs e)
        {
            table_name = "users_adds";
            user_id = FindLastId().ToString();
            user_name = TNameFound.Text;
            user_town = TTownFound.Text;
            user_tel = TTelFound.Text;
            user_addr = TAddrFound.Text;
            user_comment = TCommentFound.Text;
            DataBaseNotice(table_name, user_name, user_town, user_tel, user_addr, user_comment, "user");
            string strFileName1, strFileName2;
            string strFilePath;
            string strFolder;
            strFolder = "C:\\choosing_a_pet\\";
            // Retrieve the name of the file that is posted.
            strFileName1 = user_id;
            strFileName2 = user_tel;
            //strFileName = Path.GetFileName(strFileName);
            if (IFoundLostDog.Value != "")
            {
                try
                {
                    strFilePath = strFolder + strFileName1 + strFileName2 + ".jpg";
                    IFoundLostDog.PostedFile.SaveAs(strFilePath);
                    IFoundLostDog.PostedFile.SaveAs(strFilePath);
                }
                catch
                {
                    LFoundLostDog.Text = "Приносим свои извинения, произошла ошибка загрузки изображения.";
                }
            }

        }

      
    }
}