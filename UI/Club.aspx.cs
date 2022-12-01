using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;
using System.Data;

namespace SchoolInfo.UI
{
    public partial class Club : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtClubList = SQLServerUtil.GetDataTable("SELECT * FROM tb_club");
            dtEventList = SQLServerUtil.GetDataTable("SELECT * FROM tb_clubevent");
            if (!IsPostBack)
            {
                if (dtClubList != null)
                {
                    for (int i = 0; i < dtClubList.Rows.Count; i++)
                    {
                        txtSelect.Items.Add(new ListItem(dtClubList.Rows[i]["club_name"].ToString(), dtClubList.Rows[i]["club_id"].ToString()));
                    }
                }
            }
        }

        public DataTable dtClubList;

        public DataTable dtEventList;

        public int ClubIndex = 0;

        protected void txtSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClubIndex = txtSelect.SelectedIndex;
        }

    }
}