using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolInfo.Utils;

namespace SchoolInfo.Admin
{
    public partial class PaymentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.ToString();
            if (SQLServerUtil.Handler("INSERT INTO tb_payment(payment_bank,payment_name,payment_code)VALUES('" + txtBank.Text.ToString() + "','" + txtName.Text.ToString() + "','" + txtCode.Text.ToString() + "')"))
            {
                Response.Redirect("/Admin/PaymentList.aspx");
            }
            else
            {
                Response.Write("<script>alert('fail');</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/PaymentList.aspx");
        }
    }
}