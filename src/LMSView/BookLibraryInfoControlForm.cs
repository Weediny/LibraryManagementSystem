﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LMSView
{
    public partial class BookLibraryInfoControlForm : Form
    {
        public BookLibraryInfoControlForm()
        {
            InitializeComponent();
        }

        private void ButtonSave_Click(object sender, EventArgs e)
        {

        }

        private void ButtonDelete_Click(object sender, EventArgs e)
        {

        }

        private void ButtonSetInventoryForIsbn_Click(object sender, EventArgs e)
        {

        }

        private void BookLibraryInfoControlForm_Load(object sender, EventArgs e)
        {
            Text = Properties.Resources.setBookNum;
            labelBookInputInventory.Text = Properties.Resources.bookNum;
            labelIsbnCode.Text = Properties.Resources.isbn;
            labeListInventoryNum.Text = Properties.Resources.listBookNum;
            buttonSetInventoryForIsbn.Text = Properties.Resources.setBookNum;

            buttonDelete.Text = Properties.Resources.delete;
            buttonSave.Text = Properties.Resources.save;
        }
    }
}
