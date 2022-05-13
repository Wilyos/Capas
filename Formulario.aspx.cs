using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;

namespace Capas
{
    public partial class Formulario : System.Web.UI.Page
    {
        CRegCitas ONcitas = new CRegCitas();
        CECitas OEcitas = new CECitas();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            OEcitas.Codcita = Convert.ToString(txtcodcita.Text);
            OEcitas.Fecha = Convert.ToDateTime(txtfecha.Text);
            OEcitas.Hora = Convert.ToDateTime(txthora.Text);
            OEcitas.Idpaciente = Convert.ToString(txtidpaciente.Text);
            OEcitas.Idmedico = Convert.ToString(txtidmedico.Text);
            OEcitas.Valor = Convert.ToInt32(txtvalor.Text);
            OEcitas.Diagnostico = Convert.ToString(txtdiagnostico.Text);
            OEcitas.Nomacompanante = Convert.ToString(txtnomacompanante.Text);

            if (ONcitas.guardar_cita(OEcitas))
            {
                lblmensaje.Text = "Cita guardada";
            }
            else
            {
                lblmensaje.Text = "Cita no guardada";
            }

        }

        protected void btnconsultar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            OEcitas.Codcita = Convert.ToString(txtcodcita.Text);

            ds = ONcitas.consultar_cita(OEcitas);
            if(ds.Tables[0].Rows.Count == 0)
            {
                lblmensaje.Text = "No hay cita";
            }
            else
            {
                lblmensaje.Text = ds.Tables[0].Rows[0]["Codcita"].ToString();

                txtfecha.Text = ds.Tables[0].Rows[0]["Fecha"].ToString();
                txthora.Text = ds.Tables[0].Rows[0]["Hora"].ToString();
                txtidpaciente.Text = ds.Tables[0].Rows[0]["Idpaciente"].ToString();
                txtidmedico.Text = ds.Tables[0].Rows[0]["Idmedico"].ToString();
                txtvalor.Text = ds.Tables[0].Rows[0]["Valor"].ToString();
                txtdiagnostico.Text = ds.Tables[0].Rows[0]["Diagnostico"].ToString();
            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            OEcitas.Codcita = Convert.ToString(txtcodcita.Text);
            if (ONcitas.anular_cita(OEcitas))
            {
                lblmensaje.Text = "Cita se ha eliminado Correctamente";
            }
            else
            {
                lblmensaje.Text = "No se pudo eliminar  la cita";
            }
        }
    }
}