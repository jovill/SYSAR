using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DHTMLX.Scheduler;
namespace SISTEMA_ARYA
{
    public partial class index : System.Web.UI.Page
    {
        public DHXScheduler Scheduler { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Scheduler = new DHXScheduler();
            Scheduler.InitialDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
            Scheduler.Config.first_hour = 8;
            Scheduler.Config.last_hour = 18;
            Scheduler.Config.time_step = 30;
            Scheduler.Config.limit_time_select = true;

            Scheduler.DataAction = "Data.ashx";
            Scheduler.SaveAction = "Save.ashx";

            Scheduler.LoadData = true;
            Scheduler.EnableDataprocessor = true;
        }
    }
}