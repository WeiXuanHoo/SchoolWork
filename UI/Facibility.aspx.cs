using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.UI
{
    public partial class Facibility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (SQLServerUtil.Handler("INSERT INTO tb_facibility(student_name,student_code,facibility_startdate,facibility_enddate,facibility_name,facibility_content)VALUES('" + txtStudentName.Text.ToString() + "','" + txtCode.Text.ToString() + "','" + txtStartDate.Text.ToString() + "','" + txtEndDate.Text.ToString() + "','" + txtFacibilityName.Text.ToString() + "','" + txtContent.Text.ToString() + "')"))
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