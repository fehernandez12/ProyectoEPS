﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoEPS.eps
{
    public partial class main_eps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BotonLogoutEps_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx", false);
        }
    }
}