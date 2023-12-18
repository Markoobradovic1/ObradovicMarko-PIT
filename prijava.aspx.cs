using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marko_Obradovic
{
    public partial class prijava : System.Web.UI.Page
    {
        
            public string Ime
            {
                get { return txtIme.Text; }
            }
            public string Email
            {
                get { return txtEmail.Text; }
            }
            public string Godina
            {
                get { return txtGodina.Text; }
            }
            public string Razred
            {
                get { return rblRazred.Text; }
            }
            protected void Page_Load(object sender, EventArgs e)
            {

            }
            protected void btnPRIJAVA_Click(object sender, EventArgs e)
            {
                if (txtImeValidator.IsValid && txtEmailValidator.IsValid &&
                    txtEmailExpression.IsValid && txtPotvrdaValidator.IsValid &&
                    PorediEmailValidator.IsValid && txtGodinaValidator.IsValid &&
                    GodineValidator.IsValid && rblRazredValidator.IsValid)
                {
                    btnPRIJAVA.PostBackUrl = "~/izvestaj.aspx";
                    lblPoruka.Text = "Ispravno su popunjena sva polja.";
                }
                else
                {
                    lblPoruka.Text = "Neka polja nisu ipravno popunjena!";
                }

            }
        



    }
}