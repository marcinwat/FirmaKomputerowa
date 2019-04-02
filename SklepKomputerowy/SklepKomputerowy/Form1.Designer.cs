namespace SklepKomputerowy
{
    partial class Form1
    {
        /// <summary>
        /// Wymagana zmienna projektanta.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Wyczyść wszystkie używane zasoby.
        /// </summary>
        /// <param name="disposing">prawda, jeżeli zarządzane zasoby powinny zostać zlikwidowane; Fałsz w przeciwnym wypadku.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kod generowany przez Projektanta formularzy systemu Windows

        /// <summary>
        /// Metoda wymagana do obsługi projektanta — nie należy modyfikować
        /// jej zawartości w edytorze kodu.
        /// </summary>
        private void InitializeComponent()
        {
            this.addprinterbutton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // addprinterbutton
            // 
            this.addprinterbutton.Location = new System.Drawing.Point(299, 35);
            this.addprinterbutton.Name = "addprinterbutton";
            this.addprinterbutton.Size = new System.Drawing.Size(118, 55);
            this.addprinterbutton.TabIndex = 0;
            this.addprinterbutton.Text = "dodaj drukarke";
            this.addprinterbutton.UseVisualStyleBackColor = true;
            this.addprinterbutton.Click += new System.EventHandler(this.addprinterbutton_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.addprinterbutton);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button addprinterbutton;
    }
}

