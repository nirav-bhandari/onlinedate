package com.dateme.config;

public class JSONConstants {

	/* JSON Constants Used in Application */

	/* Common String */

	public static final String HTTP_200 = "HTTP200";
	public static final String RESPONSE_CODE = "ResponseCode";
	public static final String RESPONSE_DESCRIPTION = "ResponseDescription";
	public static final String RESPONSE_CODE_VALUE = "000";
	public static final String RESPONSE_DESCRIPTION_VALUE = "Successful";

	public static final String METHOD_NAME = "MethodName";
	public static final String REQUEST_UNIQUEID = "RequestUniqueID";
	public static final String NOT_AVAILABLE = "Not Available";
	public static final String SESSION_ID = "SessionID";
	public static final String SESSION_EXPIERD_1 = "544";
	public static final String SESSION_EXPIERD_2 = "625";

	private JSONConstants() {
	}

	 

	public class GetRegistration {

		// Request
		public static final String USERNAME = "username";
		public static final String EMAIL = "email";
		public static final String RELATIONSHIP="relationship";
		public static final String NAME = "name";
		public static final String PASSWORD = "password";
		public static final String BIRTHDAY = "birthday";
		public static final String GENDER = "gender";
		public static final String HERE_FOR = "here_for";
		public static final String LOOKING_FOR = "lookingfor";
		public static final String LOCATION = "location";
		public static final String INTEREST = "interests";
		public static final String ABOUTME = "aboutme";
		public static final String SEXUALITY = "sexuality";
		public static final String HEIGHT = "height";
		public static final String WEIGHT = "weight";
		public static final String BODY_TYPE = "body_type";
		public static final String EYE_COLOR = "eyecolor";
		public static final String HAIR_COLOR = "hair_color";
		public static final String LIVING = "living";
		public static final String CHILDREN = "children";
		public static final String SMOKING = "smoking";
		public static final String DRINKING = "drinking";
		public static final String EDUCATION = "education";
		public static final String LANGUAGE = "language";
		public static final String JOB = "job";
		public static final String COMPANY = "company";
		 public static final String INCOME="income";
		// Response

		public static final String USERID = "userid";

		protected GetRegistration() {
		}
	}

	 
}
