package com.dateme.managers;

import org.jivesoftware.smack.AccountManager;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.PacketCollector;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Registration;

import android.content.Context;
import android.util.Log;

import com.dateme.callback.ResponseListener;
import com.dateme.config.AppConstants;
import com.dateme.entities.UserInfo;

public class XMPPServiceManager {
	private static final XMPPServiceManager INSTANCE = new XMPPServiceManager();

	private XMPPServiceManager() {
	}

	public static XMPPServiceManager getInstance() {
		return INSTANCE;
	}

	public void init() {
		Log.d(AppConstants.DEBUG, "INIT XMPPServiceManager");
	}

	public void registerAccount(Context mContext, String host,
			UserInfo userinfo, ResponseListener xmppListener) {
		ConnectionConfiguration connConfig = new ConnectionConfiguration(
				AppConstants.XMPPHOST, AppConstants.PORT, AppConstants.SERVICE);
		XMPPConnection connection = new XMPPConnection(connConfig);

		try {
			connection.connect();
			Log.i("XMPPServiceManager", "Connected to " + connection.getHost());
			AccountManager am = new AccountManager(connection);
			System.out.println("Is Account creation supported:"
					+ am.supportsAccountCreation());

			Registration reg = new Registration();
			reg.setType(IQ.Type.SET);
			reg.setTo(connection.getServiceName());
			reg.addAttribute("username", userinfo.getName()+userinfo.getUserid());
			reg.addAttribute("password",userinfo.getUserid());
			reg.addAttribute("email",userinfo.getEmail());
			reg.addAttribute("name",userinfo.getName());
			PacketFilter filter = new AndFilter(new PacketIDFilter(
					reg.getPacketID()), new PacketTypeFilter(IQ.class));
			PacketCollector collector = connection
					.createPacketCollector(filter);
			connection.sendPacket(reg);
			Log.i("XMPPServiceManager", userinfo.getEmail()
					+ " account created successfully");
			xmppListener.onResponse("Success");
		} catch (XMPPException ex) {
			ex.printStackTrace();
			Log.e("XMPPServiceManager",
					"Failed to connect to " + connection.getHost());
			Log.e("XMPPServiceManager", ex.toString());
		}
	}

}
