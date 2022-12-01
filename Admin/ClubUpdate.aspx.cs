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
    public partial class ClubUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_club WHERE club_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtName.Text = dtData.Rows[0]["club_name"].ToString();
                txtContent.Text = dtData.Rows[0]["club_content"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string fileName = dtData.Rows[0]["club_image"].ToString();
            if (!string.IsNullOrEmpty(txtUpload.FileName))
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + txtUpload.FileName.Substring(txtUpload.FileName.LastIndexOf(".")).ToUpper();
                txtUpload.SaveAs(Server.MapPath("~/Uploads/" + fileName));
            }
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("UPDATE tb_club SET club_name = '" + name + "', club_image = '" + fileName + "', club_content = '" + content + "' WHERE club_id = " + dtData.Rows[0]["club_id"]))
            {
                Response.Redirect("/Admin/ClubList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/ClubList.aspx");
        }
    }
}