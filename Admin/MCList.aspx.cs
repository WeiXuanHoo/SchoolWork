using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class MCList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtDataList = SQLServerUtil.GetDataTable("SELECT * FROM tb_mc ORDER BY mc_id DESC");
        }

        public DataTable dtDataList;
    }
}