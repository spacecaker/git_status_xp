package com.spacecaker;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.systemui.R;

public class SpaceLayOut extends LinearLayout {
	
    private LinearLayout ln;
    String message;
    String layoutType;
    
	public SpaceLayOut(final Context context, AttributeSet attrs) {
	super(context, attrs); 
	
	  final float scale = getContext().getResources().getDisplayMetrics().density;
	  final int left_tab = (int) (40 * scale + 0.5f);
	  final int left_phab = (int) (5 * scale + 0.5f);
	  final int right = (int) (5 * scale + 0.5f);
	  final int top = (int) (-11 * scale + 0.5f);
	
	 ln = (LinearLayout) findViewById(R.id.spacelayoutbar);

    };      
}
