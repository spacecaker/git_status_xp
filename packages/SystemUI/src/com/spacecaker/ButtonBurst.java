package com.spacecaker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.systemui.R;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class ButtonBurst extends ImageView {

 String message;
 ImageView image;
 public ButtonBurst(final Context context, AttributeSet attrs) {
  super(context, attrs);
  
  image = (ImageView) findViewById(R.id.quickpanel_button);
  image.setImageResource(R.drawable.ic_notify_quickpanel);
 
	image.setOnClickListener(new View.OnClickListener() {
		 
		@Override
		public void onClick(View v) {
	        if (v.isSelected()){
	            v.setSelected(false);
				Intent intent = new Intent();
				intent.setAction("com.spacecaker.FLIP_TO_NOTIF");
				context.sendBroadcast(intent);
	        } else {
	            v.setSelected(true);
				Intent intent = new Intent();
				intent.setAction("com.spacecaker.FLIP_TO_TOGGLES");
				context.sendBroadcast(intent);
	        }		};
	});
 }
 
}

