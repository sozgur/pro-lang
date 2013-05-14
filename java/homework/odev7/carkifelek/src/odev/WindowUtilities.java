package odev;

import javax.swing.*;

public class WindowUtilities {

	 public static void setNativeLookAndFeel() {
		    try {
		      UIManager.setLookAndFeel
		        (UIManager.getSystemLookAndFeelClassName());
		    } catch(Exception e) {
		      System.out.println("Error setting native LAF: " + e);
		    }
		  }

}
