using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace Fritz.TechEd14Demo._5_Demo
{
  public partial class Edit : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // The id parameter should match the DataKeyNames value set on the control
    // or be decorated with a value provider attribute, e.g. [QueryString]int id
    public Fritz.TechEd14Demo.Models.BoardGame myForm_GetItem([FriendlyUrlSegments(0)]int id)
    {

      var ctx = new Models.GameContext();
      return ctx.Games.Find(id);
    
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public void myForm_UpdateItem(int id)
    {
      var ctx = new Models.GameContext();
      var item = ctx.Games.Find(id);
      // Load the item here, e.g. item = MyDataLayer.Find(id);
      if (item == null)
      {
        // The item wasn't found
        ModelState.AddModelError("NotFound", String.Format("Game with id {0} was not found", id));
        return;
      }
      TryUpdateModel(item);
      if (ModelState.IsValid)
      {
        // Save changes here, e.g. MyDataLayer.SaveChanges();
        ctx.SaveChanges();
        Response.Redirect("/5_Demo/Search");
      }
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
      Response.Redirect("/5_Demo/Search");
    }
  }
}