# swift-constraint-layout-hide-control

This is a code snippet that hides an element from a View and updates others positions.

To update others components in order to hide an especific control, you must set its constraints, and create an IDOutlet referencing them on your <YourViewControllerName>.swift file. 

After do that, you will be ready to go, and just set desired values to your constraints as <YourLayoutConstraintOutletName>.constant = <desiredValue> and call <ParentView>.layoutIfNeeded() function to refresh screen with updated values.
  
  
