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
    public partial class Medical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtDataList = SQLServerUtil.GetDataTable("SELECT * FROM tb_medical");
        }

        public DataTable dtDataList;

    }
}