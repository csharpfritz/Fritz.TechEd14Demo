using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fritz.TechEd14Demo.Models;

namespace Fritz.TechEd14Demo._1_Demo
{
  public partial class Default : System.Web.UI.Page
  {

    private static readonly List<Models.BoardGame> _Games = new List<Models.BoardGame>();

    static Default()
    {
      GetGames();
    }

    private static void GetGames()
    {
      var rdm = new Random();

      for (int i = 0; i < 1000; i++)
      {

        _Games.Add(new Models.BoardGame
        {
          Id = i,
          Name = "Game " + i,
          PriceUSD = rdm.Next(5, 50),
          InStock = rdm.Next(4, 100)
        });

      }
    }

    public void grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

      grid.PageIndex = e.NewPageIndex;
      grid.DataSource = GamesState;
      grid.DataBind();

    }

    public List<Models.BoardGame> GamesState
    {
      get
      {
        return ViewState["Games"] as List<BoardGame>;
      }
      set
      {
        ViewState["Games"] = value;
      }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

      if (!Page.IsPostBack)
      {
        GamesState = _Games;  // Fetch the data from wherever
                              // it resides - disk, db, memory
        grid.DataSource = _Games;
        grid.DataBind();
      }

    }

  }
}