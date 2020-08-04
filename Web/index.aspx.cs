using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class index : System.Web.UI.Page
    {
        // global 
        int hora;
        string mensaje;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // call to the funtion calcular
        protected void btnConsulta_Click(object sender, EventArgs e)
        {           
            fn_Calcular();
        }

        /// <summary>
        /// It allows identifying if the condition parameters such as the last digit of the plate are related to the time and day not allowed.
        /// </summary>
        private void fn_Calcular()
        {
            var parsedDate = DateTime.Parse(txtFecha.Text);
            mensaje = "Can circulate";
            
            // Sunday
            if ((int)parsedDate.DayOfWeek == 0)
                mensaje = "Sunday there is no circulation";            
            else
            {
                //case: other days 


                hora = 0;
                
                //convert time to string and comparate the restrinction 
                hora = Convert.ToInt32(Convert.ToDateTime(txtHora.Text).ToString("hhmm"));

                if ((hora > 0700 && hora < 0930) || (hora > 1600 && hora < 1930))

                    // The number of plates and days in the two cases are similar, in the sense that both must be odd in case of restriction on Monday, 
                    // Tuesday and Wednesday, and even for the other.
                    if (((int)parsedDate.DayOfWeek % 2 == 1 && (int)txtPlacaVeiculo.Text.Last() % 2 == 1) ||
                        ((int)parsedDate.DayOfWeek % 2 == 0 && (int)txtPlacaVeiculo.Text.Last() % 2 == 0) )

                        mensaje = "You are not allowed to circulate";                    
            }

            fn_Alerta(mensaje);
        }

        // Function that displays the desired message
        private void fn_Alerta(string mensaje)
        {            
            string script = @"<script type='text/javascript'>
                            alerta('" + mensaje + "');" +
                        "</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }        
    }
}