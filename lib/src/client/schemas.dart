part of admin_reports_v1_api;

/** JSON template for a collection of activites. */
class Activities {

  /** ETag of the resource. */
  core.String etag;

  /** Each record in read response. */
  core.List<Activity> items;

  /** Kind of list response this is. */
  core.String kind;

  /** Token for retrieving the next page */
  core.String nextPageToken;

  /** Create new Activities from JSON data */
  Activities.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Activity.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Activities */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Activities */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for the activity resource. */
class Activity {

  /** User doing the action. */
  ActivityActor actor;

  /** ETag of the entry. */
  core.String etag;

  /** Activity events. */
  core.List<ActivityEvents> events;

  /** Unique identifier for each activity record. */
  ActivityId id;

  /** IP Address of the user doing the action. */
  core.String ipAddress;

  /** Kind of resource this is. */
  core.String kind;

  /** Domain of source customer. */
  core.String ownerDomain;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
    if (json.containsKey("actor")) {
      actor = new ActivityActor.fromJson(json["actor"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("events")) {
      events = json["events"].map((eventsItem) => new ActivityEvents.fromJson(eventsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = new ActivityId.fromJson(json["id"]);
    }
    if (json.containsKey("ipAddress")) {
      ipAddress = json["ipAddress"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("ownerDomain")) {
      ownerDomain = json["ownerDomain"];
    }
  }

  /** Create JSON Object for Activity */
  core.Map toJson() {
    var output = new core.Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (events != null) {
      output["events"] = events.map((eventsItem) => eventsItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id.toJson();
    }
    if (ipAddress != null) {
      output["ipAddress"] = ipAddress;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (ownerDomain != null) {
      output["ownerDomain"] = ownerDomain;
    }

    return output;
  }

  /** Return String representation of Activity */
  core.String toString() => JSON.encode(this.toJson());

}

/** User doing the action. */
class ActivityActor {

  /** User or OAuth 2LO request. */
  core.String callerType;

  /** Email address of the user. */
  core.String email;

  /** For OAuth 2LO API requests, consumer_key of the requestor. */
  core.String key;

  /** Obfuscated user id of the user. */
  core.String profileId;

  /** Create new ActivityActor from JSON data */
  ActivityActor.fromJson(core.Map json) {
    if (json.containsKey("callerType")) {
      callerType = json["callerType"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
  }

  /** Create JSON Object for ActivityActor */
  core.Map toJson() {
    var output = new core.Map();

    if (callerType != null) {
      output["callerType"] = callerType;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (key != null) {
      output["key"] = key;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }

    return output;
  }

  /** Return String representation of ActivityActor */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityEvents {

  /** Name of event. */
  core.String name;

  /** Parameter value pairs for various applications. */
  core.List<ActivityEventsParameters> parameters;

  /** Type of event. */
  core.String type;

  /** Create new ActivityEvents from JSON data */
  ActivityEvents.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parameters")) {
      parameters = json["parameters"].map((parametersItem) => new ActivityEventsParameters.fromJson(parametersItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ActivityEvents */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (parameters != null) {
      output["parameters"] = parameters.map((parametersItem) => parametersItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ActivityEvents */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityEventsParameters {

  /** Boolean value of the parameter. */
  core.bool boolValue;

  /** Integral value of the parameter. */
  core.int intValue;

  /** The name of the parameter. */
  core.String name;

  /** String value of the parameter. */
  core.String value;

  /** Create new ActivityEventsParameters from JSON data */
  ActivityEventsParameters.fromJson(core.Map json) {
    if (json.containsKey("boolValue")) {
      boolValue = json["boolValue"];
    }
    if (json.containsKey("intValue")) {
      intValue = (json["intValue"] is core.String) ? core.int.parse(json["intValue"]) : json["intValue"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ActivityEventsParameters */
  core.Map toJson() {
    var output = new core.Map();

    if (boolValue != null) {
      output["boolValue"] = boolValue;
    }
    if (intValue != null) {
      output["intValue"] = intValue;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ActivityEventsParameters */
  core.String toString() => JSON.encode(this.toJson());

}

/** Unique identifier for each activity record. */
class ActivityId {

  /** Application name to which the event belongs. */
  core.String applicationName;

  /** Obfuscated customer ID of the source customer. */
  core.String customerId;

  /** Time of occurrence of the activity. */
  core.String time;

  /** Unique qualifier if multiple events have the same time. */
  core.int uniqueQualifier;

  /** Create new ActivityId from JSON data */
  ActivityId.fromJson(core.Map json) {
    if (json.containsKey("applicationName")) {
      applicationName = json["applicationName"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("time")) {
      time = json["time"];
    }
    if (json.containsKey("uniqueQualifier")) {
      uniqueQualifier = (json["uniqueQualifier"] is core.String) ? core.int.parse(json["uniqueQualifier"]) : json["uniqueQualifier"];
    }
  }

  /** Create JSON Object for ActivityId */
  core.Map toJson() {
    var output = new core.Map();

    if (applicationName != null) {
      output["applicationName"] = applicationName;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (time != null) {
      output["time"] = time;
    }
    if (uniqueQualifier != null) {
      output["uniqueQualifier"] = uniqueQualifier;
    }

    return output;
  }

  /** Return String representation of ActivityId */
  core.String toString() => JSON.encode(this.toJson());

}

/** An notification channel used to watch for resource changes. */
class Channel {

  /** The address where notifications are delivered for this channel. */
  core.String address;

  /** Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. */
  core.int expiration;

  /** A UUID or similar unique string that identifies this channel. */
  core.String id;

  /** Identifies this as a notification channel used to watch for changes to a resource. Value: the fixed string "api#channel". */
  core.String kind;

  /** Additional parameters controlling delivery channel behavior. Optional. */
  core.Map<core.String, core.String> params;

  /** A Boolean value to indicate whether payload is wanted. Optional. */
  core.bool payload;

  /** An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. */
  core.String resourceId;

  /** A version-specific identifier for the watched resource. */
  core.String resourceUri;

  /** An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. */
  core.String token;

  /** The type of delivery mechanism used for this channel. */
  core.String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("expiration")) {
      expiration = (json["expiration"] is core.String) ? core.int.parse(json["expiration"]) : json["expiration"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("params")) {
      params = _mapMap(json["params"]);
    }
    if (json.containsKey("payload")) {
      payload = json["payload"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("resourceUri")) {
      resourceUri = json["resourceUri"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (expiration != null) {
      output["expiration"] = expiration;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (params != null) {
      output["params"] = _mapMap(params);
    }
    if (payload != null) {
      output["payload"] = payload;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      output["resourceUri"] = resourceUri;
    }
    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a usage report. */
class UsageReport {

  /** The date to which the record belongs. */
  core.String date;

  /** Information about the type of the item. */
  UsageReportEntity entity;

  /** ETag of the resource. */
  core.String etag;

  /** The kind of object. */
  core.String kind;

  /** Parameter value pairs for various applications. */
  core.List<UsageReportParameters> parameters;

  /** Create new UsageReport from JSON data */
  UsageReport.fromJson(core.Map json) {
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("entity")) {
      entity = new UsageReportEntity.fromJson(json["entity"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("parameters")) {
      parameters = json["parameters"].map((parametersItem) => new UsageReportParameters.fromJson(parametersItem)).toList();
    }
  }

  /** Create JSON Object for UsageReport */
  core.Map toJson() {
    var output = new core.Map();

    if (date != null) {
      output["date"] = date;
    }
    if (entity != null) {
      output["entity"] = entity.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (parameters != null) {
      output["parameters"] = parameters.map((parametersItem) => parametersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UsageReport */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about the type of the item. */
class UsageReportEntity {

  /** Obfuscated customer id for the record. */
  core.String customerId;

  /** Obfuscated user id for the record. */
  core.String profileId;

  /** The type of item, can be a customer or user. */
  core.String type;

  /** user's email. */
  core.String userEmail;

  /** Create new UsageReportEntity from JSON data */
  UsageReportEntity.fromJson(core.Map json) {
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("userEmail")) {
      userEmail = json["userEmail"];
    }
  }

  /** Create JSON Object for UsageReportEntity */
  core.Map toJson() {
    var output = new core.Map();

    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (userEmail != null) {
      output["userEmail"] = userEmail;
    }

    return output;
  }

  /** Return String representation of UsageReportEntity */
  core.String toString() => JSON.encode(this.toJson());

}

class UsageReportParameters {

  /** Boolean value of the parameter. */
  core.bool boolValue;

  /** RFC 3339 formatted value of the parameter. */
  core.String datetimeValue;

  /** Integral value of the parameter. */
  core.int intValue;

  /** Nested message value of the parameter. */
  core.List<core.Map<core.String, core.Object>> msgValue;

  /** The name of the parameter. */
  core.String name;

  /** String value of the parameter. */
  core.String stringValue;

  /** Create new UsageReportParameters from JSON data */
  UsageReportParameters.fromJson(core.Map json) {
    if (json.containsKey("boolValue")) {
      boolValue = json["boolValue"];
    }
    if (json.containsKey("datetimeValue")) {
      datetimeValue = json["datetimeValue"];
    }
    if (json.containsKey("intValue")) {
      intValue = (json["intValue"] is core.String) ? core.int.parse(json["intValue"]) : json["intValue"];
    }
    if (json.containsKey("msgValue")) {
      msgValue = json["msgValue"].map((msgValueItem) => _mapMap(msgValueItem)).toList();
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("stringValue")) {
      stringValue = json["stringValue"];
    }
  }

  /** Create JSON Object for UsageReportParameters */
  core.Map toJson() {
    var output = new core.Map();

    if (boolValue != null) {
      output["boolValue"] = boolValue;
    }
    if (datetimeValue != null) {
      output["datetimeValue"] = datetimeValue;
    }
    if (intValue != null) {
      output["intValue"] = intValue;
    }
    if (msgValue != null) {
      output["msgValue"] = msgValue.map((msgValueItem) => _mapMap(msgValueItem)).toList();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (stringValue != null) {
      output["stringValue"] = stringValue;
    }

    return output;
  }

  /** Return String representation of UsageReportParameters */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a collection of usage reports. */
class UsageReports {

  /** ETag of the resource. */
  core.String etag;

  /** The kind of object. */
  core.String kind;

  /** Token for retrieving the next page */
  core.String nextPageToken;

  /** Various application parameter records. */
  core.List<UsageReport> usageReports;

  /** Warnings if any. */
  core.List<UsageReportsWarnings> warnings;

  /** Create new UsageReports from JSON data */
  UsageReports.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("usageReports")) {
      usageReports = json["usageReports"].map((usageReportsItem) => new UsageReport.fromJson(usageReportsItem)).toList();
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].map((warningsItem) => new UsageReportsWarnings.fromJson(warningsItem)).toList();
    }
  }

  /** Create JSON Object for UsageReports */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (usageReports != null) {
      output["usageReports"] = usageReports.map((usageReportsItem) => usageReportsItem.toJson()).toList();
    }
    if (warnings != null) {
      output["warnings"] = warnings.map((warningsItem) => warningsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UsageReports */
  core.String toString() => JSON.encode(this.toJson());

}

class UsageReportsWarnings {

  /** Machine readable code / warning type. */
  core.String code;

  /** Key-Value pairs to give detailed information on the warning. */
  core.List<UsageReportsWarningsData> data;

  /** Human readable message for the warning. */
  core.String message;

  /** Create new UsageReportsWarnings from JSON data */
  UsageReportsWarnings.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = json["data"].map((dataItem) => new UsageReportsWarningsData.fromJson(dataItem)).toList();
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for UsageReportsWarnings */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = data.map((dataItem) => dataItem.toJson()).toList();
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of UsageReportsWarnings */
  core.String toString() => JSON.encode(this.toJson());

}

class UsageReportsWarningsData {

  /** Key associated with a key-value pair to give detailed information on the warning. */
  core.String key;

  /** Value associated with a key-value pair to give detailed information on the warning. */
  core.String value;

  /** Create new UsageReportsWarningsData from JSON data */
  UsageReportsWarningsData.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for UsageReportsWarningsData */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of UsageReportsWarningsData */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
