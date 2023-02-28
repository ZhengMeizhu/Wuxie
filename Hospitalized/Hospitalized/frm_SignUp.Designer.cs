namespace Hospitalized
{
    partial class frm_SignUp
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cbx_Password = new System.Windows.Forms.CheckBox();
            this.txt_Password = new System.Windows.Forms.TextBox();
            this.txt_UserNo = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_SignUp = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_AckPassword = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbx_AckPassword = new System.Windows.Forms.CheckBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.rbn_Doctor = new System.Windows.Forms.RadioButton();
            this.rbn_Patient = new System.Windows.Forms.RadioButton();
            this.label7 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cbx_Password
            // 
            this.cbx_Password.AutoSize = true;
            this.cbx_Password.Font = new System.Drawing.Font("宋体", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.cbx_Password.Location = new System.Drawing.Point(478, 151);
            this.cbx_Password.Name = "cbx_Password";
            this.cbx_Password.Size = new System.Drawing.Size(124, 27);
            this.cbx_Password.TabIndex = 35;
            this.cbx_Password.Text = "显示密码";
            this.cbx_Password.UseVisualStyleBackColor = true;
            // 
            // txt_Password
            // 
            this.txt_Password.Location = new System.Drawing.Point(340, 151);
            this.txt_Password.Name = "txt_Password";
            this.txt_Password.PasswordChar = '*';
            this.txt_Password.Size = new System.Drawing.Size(100, 25);
            this.txt_Password.TabIndex = 34;
            // 
            // txt_UserNo
            // 
            this.txt_UserNo.Location = new System.Drawing.Point(341, 97);
            this.txt_UserNo.Name = "txt_UserNo";
            this.txt_UserNo.Size = new System.Drawing.Size(100, 25);
            this.txt_UserNo.TabIndex = 33;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(256, 151);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 25);
            this.label2.TabIndex = 32;
            this.label2.Text = "密码：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(219, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(116, 25);
            this.label1.TabIndex = 31;
            this.label1.Text = "用户号：";
            // 
            // btn_SignUp
            // 
            this.btn_SignUp.BackColor = System.Drawing.SystemColors.Highlight;
            this.btn_SignUp.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btn_SignUp.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.btn_SignUp.Location = new System.Drawing.Point(351, 361);
            this.btn_SignUp.Name = "btn_SignUp";
            this.btn_SignUp.Size = new System.Drawing.Size(101, 61);
            this.btn_SignUp.TabIndex = 30;
            this.btn_SignUp.Text = "注册";
            this.btn_SignUp.UseVisualStyleBackColor = false;
            this.btn_SignUp.Click += new System.EventHandler(this.btn_SignUp_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(220, 315);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(324, 25);
            this.label3.TabIndex = 36;
            this.label3.Text = "请输入用户号、密码、身份";
            // 
            // txt_AckPassword
            // 
            this.txt_AckPassword.Location = new System.Drawing.Point(340, 206);
            this.txt_AckPassword.Name = "txt_AckPassword";
            this.txt_AckPassword.PasswordChar = '*';
            this.txt_AckPassword.Size = new System.Drawing.Size(100, 25);
            this.txt_AckPassword.TabIndex = 38;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label4.Location = new System.Drawing.Point(204, 206);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(142, 25);
            this.label4.TabIndex = 37;
            this.label4.Text = "确认密码：";
            // 
            // cbx_AckPassword
            // 
            this.cbx_AckPassword.AutoSize = true;
            this.cbx_AckPassword.Font = new System.Drawing.Font("宋体", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.cbx_AckPassword.Location = new System.Drawing.Point(478, 206);
            this.cbx_AckPassword.Name = "cbx_AckPassword";
            this.cbx_AckPassword.Size = new System.Drawing.Size(124, 27);
            this.cbx_AckPassword.TabIndex = 39;
            this.cbx_AckPassword.Text = "显示密码";
            this.cbx_AckPassword.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label5.ForeColor = System.Drawing.Color.Red;
            this.label5.Location = new System.Drawing.Point(446, 151);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(26, 25);
            this.label5.TabIndex = 40;
            this.label5.Text = "*";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(446, 206);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(26, 25);
            this.label6.TabIndex = 41;
            this.label6.Text = "*";
            // 
            // rbn_Doctor
            // 
            this.rbn_Doctor.AutoSize = true;
            this.rbn_Doctor.Font = new System.Drawing.Font("宋体", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.rbn_Doctor.Location = new System.Drawing.Point(276, 258);
            this.rbn_Doctor.Name = "rbn_Doctor";
            this.rbn_Doctor.Size = new System.Drawing.Size(79, 27);
            this.rbn_Doctor.TabIndex = 42;
            this.rbn_Doctor.TabStop = true;
            this.rbn_Doctor.Text = "医生";
            this.rbn_Doctor.UseVisualStyleBackColor = true;
            // 
            // rbn_Patient
            // 
            this.rbn_Patient.AutoSize = true;
            this.rbn_Patient.Font = new System.Drawing.Font("宋体", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.rbn_Patient.Location = new System.Drawing.Point(393, 258);
            this.rbn_Patient.Name = "rbn_Patient";
            this.rbn_Patient.Size = new System.Drawing.Size(79, 27);
            this.rbn_Patient.TabIndex = 43;
            this.rbn_Patient.TabStop = true;
            this.rbn_Patient.Text = "病人";
            this.rbn_Patient.UseVisualStyleBackColor = true;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label7.ForeColor = System.Drawing.Color.Red;
            this.label7.Location = new System.Drawing.Point(491, 260);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(26, 25);
            this.label7.TabIndex = 44;
            this.label7.Text = "*";
            // 
            // frm_SignUp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.rbn_Patient);
            this.Controls.Add(this.rbn_Doctor);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cbx_AckPassword);
            this.Controls.Add(this.txt_AckPassword);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbx_Password);
            this.Controls.Add(this.txt_Password);
            this.Controls.Add(this.txt_UserNo);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_SignUp);
            this.Name = "frm_SignUp";
            this.Text = "注册";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbx_Password;
        private System.Windows.Forms.TextBox txt_Password;
        private System.Windows.Forms.TextBox txt_UserNo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_SignUp;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_AckPassword;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox cbx_AckPassword;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RadioButton rbn_Doctor;
        private System.Windows.Forms.RadioButton rbn_Patient;
        private System.Windows.Forms.Label label7;
    }
}