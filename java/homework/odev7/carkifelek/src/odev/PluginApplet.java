package odev;

import javax.swing.JApplet;

public class PluginApplet extends JApplet {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		public void init(){
			WindowUtilities.setNativeLookAndFeel();
			setContentPane(new textpanel());
		}

}
