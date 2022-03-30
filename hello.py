#!/usr/bin/python3

def app(environ, start_response):
    body = environ['QUERY_STRING'].replace("&","\n")
    e_body = body.encode("utf-8")
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(body)))
    ]
    start_response(status, response_headers)
    return [e_body]
