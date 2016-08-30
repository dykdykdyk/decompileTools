package retrofit.client;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import retrofit.mime.TypedByteArray;

public class ApacheClient
  implements Client
{
  private final HttpClient client;

  public ApacheClient()
  {
    this(createDefaultClient());
  }

  public ApacheClient(HttpClient paramHttpClient)
  {
    this.client = paramHttpClient;
  }

  private static HttpClient createDefaultClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 15000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    return new DefaultHttpClient(localBasicHttpParams);
  }

  static HttpUriRequest createRequest(Request paramRequest)
  {
    if (paramRequest.getBody() != null)
      return new ApacheClient.GenericEntityHttpRequest(paramRequest);
    return new ApacheClient.GenericHttpRequest(paramRequest);
  }

  static Response parseResponse(String paramString, HttpResponse paramHttpResponse)
    throws IOException
  {
    Object localObject1 = paramHttpResponse.getStatusLine();
    int j = ((StatusLine)localObject1).getStatusCode();
    String str2 = ((StatusLine)localObject1).getReasonPhrase();
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = paramHttpResponse.getAllHeaders();
    int k = localObject2.length;
    int i = 0;
    localObject1 = "application/octet-stream";
    while (i < k)
    {
      str1 = localObject2[i];
      String str3 = str1.getName();
      str1 = str1.getValue();
      if ("Content-Type".equalsIgnoreCase(str3))
        localObject1 = str1;
      localArrayList.add(new Header(str3, str1));
      i += 1;
    }
    String str1 = null;
    localObject2 = paramHttpResponse.getEntity();
    paramHttpResponse = str1;
    if (localObject2 != null)
      paramHttpResponse = new TypedByteArray((String)localObject1, EntityUtils.toByteArray((HttpEntity)localObject2));
    return new Response(paramString, j, str2, localArrayList, paramHttpResponse);
  }

  protected HttpResponse execute(HttpClient paramHttpClient, HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    return paramHttpClient.execute(paramHttpUriRequest);
  }

  public Response execute(Request paramRequest)
    throws IOException
  {
    Object localObject = createRequest(paramRequest);
    localObject = execute(this.client, (HttpUriRequest)localObject);
    return parseResponse(paramRequest.getUrl(), (HttpResponse)localObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.ApacheClient
 * JD-Core Version:    0.6.2
 */