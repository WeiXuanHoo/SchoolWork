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
    public partial class Campus_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_campus WHERE campus_id = " + Request["id"]);
        }

        public DataTable dtData;

    }
}