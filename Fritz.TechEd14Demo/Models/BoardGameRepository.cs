using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System.Web.ModelBinding;

namespace Fritz.TechEd14Demo.Models
{
  public class BoardGameRepository
  {

    private GameContext _Ctx;

    public BoardGameRepository()
    {
      this._Ctx = new GameContext();
    }

    public IQueryable<Models.BoardGame> Get()
    {
      return _Ctx.Games;
    }

    public void Insert(Models.BoardGame newGame)
    {

      _Ctx.Games.Add(newGame);

    }

    public void Update(Models.BoardGame game)
    {

      _Ctx.Games.Attach(game);
      _Ctx.SaveChanges();

    }

    public void Remove(int id)
    {
      _Ctx.Games.Remove(_Ctx.Games.Find(id));
    }

  }


}