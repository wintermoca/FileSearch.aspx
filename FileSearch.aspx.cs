using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace File
{
    public partial class FileSearch : System.Web.UI.Page
    {
        public string KeyWord
        {
            get { return txtKeyWord.Text; }
        }
        public string FileType
        {
            get
            {
                string returnValue = " ";
                switch (ddlFileType.SelectedIndex)
                {
                    case 0:
                        returnValue = "filetype:doc";
                        break;
                    case 1:
                        returnValue = "filetype:ppt";
                        break;
                    case 2:
                        returnValue = "filetype:hwp";
                        break;
                    case 3:
                        returnValue = "filetype:pdf";
                        break;
                }
                return returnValue;
            }
        }

        protected void ddlFileType_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string queryString = "keyWord=" + Server.UrlEncode(txtKeyWord.Text);
            queryString += "&";
            queryString += "FileType=" + this.FileType;
            Response.Redirect("FileSearchResult.aspx?" + queryString);
        }
        
            


        
    }
}