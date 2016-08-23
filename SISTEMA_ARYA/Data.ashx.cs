using DHTMLX.Scheduler.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SISTEMA_ARYA
{
    /// <summary>
    /// Summary description for Data
    /// </summary>
    public class Data : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/json";
            context.Response.Write(
                new SchedulerAjaxData(new SISTEMA_ARYA.ARYA_DATABASEEntities().Events).ToString()
            );
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}