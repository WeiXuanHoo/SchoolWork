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
    public partial class EventList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtDataList = SQLServerUtil.GetDataTable("SELECT * FROM tb_event ORDER BY event_id DESC");
        }

        public DataTable dtDataList;
    }
}