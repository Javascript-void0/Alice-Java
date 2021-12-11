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

public void option1_clicked1(GOption source, GEvent event) { //_CODE_:option1:733350:
} //_CODE_:option1:733350:

public void option2_clicked1(GOption source, GEvent event) { //_CODE_:option2:739099:
} //_CODE_:option2:739099:

public void option3_clicked1(GOption source, GEvent event) { //_CODE_:option3:732587:
} //_CODE_:option3:732587:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:531757:
  //println("button3 - GButton >> GEvent." + event + " @ " + millis());
  if (option1.isSelected()) {
    textarea3.setText(option1.getText());
  } else if (option2.isSelected()) {
     textarea3.setText(option2.getText()); 
  } else if (option3.isSelected()) {
     textarea3.setText(option3.getText()); 
  }
  
} //_CODE_:button3:531757:

public void textarea3_change1(GTextArea source, GEvent event) { //_CODE_:textarea3:361051:
  //println("textarea3 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea3:361051:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  togGroup1 = new GToggleGroup();
  option1 = new GOption(this, 180, 150, 120, 20);
  option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option1.setText("Stop");
  option1.setLocalColorScheme(GCScheme.RED_SCHEME);
  option1.setOpaque(false);
  option1.addEventHandler(this, "option1_clicked1");
  option2 = new GOption(this, 180, 150, 120, 60);
  option2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option2.setText("Slow");
  option2.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  option2.setOpaque(false);
  option2.addEventHandler(this, "option2_clicked1");
  option3 = new GOption(this, 180, 190, 120, 20);
  option3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option3.setText("Go");
  option3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  option3.setOpaque(false);
  option3.addEventHandler(this, "option3_clicked1");
  togGroup1.addControl(option1);
  option1.setSelected(true);
  togGroup1.addControl(option2);
  togGroup1.addControl(option3);
  button3 = new GButton(this, 180, 220, 120, 30);
  button3.setText("Enter");
  button3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button3.addEventHandler(this, "button3_click1");
  textarea3 = new GTextArea(this, 180, 110, 120, 30, G4P.SCROLLBARS_NONE);
  textarea3.setOpaque(true);
  textarea3.addEventHandler(this, "textarea3_change1");
}

// Variable declarations 
// autogenerated do not edit
GToggleGroup togGroup1; 
GOption option1; 
GOption option2; 
GOption option3; 
GButton button3; 
GTextArea textarea3; 