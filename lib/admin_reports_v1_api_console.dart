library admin_reports_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_admin_reports_v1_api/src/console_client.dart';

import "package:google_admin_reports_v1_api/admin_reports_v1_api_client.dart";

/** Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users. */
@deprecated
class Admin extends Client with ConsoleClient {

  /** OAuth Scope2: View audit reports of Google Apps for your domain */
  static const String ADMIN_REPORTS_AUDIT_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.audit.readonly";

  /** OAuth Scope2: View usage reports of Google Apps for your domain */
  static const String ADMIN_REPORTS_USAGE_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.reports.usage.readonly";

  final oauth2.OAuth2Console auth;

  Admin([oauth2.OAuth2Console this.auth]);
}
