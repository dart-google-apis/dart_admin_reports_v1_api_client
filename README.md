# google_admin_reports_v1_api

### Description

Auto-generated client library for accessing the admin reports_v1 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Admin Reports API - admin reports_v1

Allows the administrators of Google Apps customers to fetch reports about the usage, collaboration, security and risk for their users.

Official API documentation: https://developers.google.com/admin-sdk/reports/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_admin_reports_v1_api: '>=0.4.7'
```

For web applications:

```
  import "package:google_admin_reports_v1_api/admin_reports_v1_api_browser.dart" as adminclient;
```

For console application:

```
  import "package:google_admin_reports_v1_api/admin_reports_v1_api_console.dart" as adminclient;
```

Working without authentication the following constructor can be called:

```
  var admin = new adminclient.Admin();
```

To use authentication create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var admin = new adminclient.Admin(auth);
```

### Licenses

```
Copyright (c) 2013-2014 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
