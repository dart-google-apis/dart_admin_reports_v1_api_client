part of admin_reports_v1_api_client;

class ActivitiesResource_ extends Resource {

  ActivitiesResource_(Client client) : super(client) {
  }

  /**
   * Retrieves a list of activities for a specific customer and application.
   *
   * [userKey] - Represents the profile id or the user email for which the data should be filtered. When 'all' is specified as the userKey, it returns usageReports for all users.
   *
   * [applicationName] - Application name for which the events are to be retrieved.
   *
   * [actorIpAddress] - IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
   *
   * [endTime] - Return events which occured at or before this time.
   *
   * [eventName] - Name of the event being queried.
   *
   * [filters] - Event parameters in the form [parameter1 name][operator][parameter1 value],[parameter2 name][operator][parameter2 value],...
   *
   * [maxResults] - Number of activity records to be shown in each page.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - Token to specify next page.
   *
   * [startTime] - Return events which occured at or after this time.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Activities> list(core.String userKey, core.String applicationName, {core.String actorIpAddress, core.String endTime, core.String eventName, core.String filters, core.int maxResults, core.String pageToken, core.String startTime, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activity/users/{userKey}/applications/{applicationName}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (actorIpAddress != null) queryParams["actorIpAddress"] = actorIpAddress;
    if (applicationName == null) paramErrors.add("applicationName is required");
    if (applicationName != null) urlParams["applicationName"] = applicationName;
    if (endTime != null) queryParams["endTime"] = endTime;
    if (eventName != null) queryParams["eventName"] = eventName;
    if (filters != null) queryParams["filters"] = filters;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startTime != null) queryParams["startTime"] = startTime;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Activities.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomerUsageReportsResource_ extends Resource {

  CustomerUsageReportsResource_(Client client) : super(client) {
  }

  /**
   * Retrieves a report which is a collection of properties / statistics for a specific customer.
   *
   * [date] - Represents the date in yyyy-mm-dd format for which the data is to be fetched.
   *
   * [pageToken] - Token to specify next page.
   *
   * [parameters] - Represents the application name, parameter name pairs to fetch in csv as app_name1:param_name1, app_name2:param_name2.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UsageReports> get(core.String date, {core.String pageToken, core.String parameters, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "usage/dates/{date}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (date == null) paramErrors.add("date is required");
    if (date != null) urlParams["date"] = date;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (parameters != null) queryParams["parameters"] = parameters;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UsageReports.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UserUsageReportResource_ extends Resource {

  UserUsageReportResource_(Client client) : super(client) {
  }

  /**
   * Retrieves a report which is a collection of properties / statistics for a set of users.
   *
   * [userKey] - Represents the profile id or the user email for which the data should be filtered.
   *
   * [date] - Represents the date in yyyy-mm-dd format for which the data is to be fetched.
   *
   * [filters] - Represents the set of filters including parameter operator value.
   *
   * [maxResults] - Maximum number of results to return. Maximum allowed is 1000
   *   Maximum: 1000
   *
   * [pageToken] - Token to specify next page.
   *
   * [parameters] - Represents the application name, parameter name pairs to fetch in csv as app_name1:param_name1, app_name2:param_name2.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UsageReports> get(core.String userKey, core.String date, {core.String filters, core.int maxResults, core.String pageToken, core.String parameters, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "usage/users/{userKey}/dates/{date}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (date == null) paramErrors.add("date is required");
    if (date != null) urlParams["date"] = date;
    if (filters != null) queryParams["filters"] = filters;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (parameters != null) queryParams["parameters"] = parameters;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UsageReports.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}
