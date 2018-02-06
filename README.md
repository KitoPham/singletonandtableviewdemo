# singletonandtableviewdemo
A demo for IOS Class showing an implementation of singleton and some of tableview's basic functionality


Basic logic of this file is that first view controller through the text field is adding sentences/strings to an array
within the singleton through AppData.shared variable. It then forces a segue to the tableview which reads the sentences array
inside the AppData singleton and fills the tableview with elements. It iterates through and creates tablecells through 
the the indexPath.num variable as a pointer for the sentences Array in AppData singleton. On click, a reference to the num
of the row that was selected and passed into the itemView view controller. The itemView view controller uses the num reference
to find out what sentence item to use. Delete button in the itemView will remove the entry from the sentences array in AppData
and force a segue back to the tableview.
