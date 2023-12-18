using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Marko_Obradovic
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
                lblPoruka.Text = PreviousPage.Ime + "(" + PreviousPage.Email + "), rodjen" + PreviousPage.Godina + ". godine, ucenik "
                    + PreviousPage.Razred + ". razreda, je uspesno popunio obrazac";
        }
        protected void btn_btnNazad(object sender, EventArgs e)
        {
            Response.Redirect("~/prijava.aspx");
        }


    }
}