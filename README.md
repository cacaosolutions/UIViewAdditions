# UIViewAdditions
Some of the enhancements we need on a daily basis to be there on UIView.


## How To Use

* IndexPath ( UITableView / UICollectionView )

```objective-c
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
///// ----- cell code --------- /////

[button addTarget:self action:@selector(myButtonAction:) forControlEvents:UIControlEventTouchUpInside];
[cell.myButton setIndexPath:indexPath];

///// ----- cell code --------- /////
}
```


* Later inside myButtonAction: 

```objective-c
- (void)myButtonAction:(UIButton *)sender {
NSIndexPath* indexPath = [sender indexPath];
NSLog(@"Button at section %ld row %ld tapped.",(long)indexPath.section, (long)indexPath.row);
}
```


Pretty easy, right? Have a look at the source files to find out more!


