# swift-constraint-layout-hide-control

This is a code snippet that hides an element from a View and updates others positions.

To update others components in order to hide a specific control, you must set its constraints, and create an IBOutlet referencing them on your ViewController.swift file. 

After do that, you will be ready to go, and just set desired values to your constraints as 

yourLayoutConstraintOutletName.constant = newValue

and call 

parentView.layoutIfNeeded() function 

to refresh screen with updated values.
  
  
