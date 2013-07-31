library admin_reports_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_admin_reports_v1_api/src/cloud_api_browser.dart';
import "package:google_admin_reports_v1_api/admin_reports_v1_api_client.dart";

/** Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users. */
class Admin extends Client with BrowserClient {

  /** OAuth Scope2: View audit reports of Google Apps for your domain */
  static const String ADMIN_REPORTS_AUDIT_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.audit.readonly";

  /** OAuth Scope2: View usage reports of Google Apps for your domain */
  static const String ADMIN_REPORTS_USAGE_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.usage.readonly";

  final oauth.OAuth2 auth;

  Admin([oauth.OAuth2 this.auth]);
}
