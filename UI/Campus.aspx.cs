using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SchoolInfo.Utils;

namespace SchoolInfo.UI
{
    public partial class Campus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtCampusList = SQLServerUtil.GetDataTable("SELECT * FROM tb_campus");
        }

        public DataTable dtCampusList;

    }
}