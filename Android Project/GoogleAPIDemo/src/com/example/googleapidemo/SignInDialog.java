package com.example.googleapidemo;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.plus.PlusClient;
import com.google.android.gms.plus.model.people.Person;

public class SignInDialog extends Activity
		implements
		ConnectionCallbacks,
		OnConnectionFailedListener,
		com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks,
		OnClickListener {
	private PlusClient plusClient;
	private ConnectionResult connectionResult;
	private ConnectionCallbacks callBacks;
	private OnConnectionFailedListener onConnectionFailed;
	private static final int REQUEST_CODE_RESLOVE_ERR = 9000;
	String name, url, id;
	EditText etEmail;
	Button btnSignIn;

	/*
	 * public SignInDialog(Context context) { super(context); // TODO
	 * Auto-generated constructor stub }
	 */

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// requestWindowFeature(Window.FEATURE_NO_TITLE);
		plusClient = new PlusClient.Builder(this, this, this).setActions(
				"http://schemas.google.com/AddActivity",
				"http://schemas.google.com/BuyActivity").build();
		setContentView(R.layout.activity_sign_in_dialog);
		etEmail = (EditText) findViewById(R.id.etEmail);
		btnSignIn = (Button) findViewById(R.id.btnSignIn);
		btnSignIn.setOnClickListener(this);
		plusClient.connect();
		if (plusClient.isConnected()) {
			Person currentPersone = plusClient.getCurrentPerson();
			name = currentPersone.getDisplayName();
			url = currentPersone.getUrl();
			id = currentPersone.getId();
			System.out.println("loged user name:" + name);
			System.out.println("\n Loged uer url" + url);
			System.out.println("\n Loged user id:" + id);
		} else {
			System.out.println("please sign in");
		}

	}

	protected void onStart() {
		super.onStart();
		plusClient.connect();
	}

	protected void onStop() {
		super.onStop();
		plusClient.disconnect();
	}

	@Override
	public void onConnectionFailed(ConnectionResult Result) {
		// TODO Auto-generated method stub
		if (Result.hasResolution()) {
			try {
				Result.startResolutionForResult(this, REQUEST_CODE_RESLOVE_ERR);
			} catch (SendIntentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			connectionResult = Result;
		}

	}

	@Override
	public void onConnected(Bundle ConnectionHint) {
		// TODO Auto-generated method stub
		String accountName = plusClient.getAccountName();
		Toast.makeText(this, "This" + accountName + "is connected", 1000)
				.show();

	}

	@Override
	public void onConnectionSuspended(int arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDisconnected() {
		// TODO Auto-generated method stub

	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.btnSignIn:
			if (!plusClient.isConnected()) {
				if (connectionResult != null) {
					try {
						connectionResult.startResolutionForResult(this,
								REQUEST_CODE_RESLOVE_ERR);
					} catch (SendIntentException e) {
						// TODO Auto-generated catch block
						connectionResult=null;
						plusClient.connect();
					}
				}
			}
			else{
				plusClient.connect();
				if (plusClient.isConnected()) {
					Person currentPersone = plusClient.getCurrentPerson();
					name = currentPersone.getDisplayName();
					url = currentPersone.getUrl();
					id = currentPersone.getId();
					System.out.println("loged user name:" + name);
					System.out.println("\n Loged uer url" + url);
					System.out.println("\n Loged user id:" + id);
				} else {
					System.out.println("please sign in");
				}

			}
			break;

		default:
			break;
		}
	}

}
