package com.dateme.activities;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.dateme.R;
import com.dateme.callback.ResponseListener;
import com.dateme.config.AppConstants;
import com.dateme.entities.RegistrationResponseEntity;
import com.dateme.entities.UserInfo;
import com.dateme.managers.ServiceManager;
import com.dateme.managers.XMPPServiceManager;

public class RegistrationActivity extends DatemeActivity implements
		OnClickListener {
	private ServiceManager serviceManager = ServiceManager.getInstance();
	private XMPPServiceManager xmppManager = XMPPServiceManager.getInstance();
	EditText etEmail, etName, etBirthday, etGender, etHereFor, etLocation;
	Button btnGo;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_registration);
		init();
	}

	private void init() {
		// TODO Auto-generated method stub
		etEmail = (EditText) findViewById(R.id.etEmail);
		etName = (EditText) findViewById(R.id.etName);
		etBirthday = (EditText) findViewById(R.id.etBirthday);
		etGender = (EditText) findViewById(R.id.etGender);
		etHereFor = (EditText) findViewById(R.id.etHerefor);
		etLocation = (EditText) findViewById(R.id.etLocation);
		btnGo = (Button) findViewById(R.id.btnLetsgo);
		btnGo.setOnClickListener(this);
	}

	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btnLetsgo:
			doRegistration();
			break;

		default:
			break;
		}
	}

	private void doRegistration() {

		final UserInfo userInfo = new UserInfo();
		userInfo.setEmail(etEmail.getText().toString());
		userInfo.setName(etName.getText().toString());
		userInfo.setBirthday(etBirthday.getText().toString());
		userInfo.setGender(etGender.getText().toString());
		userInfo.setHere_for(etHereFor.getText().toString());
		userInfo.setLocation(etLocation.getText().toString());
		ResponseListener callback = new ResponseListener() {

			@Override
			public void onResponse(final Object object) {
				// TODO Auto-generated method stub
				System.out.println("Respose:-->" + object.toString());
				Toast.makeText(
						RegistrationActivity.this,
						"UserID"
								+ ((RegistrationResponseEntity) object)
										.getUserID(), Toast.LENGTH_LONG).show();
				
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						// TODO Auto-generated method stub
						userInfo.setUserid(((RegistrationResponseEntity) object)
										.getUserID());
						xmppManager.registerAccount(RegistrationActivity.this,
								AppConstants.XMPPHOST, userInfo, xmppListener);
		
					}
				}).start();
				
			}
		};

		serviceManager.RegisterUser(RegistrationActivity.this,
				AppConstants.HOST, userInfo, callback);
	}

	ResponseListener xmppListener = new ResponseListener() {

		@Override
		public void onResponse(Object object) {
				Toast.makeText(RegistrationActivity.this, object.toString(), Toast.LENGTH_LONG).show();
		}
	};
}
