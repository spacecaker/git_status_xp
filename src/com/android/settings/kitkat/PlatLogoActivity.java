package com.android.settings.kitkat;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.settings.R;

public class PlatLogoActivity extends Activity {
	FrameLayout mContent;
	int mCount;
	final Handler mHandler = new Handler();
	static final int BGCOLOR = 0xffed1d24;
	SharedPreferences prefs = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		prefs = getSharedPreferences("com.android.settings.kitkat", MODE_PRIVATE);

		DisplayMetrics metrics = new DisplayMetrics();
		getWindowManager().getDefaultDisplay().getMetrics(metrics);

		Typeface bold = Typeface.create("sans-serif", Typeface.BOLD);
		Typeface light = Typeface.create("sans-serif-light", Typeface.NORMAL);

		mContent = new FrameLayout(this);
		mContent.setBackgroundColor(0xC0000000);

		final FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
				FrameLayout.LayoutParams.WRAP_CONTENT,
				FrameLayout.LayoutParams.WRAP_CONTENT);
		lp.gravity = Gravity.CENTER;

		final ImageView logo = new ImageView(this);
		logo.setImageResource(R.drawable.msr);
		logo.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
		logo.setVisibility(View.INVISIBLE);

		final View bg = new View(this);
		bg.setBackgroundColor(BGCOLOR);
		bg.setAlpha(0f);

		final TextView letter = new TextView(this);

		letter.setTypeface(bold);
		letter.setTextSize(90);
		letter.setTextColor(0xFFFFFFFF);
		letter.setGravity(Gravity.CENTER);
		letter.setText("MSR");

		final int p = (int) (4 * metrics.density);

		final TextView tv = new TextView(this);
		if (light != null)
			tv.setTypeface(light);
		tv.setTextSize(30);
		tv.setPadding(p, p, p, p);
		tv.setTextColor(0xFFFFFFFF);
		tv.setGravity(Gravity.CENTER);
		tv.setText("ANDROID 4.1.2");
		tv.setVisibility(View.INVISIBLE);

		mContent.addView(bg);
		mContent.addView(letter, lp);
		mContent.addView(logo, lp);

		final FrameLayout.LayoutParams lp2 = new FrameLayout.LayoutParams(lp);
		lp2.gravity = Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL;
		lp2.bottomMargin = 10 * p;

		mContent.addView(tv, lp2);

		mContent.setOnClickListener(new View.OnClickListener() {
			int clicks;

			@SuppressLint("NewApi")
			@Override
			public void onClick(View v) {
				clicks++;
				if (clicks >= 6) {
					mContent.performLongClick();
					return;
				}
				letter.animate().cancel();
				final float offset = (int) letter.getRotation() % 360;
				letter.animate()
						.rotationBy(
								(Math.random() > 0.5f ? 360 : -360) - offset)
						.setInterpolator(new DecelerateInterpolator())
						.setDuration(700).start();
			}
		});

		mContent.setOnLongClickListener(new View.OnLongClickListener() {
			@SuppressLint("NewApi")
			@Override
			public boolean onLongClick(View v) {
				if (logo.getVisibility() != View.VISIBLE) {
					bg.setScaleX(0.01f);
					bg.animate().alpha(1f).scaleX(1f).setStartDelay(500)
							.start();
					letter.animate().alpha(0f).scaleY(0.5f).scaleX(0.5f)
							.rotationBy(360)
							.setInterpolator(new AccelerateInterpolator())
							.setDuration(1000).start();
					logo.setAlpha(0f);
					logo.setVisibility(View.VISIBLE);
					logo.setScaleX(0.5f);
					logo.setScaleY(0.5f);
					logo.animate()
							.alpha(1f)
							.scaleX(1f)
							.scaleY(1f)
							.setDuration(1000)
							.setStartDelay(500)
							.setInterpolator(
									new AnticipateOvershootInterpolator())
							.start();
					tv.setAlpha(0f);
					tv.setVisibility(View.VISIBLE);
					tv.animate().alpha(1f).setDuration(1000)
							.setStartDelay(1000).start();
					if (prefs.getBoolean("firstrun", true)) {
						Toast.makeText(PlatLogoActivity.this,
								"Long Press anywhere on screen",
								Toast.LENGTH_SHORT).show();
						prefs.edit().putBoolean("firstrun", false).commit();
					}
					return true;
				}
				return false;
			}
		});

		logo.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                try {
                    startActivity(new Intent(Intent.ACTION_MAIN)
                        .setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                            | Intent.FLAG_ACTIVITY_CLEAR_TASK
                            | Intent.FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS)
                        .setClassName("com.android.settings","com.android.settings.kitkat.DessertCase"));
                } catch (ActivityNotFoundException ex) {
                    android.util.Log.e("PlatLogoActivity", "Couldn't catch a break.");
                }
                finish();
                return true;
            }
        });
		setContentView(mContent);
	}
}
