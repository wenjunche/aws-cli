# filter events
{ $.path = "/api/*" }

{ $.statusCode > 200 }

{ $.loglevel = "ERROR" }

{ $.message != "request *" }

{ $.session.userInfo.groups[0]  = "bfa8*" }
{ $.session.userInfo.groups[*]  = "bfa8*" }
{ $.['cluster.name'] = "c" }

{ $.id IS NULL }

# EXISTS currently aren't supported.
{ $.id NOT EXISTS }

# regexp
{ $.message= %handling.*% }

# && and ||
{ ($.statusCode > 200)  && ($.path = "/api/*")  }