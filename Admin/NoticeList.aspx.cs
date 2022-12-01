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
    public partial class NoticeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtDataList = SQLServerUtil.GetDataTable("SELECT * FROM tb_notice ORDER BY notice_id DESC");
        }

        public DataTable dtDataList;
    }
}