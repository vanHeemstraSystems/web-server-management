# NGinX Proxy Manager

Based on "NGinX Proxy Manager" at https://nginxproxymanager.com/

## How to setup the Nginx Proxy Manager

Based on "How to setup the Nginx Proxy Manager" at https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-the-Nginx-Proxy-Manager-example

## Logging In

When your docker container is running, connect to it on port 81 for the admin interface. Sometimes this can take a little bit because of the entropy of keys.

```
http://127.0.0.1:81
```

Default Admin User:

```
Email:    admin@example.com
Password: changeme
```

Immediately after logging in with this default user you will be asked to modify your details and change your password.

## How to setup a reverse proxy with the Proxy Manager

Based on "How to setup the Nginx Proxy Manager" at https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-the-Nginx-Proxy-Manager-example

To setup a reverse proxy with the Nginx Proxy Manager, simply click on the ‘Proxy Hosts’ link on the admin console’s dashboard and click the ‘Add Proxy Hosts’ button.

In the ‘Edit Proxy Host’ form that appears, simply fill out the domain name associated with the reverse proxy request, the IP address and the port number of the backend server to handle the request and click ‘Save.’

For example, we want the service "Main" to be proxied. Therefore we enter the following configuration:

- Domain Names: **localhost**

- Scheme: **http**

- Forward Hostname / IP: **<Hostname e.g. 'microservices.mycompany.com'>**

- Forward Port: **3010**

- Cache Assets: **Yes**

- Block Common Exploits: **Yes**

- Websocket Support: **No**

- Access List: **Publicly Accessible**

As soon as the save button is clicked, the Nginx Proxy Manager activates the reverse proxy.

## Nginx Proxy Manager custom location settings

Based on "How to setup the Nginx Proxy Manager" at https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-the-Nginx-Proxy-Manager-example

The Nginx Proxy Manager also allows for custom locations to be easily configured.

For example, sub-folder forwarding can be easily setup by mapping a location’s subfolder to a path on the backend server.

## Simple Nginx Proxy Manager Tutorial

Based on "How to setup the Nginx Proxy Manager" at https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-the-Nginx-Proxy-Manager-example

This Nginx Proxy Manager tutorial shows you the easiest way to get up and running with the Proxy Manager, along with the steps to take to quickly setup Nginx as a reverse proxy. However, the features demonstrated here are merely a small subset of the Nginx Proxy Manager’s capabilities.

Nginx Proxy Manager features

Other Nginx Proxy Manager features include:

- Virtual host management
- Ability to cache assets
- Blocking of common exploits
- Websocket support
- Access list configuration
- SSL and HTTP/2 support
- Host redirection with HTTP code configuration
- TCP and UDP stream support
- User management
- Nginx Proxy Manager log auditing

Nginx is an extremely powerful web server and reverse proxy. The Nginx Proxy Manager is full-featured tool that helps to lower the barriers to entry for users who are interested in learning and working with the Nginx server.