using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.Handler
{
    public partial class NoticeDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SQLServerUtil.Handler("DELETE FROM tb_notice WHERE notice_id = " + Request["id"]))
            {
                Response.Write("<script>alert('delete success');location.href='" + Request.UrlReferrer.ToString() + "';</script>");
            }
            else
            {
                Response.Write("<script>alert('delete fail');history.back();</script>");
            }
        }
    }
}