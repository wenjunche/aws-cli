# Checking HSTS header
# https://www.namecheap.com/support/knowledgebase/article.aspx/9711/38/how-to-check-if-hsts-is-enabled/
# strict-transport-security: max-age=63072000; includeSubDomains; preload
curl -s -D- https://example.com


# upload multi-part files
curl [URL] -F file1=@filename1 -F file2=@filename2