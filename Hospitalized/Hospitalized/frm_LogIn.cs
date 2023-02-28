using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hospitalized
{
    public partial class frm_LogIn : Form
    {
        public frm_LogIn()
        {
            InitializeComponent();
            this.AcceptButton = this.btn_LogIn;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormClosed += (_, __) =>
            {
                if (Application.OpenForms.Count == 0)
                {
                    Application.Exit();
                }
            };
        }

        private void btn_LogIn_Click(object sender, EventArgs e)
        {

        }
    }
}
