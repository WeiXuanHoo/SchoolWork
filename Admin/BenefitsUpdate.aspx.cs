﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class BenefitsUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_benefits WHERE benefits_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtName.Text = dtData.Rows[0]["benefits_name"].ToString();
                txtContent.Text = dtData.Rows[0]["benefits_content"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            string fileName = dtData.Rows[0]["benefits_image"].ToString();
            if (!string.IsNullOrEmpty(txtUpload.FileName))
            {
                fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + txtUpload.FileName.Substring(txtUpload.FileName.LastIndexOf(".")).ToUpper();
                txtUpload.SaveAs(Server.MapPath("~/Uploads/" + fileName));
            }
            string content = txtContent.Text.ToString();
            if (SQLServerUtil.Handler("UPDATE tb_benefits SET benefits_name = '" + name + "', benefits_image = '" + fileName + "', benefits_content = '" + content + "' WHERE benefits_id = " + dtData.Rows[0]["benefits_id"]))
            {
                Response.Redirect("/Admin/BenefitsList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/BenefitsList.aspx");
        }
    }
}