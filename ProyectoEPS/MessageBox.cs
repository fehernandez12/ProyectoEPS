using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;

namespace ProyectoEPS
{
    public class MessageBox
    {
        static Dictionary<Page, Queue> pageTable = null;

        static MessageBox()
        {
            pageTable = new Dictionary<Page, Queue>();
        }

        public static void Show(string str)
        {
            Page page = HttpContext.Current.Handler as Page;
            if (page != null)
            {
                if (pageTable.ContainsKey(page) == false)
                {
                    pageTable.Add(page, new Queue());
                }
                pageTable[page].Enqueue(str);
                page.Unload += new EventHandler(page_Unload);
            }
        }

        static void page_Unload(object sender, EventArgs e)
        {
            Page page = sender as Page;
            if (page != null)
            {
                HttpContext.Current.Response.Write
                    ("<script> alert('" + pageTable[page].Dequeue() + "');</script>");
            }
        }
    }
}