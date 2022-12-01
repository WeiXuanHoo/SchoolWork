using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.UI
{
    public partial class MC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fileName = "";
            if (!string.IsNullOrEmpty(txtUpload.FileName))
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + txtUpload.FileName.Substring(txtUpload.FileName.LastIndexOf(".")).ToUpper();
                txtUpload.SaveAs(Server.MapPath("~/Uploads/" + fileName));
            }
            if (SQLServerUtil.Handler("INSERT INTO tb_mc(student_name,student_code,mc_date,mc_image,mc_content)VALUES('" + txtStudentName.Text.ToString() + "','" + txtCode.Text.ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + fileName + "','" + txtContent.Text.ToString() + "')"))
            {
                Response.Write("<script>alert('success');</script>");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

    }
}