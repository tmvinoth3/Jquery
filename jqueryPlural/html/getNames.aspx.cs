using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jqueryPlural.html
{
    public partial class getNames : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Names> namelist = new List<Names>();
            var pagesize = (Request["pagesize"] == null) ? 50 : Int32.Parse(Request["pagesize"]);
            for (int i = 1; i < pagesize; i++)
            {
                namelist.Add(
               new Names{
                   fname="John"+i,
                   lname="cena"+i
            }
            );
            }
            GridView1.DataSource = namelist;
            GridView1.DataBind();
        }
        
        public string insertName(string s)
        {
            return s;
        }
    }
}