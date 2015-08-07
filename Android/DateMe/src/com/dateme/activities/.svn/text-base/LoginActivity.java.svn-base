package com.dateme.activities;

import java.util.Arrays;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.dateme.R;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.UiLifecycleHelper;
import com.facebook.model.GraphUser;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.LoginButton;

public class LoginActivity extends DatemeActivity implements OnClickListener {
	Button btnOtherOption;
	private LoginButton loginButton;
	private UiLifecycleHelper uiHelper;
	private PendingAction pendingAction = PendingAction.NONE;
	private final String PENDING_ACTION_BUNDLE_KEY = "com.dateme:PendingAction";
	private GraphUser user;

	private enum PendingAction {
		NONE, POST_PHOTO, POST_STATUS_UPDATE
	}

	private Session.StatusCallback callback = new Session.StatusCallback() {
		@Override
		public void call(Session session, SessionState state,
				Exception exception) {
			onSessionStateChange(session, state, exception);
		}
	};
	private FacebookDialog.Callback dialogCallback = new FacebookDialog.Callback() {
		@Override
		public void onError(FacebookDialog.PendingCall pendingCall,
				Exception error, Bundle data) {
			Log.d("HelloFacebook", String.format("Error: %s", error.toString()));
		}

		@Override
		public void onComplete(FacebookDialog.PendingCall pendingCall,
				Bundle data) {
			Log.d("HelloFacebook", "Success!");
		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);
		uiHelper = new UiLifecycleHelper(this, callback);
		uiHelper.onCreate(savedInstanceState);
		if (savedInstanceState != null) {
			String name = savedInstanceState
					.getString(PENDING_ACTION_BUNDLE_KEY);
			pendingAction = PendingAction.valueOf(name);
		}
		loginButton = (LoginButton) findViewById(R.id.login_button);
		loginButton.setReadPermissions(Arrays.asList("public_profile", "email",
				"user_likes", "user_status"));
		loginButton
				.setUserInfoChangedCallback(new LoginButton.UserInfoChangedCallback() {
					@Override
					public void onUserInfoFetched(GraphUser user) {
						LoginActivity.this.user = user;
						updateUI();
						// It's possible that we were waiting for this.user to
						// be populated in order to post a
						// status update.
						handlePendingAction();
					}
				});
		init();
	}

	@SuppressWarnings("incomplete-switch")
	private void handlePendingAction() {
		PendingAction previouslyPendingAction = pendingAction;
		// These actions may re-set pendingAction if they are still pending, but
		// we assume they
		// will succeed.
		pendingAction = PendingAction.NONE;

		switch (previouslyPendingAction) {
		case POST_PHOTO:
			// postPhoto();
			break;
		case POST_STATUS_UPDATE:
			// postStatusUpdate();
			break;
		}
	}

	private void init() {
		// TODO Auto-generated method stub
		btnOtherOption = (Button) findViewById(R.id.btnOtherOption);
		btnOtherOption.setOnClickListener(this);
	}

	private void onSessionStateChange(Session session, SessionState state,
			Exception exception) {
		if (pendingAction != PendingAction.NONE
				&& (exception instanceof FacebookOperationCanceledException || exception instanceof FacebookAuthorizationException)) {
			new AlertDialog.Builder(LoginActivity.this)
					.setTitle(R.string.cancelled)
					.setMessage(R.string.permission_not_granted)
					.setPositiveButton(R.string.ok, null).show();
			pendingAction = PendingAction.NONE;
		} else if (state == SessionState.OPENED_TOKEN_UPDATED) {
			handlePendingAction();
		}
		updateUI();
	}

	private void updateUI() {
		Session session = Session.getActiveSession();
		boolean enableButtons = (session != null && session.isOpened());

		// postStatusUpdateButton.setEnabled(enableButtons
		// || canPresentShareDialog);
		// postPhotoButton.setEnabled(enableButtons
		// || canPresentShareDialogWithPhotos);
		// pickFriendsButton.setEnabled(enableButtons);
		// pickPlaceButton.setEnabled(enableButtons);
		//
		if (enableButtons && user != null) {
			System.out.println("userid" + user.getId());
			System.out.println("First name" + user.getFirstName());
			System.out.println("email" + user.getProperty("email").toString());
			System.out.println("Birthday:"+user.getBirthday());
			System.out.println("GENDER"+user.getBirthday());
 			System.out.println("Location:"+user.getLocation());
		
			System.out.println("JSON:" + user.getInnerJSONObject());

		} else {
			System.out.println("Userinfo is null");
		}
	}

	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
	}

	@Override
	public void onPause() {
		super.onPause();
		uiHelper.onPause();
		AppEventsLogger.deactivateApp(this);

		// Call the 'deactivateApp' method to log an app event for use in
		// analytics and advertising
		// reporting. Do so in the onPause methods of the primary Activities
		// that an app may be launched into.
		AppEventsLogger.deactivateApp(this);
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		uiHelper.onDestroy();
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
		uiHelper.onSaveInstanceState(outState);

		outState.putString(PENDING_ACTION_BUNDLE_KEY, pendingAction.name());
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		uiHelper.onActivityResult(requestCode, resultCode, data, dialogCallback);
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		AppEventsLogger.activateApp(this);

		uiHelper.onResume();

		// Call the 'activateApp' method to log an app event for use in
		// analytics and advertising reporting. Do so in
		// the onResume methods of the primary Activities that an app may be
		// launched into.
		AppEventsLogger.activateApp(this);

		updateUI();
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btnOtherOption:
			startActivity(new Intent(this, RegistrationActivity.class));
			break;

		default:
			break;
		}
	}

}
