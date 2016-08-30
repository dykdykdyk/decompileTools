package com.twitter.sdk.android.core;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import retrofit.client.Client;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.client.Response;
import retrofit.mime.FormUrlEncodedTypedOutput;
import retrofit.mime.TypedOutput;

public final class e extends g
{
  private final q c;
  private final TwitterAuthConfig d;

  public e(TwitterAuthConfig paramTwitterAuthConfig, q paramq, SSLSocketFactory paramSSLSocketFactory)
  {
    super(paramSSLSocketFactory);
    this.d = paramTwitterAuthConfig;
    this.c = paramq;
  }

  private List<Header> a(Request paramRequest)
    throws IOException
  {
    com.twitter.sdk.android.core.internal.g localg = new com.twitter.sdk.android.core.internal.g(paramRequest.getMethod(), paramRequest.getUrl(), this.d, this.c, b(paramRequest));
    ArrayList localArrayList = new ArrayList(paramRequest.getHeaders());
    Object localObject = new HashMap();
    ((HashMap)localObject).putAll(Collections.emptyMap());
    if (!TextUtils.isEmpty(localg.f))
      ((HashMap)localObject).put("User-Agent", localg.f);
    if ((localg.e != null) && (localg.e.a != null));
    for (paramRequest = localg.e.a.a(localg.d, localg.a, localg.b, localg.c); ; paramRequest = Collections.emptyMap())
    {
      ((HashMap)localObject).putAll(paramRequest);
      paramRequest = ((Map)localObject).entrySet().iterator();
      while (paramRequest.hasNext())
      {
        localObject = (Map.Entry)paramRequest.next();
        localArrayList.add(new Header((String)((Map.Entry)localObject).getKey(), (String)((Map.Entry)localObject).getValue()));
      }
    }
    return localArrayList;
  }

  private static Map<String, String> b(Request paramRequest)
    throws IOException
  {
    TreeMap localTreeMap = new TreeMap();
    if ("POST".equals(paramRequest.getMethod().toUpperCase(Locale.US)))
    {
      paramRequest = paramRequest.getBody();
      if ((paramRequest instanceof FormUrlEncodedTypedOutput))
      {
        Object localObject = new ByteArrayOutputStream();
        paramRequest.writeTo((OutputStream)localObject);
        paramRequest = ((ByteArrayOutputStream)localObject).toString("UTF-8");
        if (paramRequest.length() > 0)
        {
          paramRequest = URLEncodedUtils.parse(URI.create("https://twitter.com/?" + paramRequest), "UTF-8").iterator();
          while (paramRequest.hasNext())
          {
            localObject = (NameValuePair)paramRequest.next();
            localTreeMap.put(((NameValuePair)localObject).getName(), ((NameValuePair)localObject).getValue());
          }
        }
      }
    }
    return localTreeMap;
  }

  public final Response execute(Request paramRequest)
    throws IOException
  {
    paramRequest = new Request(paramRequest.getMethod(), paramRequest.getUrl(), a(paramRequest), paramRequest.getBody());
    return this.a.execute(paramRequest);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.e
 * JD-Core Version:    0.6.2
 */