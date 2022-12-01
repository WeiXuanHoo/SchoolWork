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
    public partial class ClubEventUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_clubevent WHERE clubevent_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtName.Text = dtData.Rows[0]["clubevent_name"].ToString();
                txtContent.Text = dtData.Rows[0]["clubevent_content"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("UPDATE tb_clubevent SET clubevent_name = '" + name + "', clubevent_content = '" + content + "' WHERE clubevent_id = " + dtData.Rows[0]["clubevent_id"]))
            {
                Response.Redirect("/Admin/ClubEventList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/ClubEventList.aspx");
        }
    }
}