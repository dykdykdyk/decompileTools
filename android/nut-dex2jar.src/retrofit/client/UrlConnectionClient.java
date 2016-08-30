package retrofit.client;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

public class UrlConnectionClient
  implements Client
{
  private static final int CHUNK_SIZE = 4096;

  public Response execute(Request paramRequest)
    throws IOException
  {
    HttpURLConnection localHttpURLConnection = openConnection(paramRequest);
    prepareRequest(localHttpURLConnection, paramRequest);
    return readResponse(localHttpURLConnection);
  }

  public HttpURLConnection openConnection(Request paramRequest)
    throws IOException
  {
    paramRequest = (HttpURLConnection)new URL(paramRequest.getUrl()).openConnection();
    paramRequest.setConnectTimeout(15000);
    paramRequest.setReadTimeout(20000);
    return paramRequest;
  }

  void prepareRequest(HttpURLConnection paramHttpURLConnection, Request paramRequest)
    throws IOException
  {
    paramHttpURLConnection.setRequestMethod(paramRequest.getMethod());
    paramHttpURLConnection.setDoInput(true);
    Iterator localIterator = paramRequest.getHeaders().iterator();
    while (localIterator.hasNext())
    {
      Header localHeader = (Header)localIterator.next();
      paramHttpURLConnection.addRequestProperty(localHeader.getName(), localHeader.getValue());
    }
    paramRequest = paramRequest.getBody();
    if (paramRequest != null)
    {
      paramHttpURLConnection.setDoOutput(true);
      paramHttpURLConnection.addRequestProperty("Content-Type", paramRequest.mimeType());
      long l = paramRequest.length();
      if (l == -1L)
        break label131;
      paramHttpURLConnection.setFixedLengthStreamingMode((int)l);
      paramHttpURLConnection.addRequestProperty("Content-Length", String.valueOf(l));
    }
    while (true)
    {
      paramRequest.writeTo(paramHttpURLConnection.getOutputStream());
      return;
      label131: paramHttpURLConnection.setChunkedStreamingMode(4096);
    }
  }

  Response readResponse(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    int i = paramHttpURLConnection.getResponseCode();
    String str1 = paramHttpURLConnection.getResponseMessage();
    if (str1 == null)
      str1 = "";
    while (true)
    {
      ArrayList localArrayList = new ArrayList();
      Object localObject1 = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
        str2 = (String)((Map.Entry)localObject2).getKey();
        localObject2 = ((List)((Map.Entry)localObject2).getValue()).iterator();
        while (((Iterator)localObject2).hasNext())
          localArrayList.add(new Header(str2, (String)((Iterator)localObject2).next()));
      }
      String str2 = paramHttpURLConnection.getContentType();
      int j = paramHttpURLConnection.getContentLength();
      if (i >= 400);
      for (localObject1 = paramHttpURLConnection.getErrorStream(); ; localObject1 = paramHttpURLConnection.getInputStream())
      {
        localObject1 = new UrlConnectionClient.TypedInputStream(str2, j, (InputStream)localObject1, null);
        return new Response(paramHttpURLConnection.getURL().toString(), i, str1, localArrayList, (TypedInput)localObject1);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.client.UrlConnectionClient
 * JD-Core Version:    0.6.2
 */