/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:411199:
  textarea2.setText("");
  textarea2.setText(textarea1.getText());
} //_CODE_:button1:411199:

public void textarea1_change1(GTextArea source, GEvent event) { //_CODE_:textarea1:330073:
  println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea1:330073:

public void textarea2_change1(GTextArea source, GEvent event) { //_CODE_:textarea2:906203:
  println("textarea2 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea2:906203:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:328017:
  textarea1.setText("");
  textarea1.setText(textarea2.getText());
} //_CODE_:button2:328017:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 10, 150, 90, 30);
  button1.setText("Enter");
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  textarea1 = new GTextArea(this, 10, 190, 580, 130, G4P.SCROLLBARS_NONE);
  textarea1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
  textarea2 = new GTextArea(this, 10, 10, 580, 130, G4P.SCROLLBARS_NONE);
  textarea2.setOpaque(true);
  textarea2.addEventHandler(this, "textarea2_change1");
  button2 = new GButton(this, 110, 150, 90, 30);
  button2.setText("Enter");
  button2.addEventHandler(this, "button2_click1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GTextArea textarea1; 
GTextArea textarea2; 
GButton button2; 