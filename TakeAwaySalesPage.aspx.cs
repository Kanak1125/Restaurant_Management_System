using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{
    public partial class TakeAwaySalesPage : System.Web.UI.Page
    {
        List<Item> allItems = new List<Item>();
        List<Item> filteredItems = new List<Item>();
        //DataTable

        private void loadAllItems()
        {
            allItems.Clear();
            filteredItems.Clear();

            // this will load all the items from db
            for (int i = 0; i < 10; i++)
            {
                Item item = new Item()
                {
                    id = "",
                    name = "Item " + (i + 1),
                    rate = 10 * (i + 1),
                    available_qty = 10
                };
                allItems.Add(item);
                filteredItems.Add(item);
            }
        }

        private void loadItemToDataGrid()
        {
            // gridViewItems...
            itemsPanel.Controls.Clear();
            foreach( Item item in filteredItems ) {
                itemsPanel.Controls.Add(new Label()
                {
                    Text = item.name
                });
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            loadAllItems();
            loadItemToDataGrid();
        }

        protected void txtBoxSearch_TextChanged(object sender, EventArgs e)
        {
            string text = txtBoxSearch.Text;
            filteredItems.Clear();
            foreach(Item item in allItems)
            {
                if (item.name.Contains(text))
                {
                    filteredItems.Add(item);
                }
            }
            loadItemToDataGrid();
        }
    }
}