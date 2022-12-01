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
    public partial class PaymentUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dtData = SQLServerUtil.GetDataTable("SELECT * FROM tb_payment WHERE payment_id = " + Request["id"]);
            if (!IsPostBack)
            {
                txtBank.Text = dtData.Rows[0]["payment_bank"].ToString();
                txtName.Text = dtData.Rows[0]["payment_name"].ToString();
                txtCode.Text = dtData.Rows[0]["payment_code"].ToString();
            }
        }

        public DataTable dtData;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (SQLServerUtil.Handler("UPDATE tb_payment SET payment_name = '" + txtName.Text.ToString() + "', payment_code = '" + txtCode.Text.ToString() + "', payment_bank = '" + txtBank.Text.ToString() + "' WHERE payment_id = " + dtData.Rows[0]["payment_id"]))
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