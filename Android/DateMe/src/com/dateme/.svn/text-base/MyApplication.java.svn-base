package com.dateme;

import android.app.Application;
import android.app.ProgressDialog;
import android.content.Context;
import android.widget.Toast;

import com.dateme.fragment.network.NetworkManager;
import com.dateme.managers.ServiceManager;
import com.dateme.managers.XMPPServiceManager;

public class MyApplication extends Application {
	private static Context context;
	private static Context ACTIVITYCONTEXT = null;
	private static ProgressDialog pd;

	public void onCreate() {
		super.onCreate();
		MyApplication.context = getApplicationContext();
		loadManagers();
	}

	public static Context getAppContext() {
		return MyApplication.context;
	}

	public static Context getACTIVITYCONTEXT() {
		return ACTIVITYCONTEXT;
	}

	public static void setACTIVITYCONTEXT(Context aCTIVITYCONTEXT) {
		ACTIVITYCONTEXT = aCTIVITYCONTEXT;
	}

	public void loadManagers() {
		// Load Managers
		ServiceManager serviceManager = ServiceManager.getInstance();
		serviceManager.init();
		NetworkManager networkManager = NetworkManager.getInstance();
		networkManager.init();
		XMPPServiceManager xmppManager=XMPPServiceManager.getInstance();
		xmppManager.init();

	}

	// Show/Dismiss Progress Dialog Throughout Whole Application
	public static void showProgressDialog(Context context1) {

		pd = ProgressDialog.show(context1, null, "Please Wait", true);
		pd.setContentView(R.layout.progress);
	}

	public static void dismissProgressDialog() {
		if (pd.isShowing()) {
			pd.dismiss();
		}
	}

	// Show Toast For Whole Application
	public static void showMsg(String msg, Context context) {

		Toast.makeText(context, msg, Toast.LENGTH_LONG).show();
	}

}
