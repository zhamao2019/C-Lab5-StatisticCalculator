using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab5
{
    public partial class Calculate : System.Web.UI.Page
    {
        protected void btnSubmit(object sender, EventArgs e)
        {
            int first;
            int second;
            int third;

            bool success1 = int.TryParse(tBox1.Text, out first);
            bool success2 = int.TryParse(tBox2.Text, out second);
            bool success3 = int.TryParse(tBox3.Text, out third);
           
            if (success1 && success2 && success3)
            {
                pnlResult.Visible = false;
                int max = first;
                int min = first;
                if (max < second)
                {
                    max = second;
                }
                if (max < third)
                {
                    max = third;
                }
                if (min > second)
                {
                    min = second;
                }
                if (min > third)
                {
                    min = third;
                }

                double tot = first + second + third;
                double avg = tot / 3;

                maximum.Text = Convert.ToString(max);
                minimum.Text = Convert.ToString(min);
                average.Text = Convert.ToString(Math.Round(avg, 3));
                total.Text = Convert.ToString(tot);
            }
            else
            {
                pnlResult.Visible = true;
                errorProm.Text = "Enter number must be an integer";
            }
            

        }
    }
}