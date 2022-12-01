using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class ClubEventAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("INSERT INTO tb_clubevent(clubevent_name,clubevent_content,clubevent_date)VALUES('" + name + "','" + content + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')"))
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