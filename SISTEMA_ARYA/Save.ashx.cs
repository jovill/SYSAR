using DHTMLX.Common;
using DHTMLX.Scheduler.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SISTEMA_ARYA
{
    /// <summary>
    /// Summary description for Save
    /// </summary>
    public class Save : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/xml";

            var action = new DataAction(context.Request.Form);

            var data = new SISTEMA_ARYA.ARYA_DATABASEEntities();
            try
            {

                var changedEvent = (Event)DHXEventsHelper.Bind(typeof(Event), context.Request.Form);//create event object from request

                switch (action.Type)
                {
                    case DataActionTypes.Insert: // define here your Insert logic

                        
                        data.Events.Add(changedEvent);
                        break;

                    case DataActionTypes.Delete: // define here your Delete logic
                        changedEvent = data.Events.SingleOrDefault(ev => ev.id == action.SourceId);
                        data.Events.Remove(changedEvent);
                        break;

                    default:// "update" // define here your Update logic
                        var updated = data.Events.SingleOrDefault(ev => ev.id == action.SourceId);
                        //update "updated" object by changedEvent's values, 'id' should remain unchanged
                        DHXEventsHelper.Update(updated, changedEvent, new List<string>() { "id" });
                        break;
                }
                data.SaveChanges();
                action.TargetId = changedEvent.id;
            }
            catch (Exception a)
            {
                action.Type = DataActionTypes.Error;
            }
            context.Response.Write(new AjaxSaveResponse(action).ToString());
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