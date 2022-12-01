using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class NoticeAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("INSERT INTO tb_notice(notice_name,notice_date,notice_content)VALUES('" + name + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + content + "')"))
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