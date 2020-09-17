using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoatRents.DAL;

namespace BoatRents
{
    public partial class RentOutBoat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region "RentOutBoat"
        [System.Web.Services.WebMethod]
        public static string RentOutBoatUI(string BoatNumber, string CustomerName)
        {
            GetData getData = new GetData();
            try
            {
                return getData.RentOutBoatDB(BoatNumber, CustomerName);
            }
            catch (Exception ex)
            {
            }
            return "";
        }
        #endregion
    }
}