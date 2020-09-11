package Snake;

import java.applet.Applet;
import java.applet.AudioClip;
import java.io.File;
import java.net.URI;
import java.net.URL;
 
public class Music extends Thread{
	private File f;
	private URI uri;
	private URL url;
 
	public Music() {
		run();
	}
	public void run() {
		try {
			
			f = new File("music/music.wav");
			uri = f.toURI();
			url = uri.toURL(); 
			AudioClip aau;
			aau = Applet.newAudioClip(url);
			aau.loop();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
