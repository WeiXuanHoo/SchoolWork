using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class MedicalAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string fileName = "";
            if (!string.IsNullOrEmpty(txtUpload.FileName))
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + txtUpload.FileName.Substring(txtUpload.FileName.LastIndexOf(".")).ToUpper();
                txtUpload.SaveAs(Server.MapPath("~/Uploads/" + fileName));
            }
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("INSERT INTO tb_medical(medical_name,medical_image,medical_content,medical_address,medical_date)VALUES('" + name + "','" + fileName + "','" + content + "','" + txtAddress.Text.ToString() + "','" + txtDate.Text.ToString() + "')"))
            {
                Response.Redirect("/Admin/MedicalList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/MedicalList.aspx");
        }
    }
}