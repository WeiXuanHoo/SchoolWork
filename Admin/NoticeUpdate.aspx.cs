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
    public partial class NoticeUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_notice WHERE notice_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtName.Text = dtData.Rows[0]["notice_name"].ToString();
                txtContent.Text = dtData.Rows[0]["notice_content"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("UPDATE tb_notice SET notice_name = '" + name + "', notice_content = '" + content + "' WHERE notice_id = " + dtData.Rows[0]["notice_id"]))
            {
                Response.Redirect("/Admin/NoticeList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/NoticeList.aspx");
        }
    }
}