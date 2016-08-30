package retrofit.appengine;

import com.google.appengine.api.urlfetch.HTTPHeader;
import com.google.appengine.api.urlfetch.HTTPMethod;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import retrofit.client.Client;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.client.Response;
import retrofit.mime.TypedByteArray;
import retrofit.mime.TypedOutput;

public class UrlFetchClient
  implements Client
{
  private final URLFetchService urlFetchService;

  public UrlFetchClient()
  {
    this(URLFetchServiceFactory.getURLFetchService());
  }

  public UrlFetchClient(URLFetchService paramURLFetchService)
  {
    this.urlFetchService = paramURLFetchService;
  }

  static HTTPRequest createRequest(Request paramRequest)
    throws IOException
  {
    Object localObject1 = getHttpMethod(paramRequest.getMethod());
    localObject1 = new HTTPRequest(new URL(paramRequest.getUrl()), (HTTPMethod)localObject1);
    Object localObject2 = paramRequest.getHeaders().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Header localHeader = (Header)((Iterator)localObject2).next();
      ((HTTPRequest)localObject1).addHeader(new HTTPHeader(localHeader.getName(), localHeader.getValue()));
    }
    paramRequest = paramRequest.getBody();
    if (paramRequest != null)
    {
      localObject2 = new ByteArrayOutputStream();
      paramRequest.writeTo((OutputStream)localObject2);
      ((HTTPRequest)localObject1).setPayload(((ByteArrayOutputStream)localObject2).toByteArray());
    }
    return localObject1;
  }

  private static HTTPMethod getHttpMethod(String paramString)
  {
    if ("GET".equals(paramString))
      return HTTPMethod.GET;
    if ("POST".equals(paramString))
      return HTTPMethod.POST;
    if ("PATCH".equals(paramString))
      return HTTPMethod.PATCH;
    if ("PUT".equals(paramString))
      return HTTPMethod.PUT;
    if ("DELETE".equals(paramString))
      return HTTPMethod.DELETE;
    if ("HEAD".equals(paramString))
      return HTTPMethod.HEAD;
    throw new IllegalStateException("Illegal HTTP method: " + paramString);
  }

  static Response parseResponse(HTTPResponse paramHTTPResponse)
  {
    String str1 = paramHTTPResponse.getFinalUrl().toString();
    int i = paramHTTPResponse.getResponseCode();
    Object localObject2 = paramHTTPResponse.getHeaders();
    ArrayList localArrayList = new ArrayList(((List)localObject2).size());
    Object localObject1 = "application/octet-stream";
    Iterator localIterator = ((List)localObject2).iterator();
    String str2;
    if (localIterator.hasNext())
    {
      localObject2 = (HTTPHeader)localIterator.next();
      str2 = ((HTTPHeader)localObject2).getName();
      localObject2 = ((HTTPHeader)localObject2).getValue();
      if (!"Content-Type".equalsIgnoreCase(str2))
        break label150;
      localObject1 = localObject2;
    }
    label150: 
    while (true)
    {
      localArrayList.add(new Header(str2, (String)localObject2));
      break;
      paramHTTPResponse = paramHTTPResponse.getContent();
      if (paramHTTPResponse != null);
      for (paramHTTPResponse = new TypedByteArray((String)localObject1, paramHTTPResponse); ; paramHTTPResponse = null)
        return new Response(str1, i, "", localArrayList, paramHTTPResponse);
    }
  }

  protected HTTPResponse execute(URLFetchService paramURLFetchService, HTTPRequest paramHTTPRequest)
    throws IOException
  {
    return paramURLFetchService.fetch(paramHTTPRequest);
  }

  public Response execute(Request paramRequest)
    throws IOException
  {
    paramRequest = createRequest(paramRequest);
    return parseResponse(execute(this.urlFetchService, paramRequest));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.appengine.UrlFetchClient
 * JD-Core Version:    0.6.2
 */