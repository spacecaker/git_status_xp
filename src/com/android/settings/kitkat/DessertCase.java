package com.android.settings.kitkat;

import android.app.Activity;

public class DessertCase extends Activity {
	DessertCaseView mView;

	@Override
	public void onStart() {
		super.onStart();
		mView = new DessertCaseView(this, null, 0);
		DessertCaseView.RescalingContainer container = new DessertCaseView.RescalingContainer(
				this);
		container.setView(mView);
		setContentView(container);
	}

	@Override
	public void onResume() {
		super.onResume();
		mView.postDelayed(new Runnable() {
			public void run() {
				mView.start();
			}
		}, 1000);
	}

	@Override
	public void onPause() {
		super.onPause();
		mView.stop();
	}
}
