using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace Restaurant_Management_System
{

    public partial class TakeAwaySalesPage : System.Web.UI.Page
    {
        List<Item> allItems = new List<Item>();
        List<Item> filteredItems = new List<Item>();
        
        //DataTable
        DataTable dt;

        void initializeData()
        {
            //dt = new DataTable();
            //dt.Columns.Add("ItemName");
            //dt.Columns.Add("Description");
            //dt.Columns.Add("Price");
            //dt.Columns.Add("Available Qty");

            string ConnStr = "Data Source = localhost; port = 3306; Initial Catalog = <MyDB>; UserId= root; password = <Password>";

            using (MySqlConnection conn = new MySqlConnection(ConnStr))
            {
                using (MySqlCommand com = new MySqlCommand("SELECT * FROM items;", conn))
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter())
                    {
                        adapter.SelectCommand = com;
                    }
                }
            }
        }

        private void LoadAllItems()
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

            GridViewItems.DataSource = dt;
            GridViewItems.DataBind();
        }

        private void LoadItemToDataGrid()
        {
            // gridViewItems...
            //itemsPanel.Controls.Clear();
            dt.Rows.Clear();
            foreach( Item item in filteredItems ) {
                //itemsPanel.Controls.Add(new Label()
                //{
                //    Text = item.name
                //});
                dt.Rows.Add(item.name, item.description, item.rate, item.available_qty);
            }
            GridViewItems.DataSource = dt;
            GridViewItems.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                initializeData();
            } catch (Exception err)
            {
                Console.WriteLine("Error: " + err.Message);
            }
            LoadAllItems();
            LoadItemToDataGrid();
        }

        protected void TxtBoxSearch_TextChanged(object sender, EventArgs e)
        {
            string text = txtBoxSearch.Text.ToString();
            filteredItems.Clear();
            foreach(Item item in allItems)
            {
                if (item.name.ToLower().Contains(text))
                {
                    filteredItems.Add(item);
                }
            }
            LoadItemToDataGrid();
        }

        protected void GridViewOrders_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}