using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;
using System.Data;

namespace SchoolInfo.Admin
{
    public partial class EduationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtDataList = SQLServerUtil.GetDataTable("SELECT * FROM tb_eduation ORDER BY eduation_id DESC");
        }

        public DataTable dtDataList;
    }
}