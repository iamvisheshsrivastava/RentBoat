using System;
using System.Data;
using System.Data.SqlClient;

namespace BoatRents.DAL
{
    public class GetData
    {
        public string AddNewBoatToInventoryDB(string BoatName, string HourlyRate)
        {
            string connetionString = null;
            var message = "";
            SqlConnection cnn;
            connetionString = "server=VISHESHS;database=ENTESSA;uid=sa;pwd=password@123";
            cnn = new SqlConnection(connetionString);
            using (SqlCommand cmd = new SqlCommand("SP_AddNewBoatToInventory", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@BoatName", SqlDbType.VarChar).Value = BoatName;
                cmd.Parameters.Add("@HourlyRate", SqlDbType.VarChar).Value = HourlyRate;

                cnn.Open();
                SqlDataReader rdr = null;
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    message = rdr["MESSAGE"].ToString();
                }
            }
            return message;
        }

        public string RentOutBoatDB(string BoatNumber, string CustomerName)
        {
            var message = "";
            string connetionString = null;
            SqlConnection cnn;
            connetionString = "server=VISHESHS;database=ENTESSA;uid=sa;pwd=password@123";
            cnn = new SqlConnection(connetionString);
            using (SqlCommand cmd = new SqlCommand("SP_RentOutBoat", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@BoatNumber", SqlDbType.VarChar).Value = BoatNumber;
                cmd.Parameters.Add("@CustomerName", SqlDbType.VarChar).Value = CustomerName;

                cnn.Open();
                SqlDataReader rdr = null;
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    message = rdr["MESSAGE"].ToString();
                }
            }
            return message;
        }
    }
}
