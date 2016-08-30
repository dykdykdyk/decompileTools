package retrofit.client;

import java.net.URI;
import java.util.Iterator;
import java.util.List;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.message.BasicHeader;

class ApacheClient$GenericEntityHttpRequest extends HttpEntityEnclosingRequestBase
{
  private final String method;

  ApacheClient$GenericEntityHttpRequest(Request paramRequest)
  {
    this.method = paramRequest.getMethod();
    setURI(URI.create(paramRequest.getUrl()));
    Iterator localIterator = paramRequest.getHeaders().iterator();
    while (localIterator.hasNext())
    {
      Header localHeader = (Header)localIterator.next();
      addHeader(new BasicHeader(localHeader.getName(), localHeader.getValue()));
    }
    setEntity(new ApacheClient.TypedOutputEntity(paramRequest.getBody()));
  }

  public String getMethod()
  {
    return this.method;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.ApacheClient.GenericEntityHttpRequest
 * JD-Core Version:    0.6.2
 */