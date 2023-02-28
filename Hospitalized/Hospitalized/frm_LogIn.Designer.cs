namespace Hospitalized
{
    partial class frm_LogIn
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btn_LogIn = new System.Windows.Forms.Button();
            this.btn_SignUp = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_UserNo = new System.Windows.Forms.TextBox();
            this.txt_Password = new System.Windows.Forms.TextBox();
            this.cbx_Password = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // btn_LogIn
            // 
            this.btn_LogIn.BackColor = System.Drawing.SystemColors.Highlight;
            this.btn_LogIn.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btn_LogIn.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.btn_LogIn.Location = new System.Drawing.Point(181, 294);
            this.btn_LogIn.Name = "btn_LogIn";
            this.btn_LogIn.Size = new System.Drawing.Size(101, 61);
            this.btn_LogIn.TabIndex = 0;
            this.btn_LogIn.Text = "登入";
            this.btn_LogIn.UseVisualStyleBackColor = false;
            this.btn_LogIn.Click += new System.EventHandler(this.btn_LogIn_Click);
            // 
            // btn_SignUp
            // 
            this.btn_SignUp.BackColor = System.Drawing.SystemColors.Highlight;
            this.btn_SignUp.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btn_SignUp.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.btn_SignUp.Location = new System.Drawing.Point(397, 294);
            this.btn_SignUp.Name = "btn_SignUp";
            this.btn_SignUp.Size = new System.Drawing.Size(101, 61);
            this.btn_SignUp.TabIndex = 1;
            this.btn_SignUp.Text = "注册";
            this.btn_SignUp.UseVisualStyleBackColor = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(188, 120);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(116, 25);
            this.label1.TabIndex = 2;
            this.label1.Text = "用户号：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(214, 191);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 25);
            this.label2.TabIndex = 3;
            this.label2.Text = "密码：";
            // 
            // txt_UserNo
            // 
            this.txt_UserNo.Location = new System.Drawing.Point(298, 120);
            this.txt_UserNo.Name = "txt_UserNo";
            this.txt_UserNo.Size = new System.Drawing.Size(100, 25);
            this.txt_UserNo.TabIndex = 4;
            // 
            // txt_Password
            // 
            this.txt_Password.Location = new System.Drawing.Point(298, 191);
            this.txt_Password.Name = "txt_Password";
            this.txt_Password.PasswordChar = '*';
            this.txt_Password.Size = new System.Drawing.Size(100, 25);
            this.txt_Password.TabIndex = 5;
            // 
            // cbx_Password
            // 
            this.cbx_Password.AutoSize = true;
            this.cbx_Password.Font = new System.Drawing.Font("宋体", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.cbx_Password.Location = new System.Drawing.Point(426, 191);
            this.cbx_Password.Name = "cbx_Password";
            this.cbx_Password.Size = new System.Drawing.Size(124, 27);
            this.cbx_Password.TabIndex = 28;
            this.cbx_Password.Text = "显示密码";
            this.cbx_Password.UseVisualStyleBackColor = true;
            // 
            // frm_LogIn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cbx_Password);
            this.Controls.Add(this.txt_Password);
            this.Controls.Add(this.txt_UserNo);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_SignUp);
            this.Controls.Add(this.btn_LogIn);
            this.Name = "frm_LogIn";
            this.Text = "登入";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_LogIn;
        private System.Windows.Forms.Button btn_SignUp;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_UserNo;
        private System.Windows.Forms.TextBox txt_Password;
        private System.Windows.Forms.CheckBox cbx_Password;
    }
}

