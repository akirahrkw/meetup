import UIKit

class BasicTableViewDataSource<T>: NSObject, UITableViewDataSource {
    
    var items: [T] // type of items is T
    
    // type of item is T
    var cellForRowClosure: ((cell:UITableViewCell, indexPath: NSIndexPath, item: T) -> (UITableViewCell))?
    
    var identifier: String
    
    override init(){
        self.items = [T]()
        self.identifier = "Cell"
    }
    
    init(identifier: String) {
        self.items = [T]()
        self.identifier = identifier
    }
    
    // return Type is T
    func itemAtIndexPath(indexPath: NSIndexPath) -> T {
        return self.items[indexPath.row]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.identifier, forIndexPath: indexPath) as UITableViewCell
        
        // item is T
        var item = self.itemAtIndexPath(indexPath)
        self.cellForRowClosure?(cell:cell, indexPath:indexPath, item: item)
        
        return cell
    }
}

//// somewhere in View Controller

var tableView = UITableView()
var dataSource = BasicTableViewDataSource<String>()
tableView.dataSource = dataSource

dataSource.cellForRowClosure = { (cell:UITableViewCell, indexPath: NSIndexPath, item: String) -> (UITableViewCell) in
    
    // you can use item without type cast
    var title = "this is \(item)"
    
    ///// Do something
    
    return cell
}

// you can't set Int Array
//dataSource.items = [1,2,3,4,5]

// you can set String Array
dataSource.items = ["A", "B", "C"]


dataSource.respondsToSelector("tableView:numberOfRowsInSection:")








////////////////////////////////////
class TableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("a", forIndexPath: indexPath) as UITableViewCell
        
        return cell
    }
}

var tvd = TableViewDataSource()
tvd.respondsToSelector("tableView:numberOfRowsInSection:")


