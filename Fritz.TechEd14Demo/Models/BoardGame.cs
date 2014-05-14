using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace Fritz.TechEd14Demo.Models
{

  [Serializable]
  public class BoardGame
  {

    public int Id { get; set; }

    public string Name { get; set; }

    public decimal PriceUSD { get; set; }

    public int InStock { get; set; }

  }
}