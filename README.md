# singletonandtableviewdemo
A demo for IOS Class showing an implementation of singleton and some of tableview's basic functionality


Basic logic of this file is that first view controller through the text field is adding sentences/strings to an array
within the singleton. It then forces a segue to the tableview which reads the sentences array
inside the AppData singleton and fills the tableview with elements. It iterates through and creates tablecells through 
the the indexPath.num variable as a pointer for the sentences Array in AppData singleton. On click, a reference to the num
of the row that was selected and passed into the itemView view controller. The itemView view controller uses the num reference
to find out what sentence item to use. Delete button in the itemView will remove the entry from the sentences array in AppData
and force a segue back to the tableview.


Reminders:

Create a variable within your class that follows the format of

var (yoursingletonvariablename) = (yoursingletonclass).shared

and at the top of your singleton class make sure that you have a variable thats set as

let shared = yoursingletonclassname()



Make sure that within your TableView there is a TableViewCell and that tableviewCell has a custom Cell controller class. Attach all the elements/subviews(labels,imgs,etc.) inside your tableview cell to the Cell controller class.

Give your tablecell an identifier name and reference it correctly in your table view controller.
When referencing the cell inside the TableViewController make sure to append "as! (yourtablecellcustomclass)" at the end.
such that it looks like this

let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell

