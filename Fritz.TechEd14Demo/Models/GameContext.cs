using System.Data.Entity;

namespace Fritz.TechEd14Demo.Models
{

  public class GameContext : DbContext
  {

    public GameContext() : base("games")
    { 

    }

    public DbSet<BoardGame> Games { get; set; }

  }

}