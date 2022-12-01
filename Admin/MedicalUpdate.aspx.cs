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
    public partial class MedicalUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_medical WHERE medical_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtName.Text = dtData.Rows[0]["medical_name"].ToString();
                txtAddress.Text = dtData.Rows[0]["medical_address"].ToString();
                txtDate.Text = dtData.Rows[0]["medical_date"].ToString();
                txtContent.Text = dtData.Rows[0]["medical_content"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string fileName = dtData.Rows[0]["medical_image"].ToString();
            if (!string.IsNullOrEmpty(txtUpload.FileName))
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + txtUpload.FileName.Substring(txtUpload.FileName.LastIndexOf(".")).ToUpper();
                txtUpload.SaveAs(Server.MapPath("~/Uploads/" + fileName));
            }
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("UPDATE tb_medical SET medical_name = '" + name + "', medical_image = '" + fileName + "', medical_content = '" + content + "', medical_address = '" + txtAddress.Text.ToString() + "', medical_date = '" + txtDate.Text.ToString() + "' WHERE medical_id = " + dtData.Rows[0]["medical_id"]))
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