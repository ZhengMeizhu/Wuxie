using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;

namespace Hospitalized
{
    public partial class frm_SignUp : Form
    {
        public frm_SignUp()
        {
            InitializeComponent();
            this.AcceptButton = this.btn_SignUp;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormClosed += (_, __) =>
            {
                if (Application.OpenForms.Count == 0)
                {
                    Application.Exit();
                }
            };
        }

        private void btn_SignUp_Click(object sender, EventArgs e)
        {
            if (this.txt_UserNo.Text.Trim() == "")                                                      
            {
                MessageBox.Show("用户号不能为空！");														
                this.txt_UserNo.Focus();                                                                
                return;                                                                          
            }
            if (this.txt_Password.Text.Trim() == "")                                                
            {
                MessageBox.Show("密码不能为空！");														
                this.txt_Password.Focus();                                                              
                return;                                                                                 
            }
            if (this.txt_AckPassword.Text.Trim() == "")                                                   
            {
                MessageBox.Show("确认密码不能为空！");														
                this.txt_AckPassword.Focus();                                                              
                return;                                                                           
            }
            if (this.txt_AckPassword.Text.Trim() != this.txt_Password.Text.Trim())
            {
                MessageBox.Show("确认密码需和密码一致！");
                this.txt_AckPassword.Text = "";
                this.txt_AckPassword.Focus();
                return;
            }
            SqlConnection sqlConnection = new SqlConnection();                        
            SqlCommand sqlCommand = sqlConnection.CreateCommand();                                    
            sqlCommand.CommandType = CommandType.StoredProcedure;                                       
            sqlCommand.Parameters.AddWithValue("@No", this.txt_UserNo.Text.Trim());                     
            sqlCommand.Parameters.AddWithValue("@Password", this.txt_Password.Text.Trim());             
            sqlConnection.Open();                                                                       
            int rowAffected = 0;                                                                        
            try                                                                                         
            {
                rowAffected = sqlCommand.ExecuteNonQuery();                                            
            }
            catch (SqlException sqlEx)                                                                  
            {
                MessageBox.Show(sqlEx.Message);                                                         
            }
            sqlConnection.Close();                                                                      
            if (rowAffected == 1)                                                                       
            {
                MessageBox.Show("注册成功。");															
            }
            else                                                                                        
            {
                MessageBox.Show("注册失败！");															
            }
        }
    }
}
