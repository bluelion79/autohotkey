import java.net.*;

class URLParser {
    public static void main(String[] args) {
        try {
            URL url = new URL("https://www.website.com:80/pages/index.html?&q=test#section");

            System.out.println(url.toString() + "\n");
            System.out.println("Protocol: " + url.getProtocol());
            System.out.println("Host: " + url.getHost());
            System.out.println("Port: " + url.getPort());
            System.out.println("Path: " + url.getPath());
            System.out.println("File: " + url.getFile());
            System.out.println("Query: " + url.getQuery());
            System.out.println("Ref: " + url.getRef() + "\n");

        } catch (MalformedURLException e) {
        }
    }
}
