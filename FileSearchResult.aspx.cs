using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace File
{
    public partial class FileSearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                InkSearchString.Text = Request.QueryString["KeyWord"] + " ";
                InkSearchString.Text += Request.QueryString["FileType"];

                string url = "http://www.google.co.kr/search?q=";
                
                

                
                url += Server.UrlEncode(InkSearchString.Text);
                InkSearchString.NavigateUrl = url;
               
            }

        }
    }
}