part of admin_reports_v1_api_console;

/** Client to access the admin reports_v1 API */
/** Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users. */
class Admin extends ConsoleClient {

  ActivitiesResource_ _activities;
  ActivitiesResource_ get activities => _activities;
  CustomerUsageReportsResource_ _customerUsageReports;
  CustomerUsageReportsResource_ get customerUsageReports => _customerUsageReports;
  UserUsageReportResource_ _userUsageReport;
  UserUsageReportResource_ get userUsageReport => _userUsageReport;

  /** OAuth Scope2: View audit reports of Google Apps for your domain */
  static const core.String ADMIN_REPORTS_AUDIT_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.audit.readonly";

  /** OAuth Scope2: View usage reports of Google Apps for your domain */
  static const core.String ADMIN_REPORTS_USAGE_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.usage.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Admin([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/admin/reports/v1/";
    rootUrl = "https://www.googleapis.com/";
    _activities = new ActivitiesResource_(this);
    _customerUsageReports = new CustomerUsageReportsResource_(this);
    _userUsageReport = new UserUsageReportResource_(this);
  }
}
