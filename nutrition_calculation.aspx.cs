using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace choosing_a_pet
{
    public partial class nutrition_calculation : System.Web.UI.Page
    {
        public int stime;
        public int act;
        public int age;
        public int pr;
        public int size;
        public int food_type;
        public int Calculation(int size, int pr, int age, int act, int stime)
        {
            double res;//в зависимости от вида корма будет задаваться значение даннной переменной
            //корм эконом класса
            if (food_type == 1)
            {
                if (size == 1)//если собака крупная
                { res = 800;}
                else if (size == 2)//если собака средняя
                {res = 650;}
                else//если собака мелкая
                {res = 400;}
            }
            //корм премиум класса
            else
            {
                if (size == 1)//если собака крупная
                { res = 500;}
                else if (size == 2)//если собака средняя
                {res = 450;}
                else//если собака мелкая
                {res = 300;}
            }

            if (pr == 1)
            {
                //если собака беременна
                res = res + 1 / 3 * res;
                if (age == 1)
                {
                    //если собака молодая
                    res = res + 1 / 5 * res;
                    if (act == 1)
                    {
                        //если собака активна
                        res = res + 1 / 3 * res;
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                    else
                    {
                        //если собака не активна
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }

                }
                else
                {
                    if (act == 1)
                    {
                        //если собака активна
                        res = res + 1 / 3 * res;
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                    else
                    {
                        //если собака не активна
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                }

            }
            else
            {
                if (age == 1)
                {
                    //если собака молодая
                    res = res + 1 / 5 * res;
                    if (act == 1)
                    {
                        //если собака активна
                        res = res + 1 / 3 * res;
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                    else
                    {
                        //если собака не активна
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }

                }
                else
                {
                    if (act == 1)
                    {
                        //если собака активна
                        res = res + 1 / 3 * res;
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                    else
                    {
                        //если собака не активна
                        if (stime == 1)
                        {
                            res = res - 1 / 3 * res;
                        }
                        else
                        {
                            res = res + 1 / 3 * res;
                        }
                    }
                }
            }
            return (int)res;
        }
    
        protected void Page_Load(object sender, EventArgs e)
        {
            //зависимость от сезона
            if (Time.SelectedIndex == 0)
            {
                stime = 1;//тепло
            }
            else
            {
                stime = 2;//холод
            }
            //Активная или неактивная
            if (DogActivity.SelectedIndex == 0)
            {
                act = 1;//активная
            }
            else
            {
                act = 2;//неактивная
            }
            //Возраст собаки
            if (DogAge.SelectedIndex == 0)
            {
                age = 1;//до 7 лет
            }
            else
            {
                age = 2;//старше 7 лет
            }
            //Беременная ли собака
            if (DogPrOrNot.SelectedIndex == 0)
            {
                pr = 1;//да
            }
            else
            {
                pr = 2;//нет
            }
            //Порода собаки по размеру
            if (DogSize.SelectedIndex == 0)
            {
                size = 1;//крупная
            }
            else if (DogSize.SelectedIndex == 1)
            {
                size = 2;//средняя
            }
            else
            {
                size = 3;//мелкая
            }
            //корм эконом или премиум
            if (Type.SelectedIndex == 0)
            {
                food_type = 1; //эконом
            }
            else
            {
                food_type = 2;//премиум
            }
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            LRes.Text = Calculation(size, pr, age, act, stime).ToString();
        }
    }
}