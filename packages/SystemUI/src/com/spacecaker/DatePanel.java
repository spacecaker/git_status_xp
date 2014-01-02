package com.spacecaker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.systemui.R;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class DatePanel extends LinearLayout {
	
	LinearLayout ln;
	
	 public DatePanel(final Context context, AttributeSet attrs) {
		  super(context, attrs);
		  
			 ln = (LinearLayout) findViewById(R.id.date_panel);
 
	 }

	 public void setHeightWrap() {
		 LayoutParams lp = new LayoutParams(LayoutParams.FILL_PARENT,LayoutParams.WRAP_CONTENT);
		 ln.setLayoutParams(lp);
	 }
	 
	 public void setHeight() {
		 float scale = getContext().getResources().getDisplayMetrics().density;
		 int height = (int) (49 * scale + 0.5f);
		 LayoutParams lp = new LayoutParams(LayoutParams.FILL_PARENT,height);
		 ln.setLayoutParams(lp);
	 }
}

