using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fritz.TechEd14Demo._5_Demo
{
  public partial class Search : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grid_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
    {

      e.DataMethodsObject = new Models.BoardGameRepository();

    }
  }
}