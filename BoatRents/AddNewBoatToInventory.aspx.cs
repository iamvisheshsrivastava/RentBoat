using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Globalization;
using System.Web.Services;
using System.Configuration;
using System.Collections;
using BoatRents.DAL;

namespace BoatRents
{
    public partial class AddNewBoatToInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region "AddNewBoatToInventory"
        [System.Web.Services.WebMethod]
        public static string AddNewBoatToInventoryUI(string BoatName, string HourlyRate)
        {
            GetData getData = new GetData();
            try
            {
                return getData.AddNewBoatToInventoryDB(BoatName, HourlyRate);
            }
            catch (Exception ex)
            {
            }
            return "";
        }
        #endregion
    }
}