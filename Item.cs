using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant_Management_System
{
    public class Item
    {
        // properties...
        public string id { get; set; }
        public string name { get; set; }
        public double rate { get; set; }
        public string description { get; set; }
        public int order_qty { get; set; }
        public int available_qty { get; set; }
        public string image_path { get; set; }
    }
}