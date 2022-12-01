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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginSubmit_Click(object sender, EventArgs e)
        {
            string loginName = txtName.Text.ToString();
            string loginPassword = txtPassword.Text.ToString();
            DataTable dtAdmin = SQLServerUtil.GetDataTable("SELECT * FROM tb_admin WHERE admin_name = '" + loginName + "' AND admin_password = '" + loginPassword + "'");
            if (dtAdmin != null && dtAdmin.Rows.Count > 0)
            {
                Session["adminID"] = dtAdmin.Rows[0]["admin_id"].ToString();
                Session["adminName"] = dtAdmin.Rows[0]["admin_name"].ToString();
                Response.Write("<script>location.href='/Admin/AdminIndex.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('login fail');</script>");
            }
        }
    }
}