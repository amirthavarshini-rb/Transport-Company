package frontEnd;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class BgImage extends JFrame {


private static final long serialVersionUID = 1L;

JLabel L1; 

//let’s create an object out of example class

public  BgImage()
{
 //inside this object we’ll set all of the JFrame properties for the application

      setTitle("Background Color for JFrame"); //sets the title of the application
      setSize(700, 700); //sets the size of the application
      setLocationRelativeTo(null);
      setDefaultCloseOperation(EXIT_ON_CLOSE); //sets the default close operation (exit on close)
setVisible(true); //sets the visibility to true


//after that we’ll call the Layout methods to locate and display the image
       
      setLayout(new BorderLayout());
setContentPane(new JLabel(new ImageIcon("C:\\Users\\HOME\\Documents\\E_Image\\truck9.JPG"))); 
    /*locate the location of the image, be careful with the symbols, the backslashes needs to be 2
      or   
     else it won’t work. And at the end put .jpg to make sure that it is a JPG file, not anything else.*/
setLayout(new FlowLayout());
L1 = new JLabel(); //calls the JLabel to be used
add(L1); //add the L1 into the application background

setSize(500, 500); //sets the size of the background image
}

public static void main(String args[]){

    new BgImage(); // after all of those codings are done, we’ll call the object so it runs the application

  } 
}