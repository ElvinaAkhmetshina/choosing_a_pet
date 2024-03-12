using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace choosing_a_pet
{
    public partial class _default : Page
    {
        public void SlideShow(int i)
        {
            DateTime date_time_start = DateTime.Now;
            DateTime date_time_end = date_time_start.AddSeconds(10);
            while (date_time_start <= date_time_end)
            {
                date_time_start.AddSeconds(1);

            }
            Slides.ImageUrl = "img/dog" + 2 + ".jpg";
            //int date_time_start = DateTime.Now.Second;
            //int date_time_end = date_time_start + 30;
            //while (date_time_start <= date_time_end)
            //{
            //    date_time_end--;

            //}
            //Slides.ImageUrl = "img/dog" + i + ".jpg";
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            Slides.ImageUrl = "dog1.jpg";
            Image1.ImageUrl = "dog2.jpg";
            Image2.ImageUrl = "dog4.jpg";
            Image3.ImageUrl = "dog5.jpg";
            Image4.ImageUrl = "dog6.jpg";
        }
    }
}