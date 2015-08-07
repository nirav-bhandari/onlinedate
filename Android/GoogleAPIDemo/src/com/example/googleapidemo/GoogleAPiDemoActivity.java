package com.example.googleapidemo;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.Person.Image;
import com.google.android.gms.plus.model.people.Person.Name;

public class GoogleAPiDemoActivity extends Activity
		implements
		com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks,
		com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener,
		ResultCallback<LoadPeopleResult> {

	/* Request code used to invoke sign in user interactions. */
	private static final int RC_SIGN_IN = 0;

	/* Client used to interact with Google APIs. */
	private GoogleApiClient mGoogleApiClient;

	/*
	 * A flag indicating that a PendingIntent is in progress and prevents us
	 * from starting further intents.
	 */
	private boolean mIntentInProgress;

	// jevi app chalu thase tevi oncreate call thase...ema apne google api
	// clieint no obgject banavi lidho..
	// and e object ma listner pan aapi didha..addconnectioncallback and
	// addonconnectionfailed listener..
	// etlet hu jyare pan aa api ni connect method call karish etle google app
	// no control lai lese ane apne je method implements kari che sidhi ene call
	// karse..
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_google_api_demo);
		mGoogleApiClient = new GoogleApiClient.Builder(this)
				.addConnectionCallbacks(this)
				.addOnConnectionFailedListener(this).addApi(Plus.API)
				.addScope(Plus.SCOPE_PLUS_LOGIN).build();
		mGoogleApiClient.connect();
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	// on create pachi sidhi on start method cal thay..
	// apne oncreate ma je object banavyo e ahiya connect karsu etle google jate
	// j sigin no dilog open karse...and success k fail je pan thase e listert
	// ni method ma return karse...
	protected void onStart() {
		super.onStart();

	}

	protected void onStop() {
		super.onStop();

		if (mGoogleApiClient.isConnected()) {
			mGoogleApiClient.disconnect();
		}
	}

	@Override
	public void onConnected(Bundle arg0) {
		// TODO Auto-generated method stub
		// Plus.PeopleApi.loadVisible(mGoogleApiClient, null)
		// .setResultCallback(this);

		// connect methd ma user barabar acc select kare and login thai jay to
		// direct aa method call thase..
		System.out.println("Connected");
		// pachi ahiya logic thodu change che...te karyu hatu ena karta
		if (Plus.PeopleApi.getCurrentPerson(mGoogleApiClient) != null) {
			// me ahoya aavi rite person get karyo che...k googleApiclient nii
			// method jo coonected hoy to j apne ene typecast kari ne person no
			// object retrive karsu.

			Person currentPerson = Plus.PeopleApi
					.getCurrentPerson(mGoogleApiClient);
			String personName = currentPerson.getDisplayName();
			Image personPhoto = currentPerson.getImage();
			String personGooglePlusProfile = currentPerson.getUrl();
			String currentLocation = currentPerson.getCurrentLocation();
			Name name = currentPerson.getName();

			Toast.makeText(
					this,
					"PersonName:" + personName + "\nProfileURL:"
							+ personGooglePlusProfile + "\nBirthday:"
							+ currentPerson.getBirthday() + currentPerson
							+ "\nCurrent Location:" + currentLocation
							+ "\nName:" + name + "\nImage:" + personPhoto,
					Toast.LENGTH_LONG).show();
			;

		}
	}

	@Override
	public void onConnectionSuspended(int arg0) {
		// TODO Auto-generated method stub
		mGoogleApiClient.connect();
	}

	protected void onActivityResult(int requestCode, int responseCode,
			Intent intent) {
		if (requestCode == RC_SIGN_IN) {
			mIntentInProgress = false;

			if (!mGoogleApiClient.isConnecting()) {
				mGoogleApiClient.connect();
			}
		}
	}

	@Override
	public void onConnectionFailed(ConnectionResult result) {
		// TODO Auto-generated method stub

		// connect method pachi jo fail thase to google aa method call karse
		// ahioya me evu karyu che k kem fail thayu enu resolution pn google
		// apse..
		if (!mIntentInProgress && result.hasResolution()) {
			try {
				mIntentInProgress = true;
				startIntentSenderForResult(result.getResolution()
						.getIntentSender(), RC_SIGN_IN, null, 0, 0, 0);
			} catch (SendIntentException e) {
				// The intent was canceled before it was sent. Return to the
				// default
				// state and attempt to connect to get an updated
				// ConnectionResult.
				mIntentInProgress = false;
				mGoogleApiClient.connect();
			}
		}
	}

	public void onResult(LoadPeopleResult arg0) {
		// TODO Auto-generated method stub

	}

	/*
	 * private PlusClient plusClient; private ConnectionResult connectionResult;
	 * private ConnectionCallbacks callBacks; private OnConnectionFailedListener
	 * onConnectionFailed; private static final int REQUEST_CODE_RESLOVE_ERR =
	 * 9000; String name, url, id;
	 * 
	 * Button btnsignIn, btnGetUserData;
	 * 
	 * @Override protected void onCreate(Bundle savedInstanceState) {
	 * super.onCreate(savedInstanceState); Toast.makeText(this,
	 * "Wel come to GoogleAPI Demo", 1000).show(); plusClient = new
	 * PlusClient.Builder(this, this, this).setActions(
	 * "http://schemas.google.com/AddActivity",
	 * "http://schemas.google.com/BuyActivity").build();
	 * 
	 * setContentView(R.layout.activity_google_api_demo); btnsignIn = (Button)
	 * findViewById(R.id.btnSignIn); btnGetUserData = (Button)
	 * findViewById(R.id.btnGetUserData);
	 * btnGetUserData.setOnClickListener(this);
	 * btnsignIn.setOnClickListener(this);
	 * 
	 * }
	 * 
	 * @Override public void onClick(View v) { // TODO Auto-generated method
	 * stub if (v.getId() == R.id.btnSignIn && !plusClient.isConnected()) { if
	 * (connectionResult != null) { try {
	 * connectionResult.startResolutionForResult(this,
	 * REQUEST_CODE_RESLOVE_ERR); } catch (SendIntentException e) { // TODO
	 * Auto-generated catch block connectionResult = null; plusClient.connect();
	 * } } } if (v.getId() == R.id.btnGetUserData) { if
	 * (plusClient.isConnected()) {
	 * 
	 * Person currentPersone = plusClient.getCurrentPerson(); name =
	 * currentPersone.getDisplayName(); url = currentPersone.getUrl(); id =
	 * currentPersone.getId(); Toast.makeText(this, "loged user name:" + name,
	 * 1000).show(); Toast.makeText(this, "\n Loged user url" + url,
	 * 1000).show(); Toast.makeText(this, "\n Loged user id:" + id,
	 * 1000).show();
	 * 
	 * } else { Toast.makeText(this, "Please sign in", 1000).show(); } }
	 * 
	 * }
	 * 
	 * protected void onStart() { super.onStart(); plusClient.connect(); }
	 * 
	 * protected void onStop() { super.onStop(); plusClient.disconnect(); }
	 * 
	 * @Override public void onConnectionFailed(ConnectionResult Result) { //
	 * TODO Auto-generated method stub if (Result.hasResolution()) { try {
	 * Result.startResolutionForResult(this, REQUEST_CODE_RESLOVE_ERR); } catch
	 * (SendIntentException e) { // TODO Auto-generated catch block
	 * plusClient.connect(); }
	 * 
	 * } connectionResult = Result; }
	 * 
	 * @Override public void onDisconnected() { // TODO Auto-generated method
	 * stub String accountName = plusClient.getAccountName();
	 * Toast.makeText(this, "This " + accountName + " is disconnected", 1000)
	 * .show();
	 * 
	 * }
	 * 
	 * @Override public void onConnected(Bundle arg0) { // TODO Auto-generated
	 * method stub String accountName = plusClient.getAccountName(); Person
	 * person = plusClient.getCurrentPerson();
	 * 
	 * Toast.makeText(this, "This " + accountName + " is connected\n", 1000)
	 * .show(); Toast.makeText(this, "Name:" + person.getName() + "\nGender:" +
	 * person.getGender(), 1000).show(); }
	 * 
	 * @Override public void onConnectionSuspended(int arg0) { // TODO
	 * Auto-generated method stub
	 * 
	 * }
	 */
}
