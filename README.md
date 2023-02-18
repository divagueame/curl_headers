## curly_headers

curlyy_headers is a bash script for making HTTP requests with curly and displaying the response headers. It is useful for debugging issues related to CORS, cookies, and other HTTP headers.
## Usage

To use curlyy_headers, run the following command:

``
./curly_headers https://www.example.com/ http://localhost:3000/
``

Where https://www.example.com/ is the URL of the target request and http://localhost:3000/ is the Referer header to be included in the request. The Referer header is optional and can be omitted if not required.

Here is an example output of curly_headers:

``
HTTP/2 200 
server: nginx
date: Thu, 24 Feb 2023 10:30:00 GMT
content-type: text/html; charset=UTF-8
vary: Accept-Encoding
x-powered-by: PHP/7.4.26
access-control-allow-origin: *
access-control-allow-headers: Content-Type, Authorization
access-control-allow-methods: GET, POST, PUT, DELETE, OPTIONS
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
referrer-policy: no-referrer-when-downgrade
expires: Thu, 19 Nov 1981 08:52:00 GMT
cache-control: no-store, no-cache, must-revalidate
pragma: no-cache
content-language: en-US
``

## Usage Examples
Example 1: Default values

If you simply run the script without any arguments, it will use the default URL and Referer values:


``
$ ./curly_headers.sh
``

This will output the headers of the default URL (https://www.example.com) with a Referer of http://localhost:3000/, and save the output to output.txt.
Example 2: Specify URL and Referer

You can specify the URL and Referer values as command line arguments:
``
$ ./curly_headers.sh https://www.google.com/ http://localhost:3000/
``
This will output the headers of https://www.google.com/ with a Referer of http://localhost:3000/, and save the output to output.txt.
Example 3: Specify only URL

If you only specify the URL as a command line argument, the default Referer value will be used:
``
$ ./curly_headers.sh https://www.reddit.com/
``

This will output the headers of https://www.reddit.com/ with a Referer of http://localhost:3000/, and save the output to output.txt.



## Installation

To install curly_headers, download the script to your local machine and give it executable permissions with the following command:

``
chmod +x curly_headers
``

## Author
curly_headers was created by Martin Arce in February 2023.

## License
curly_headers is released under the MIT License. See the LICENSE file for details.