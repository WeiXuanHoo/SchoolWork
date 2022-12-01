using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.UI
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtContactList = SQLServerUtil.GetDataTable("SELECT * FROM tb_contact");
        }

        public DataTable dtContactList;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (SQLServerUtil.Handler("INSERT INTO tb_aboutus(student_name,student_phone,student_email,aboutus_content,aboutus_date)VALUES('" + txtName.Text.ToString() + "','" + txtPhone.Text.ToString() + "','" + txtEMail.Text.ToString() + "','" + txtContent.Text.ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')"))
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