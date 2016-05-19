# What are some common HTTP status codes?
* **200 OK**: Successful request
* **300 Multiple Choices**: Request resource has multiple choices that cannot be resolved into one.  Example: there are multiple index.html pages depending on the language wanted.
* **301 Moved Permanently**: The requested resource has been assigned a new permanent URI and future references to this resource will use one of the returned URIs.
* **302 Found**: Requested resource temporarily resides under a different URI.  The client should continue to use the Request-URI for future requests.
* **304 Not Modified**: 
* **307 Temporary Redirect**: The requested resource temporarily resides under a different URI.  The redirection may be altered on occasion, the client should continue to use the Request-URI for future requests.  
* **400 Bad Request**: The request could not be understood by the server due to malformed syntax.  The client should not repeat the request without modifications. 
* **401 Unauthorized**: The request requires user authentication.  The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
* **403 Forbidden**: The server understood the request, but is refusing to fulfill it.  Authorization will not help and the request should not be repeated.
* **404 Not Found**: The server has not found anything matching the Request-URI.  No indication is given of whether the condition is temporary or permanent.
* **410 Gone**: The requested resource is no longer available at the server no forwarding address is known.  The condition is expected to be considered permanent.  Clients with link editing capabilities should delete references to Request-URI after user approval.  If the server does not know, or has no facility to determine whether or not the condition is permanent, the status code 404 Not Found should be used instead.  This response is cacheable unless indicated otherwise.
* **500 Internal Server Error**: The server encountered an unexpected condition which prevented it from fulfilling the request.
* **501 Not Implemented**: The server does not support the functionality required to fulfill the request.  This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
* **503 Service Unavailable**: The web server is unable to handle your HTTP request at the time.  There are many different reasons for why this may occur; here are the most common:
  *server crash
  *server maintenance
  *server overload
  *server maliciously being attacked
  *a website has used up its allotted bandwidth
  *server may be forbidden to return the requested document
This is usually a temporary condition.  Since there is a return code, part of the server is working.  The web people have made the server return this code until they fix the problem.
If you do not get service back soon, contact your web host as they should know the best.  Some web hosts have server status pages you can check.
* **550 Permission denied**: The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting.  You may be trying to upload to the wrong directory or trying to delete a file.

# What is the difference between a GET request and a POST request? When might each be used?


# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?