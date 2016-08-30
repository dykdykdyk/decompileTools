package com.tencent.open.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.connect.a.a;
import com.tencent.connect.b.v;
import com.tencent.open.a.h;
import com.tencent.open.b.g;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.security.KeyStore;
import java.util.InvalidPropertiesFormatException;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

public final class HttpUtils
{
  private static int a(Context paramContext)
  {
    int i = -1;
    if (Build.VERSION.SDK_INT < 11)
      if (paramContext != null)
      {
        int j = Proxy.getPort(paramContext);
        i = j;
        if (j < 0)
          i = Proxy.getDefaultPort();
      }
    do
    {
      return i;
      return Proxy.getDefaultPort();
      paramContext = System.getProperty("http.proxyPort");
    }
    while (TextUtils.isEmpty(paramContext));
    try
    {
      i = Integer.parseInt(paramContext);
      return i;
    }
    catch (NumberFormatException paramContext)
    {
    }
    return -1;
  }

  public static int a(IOException paramIOException)
  {
    if ((paramIOException instanceof CharConversionException))
      return -20;
    if ((paramIOException instanceof MalformedInputException))
      return -21;
    if ((paramIOException instanceof UnmappableCharacterException))
      return -22;
    if ((paramIOException instanceof HttpResponseException))
      return -23;
    if ((paramIOException instanceof ClosedChannelException))
      return -24;
    if ((paramIOException instanceof ConnectionClosedException))
      return -25;
    if ((paramIOException instanceof EOFException))
      return -26;
    if ((paramIOException instanceof FileLockInterruptionException))
      return -27;
    if ((paramIOException instanceof FileNotFoundException))
      return -28;
    if ((paramIOException instanceof HttpRetryException))
      return -29;
    if ((paramIOException instanceof ConnectTimeoutException))
      return -7;
    if ((paramIOException instanceof SocketTimeoutException))
      return -8;
    if ((paramIOException instanceof InvalidPropertiesFormatException))
      return -30;
    if ((paramIOException instanceof MalformedChunkCodingException))
      return -31;
    if ((paramIOException instanceof MalformedURLException))
      return -3;
    if ((paramIOException instanceof NoHttpResponseException))
      return -32;
    if ((paramIOException instanceof InvalidClassException))
      return -33;
    if ((paramIOException instanceof InvalidObjectException))
      return -34;
    if ((paramIOException instanceof NotActiveException))
      return -35;
    if ((paramIOException instanceof NotSerializableException))
      return -36;
    if ((paramIOException instanceof OptionalDataException))
      return -37;
    if ((paramIOException instanceof StreamCorruptedException))
      return -38;
    if ((paramIOException instanceof WriteAbortedException))
      return -39;
    if ((paramIOException instanceof ProtocolException))
      return -40;
    if ((paramIOException instanceof SSLHandshakeException))
      return -41;
    if ((paramIOException instanceof SSLKeyException))
      return -42;
    if ((paramIOException instanceof SSLPeerUnverifiedException))
      return -43;
    if ((paramIOException instanceof SSLProtocolException))
      return -44;
    if ((paramIOException instanceof BindException))
      return -45;
    if ((paramIOException instanceof ConnectException))
      return -46;
    if ((paramIOException instanceof NoRouteToHostException))
      return -47;
    if ((paramIOException instanceof PortUnreachableException))
      return -48;
    if ((paramIOException instanceof SyncFailedException))
      return -49;
    if ((paramIOException instanceof UTFDataFormatException))
      return -50;
    if ((paramIOException instanceof UnknownHostException))
      return -51;
    if ((paramIOException instanceof UnknownServiceException))
      return -52;
    if ((paramIOException instanceof UnsupportedEncodingException))
      return -53;
    if ((paramIOException instanceof ZipException))
      return -54;
    return -2;
  }

  public static t a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
    throws MalformedURLException, IOException, HttpUtils.NetworkUnavailableException, HttpUtils.HttpStatusException
  {
    Object localObject1;
    if (paramContext != null)
    {
      localObject1 = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable()))
          throw new HttpUtils.NetworkUnavailableException("network unavailable");
      }
    }
    int i;
    if (paramBundle != null)
    {
      paramBundle = new Bundle(paramBundle);
      localObject1 = paramBundle.getString("appid_for_getting_config");
      paramBundle.remove("appid_for_getting_config");
      localObject1 = a(paramContext, (String)localObject1);
      paramContext = null;
      i = 0;
      if (!paramString2.equals("GET"))
        break label312;
      paramString2 = a(paramBundle);
      i = paramString2.length();
      h.a("openSDK_LOG.HttpUtils", "-->openUrl2 before url =" + paramString1);
      if (paramString1.indexOf("?") != -1)
        break label288;
      paramContext = paramString1 + "?";
      label161: h.a("openSDK_LOG.HttpUtils", "-->openUrl2 encodedParam =" + paramString2 + " -- url = " + paramContext);
      paramContext = new HttpGet(paramContext + paramString2);
      paramContext.addHeader("Accept-Encoding", "gzip");
      i += 0;
    }
    int j;
    while (true)
    {
      paramContext = ((HttpClient)localObject1).execute(paramContext);
      j = paramContext.getStatusLine().getStatusCode();
      if (j != 200)
        break label686;
      return new t(a(paramContext), i);
      paramBundle = new Bundle();
      break;
      label288: paramContext = paramString1 + "&";
      break label161;
      label312: if (paramString2.equals("POST"))
      {
        paramContext = new HttpPost(paramString1);
        paramContext.addHeader("Accept-Encoding", "gzip");
        paramString1 = new Bundle();
        Object localObject2 = paramBundle.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          Object localObject3 = paramBundle.get(str);
          if ((localObject3 instanceof byte[]))
            paramString1.putByteArray(str, (byte[])localObject3);
        }
        if (!paramBundle.containsKey("method"))
          paramBundle.putString("method", paramString2);
        paramContext.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        paramContext.setHeader("Connection", "Keep-Alive");
        paramString2 = new ByteArrayOutputStream();
        paramString2.write(s.h("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
        paramString2.write(s.h(a(paramBundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
        if (!paramString1.isEmpty())
        {
          int k = paramString1.size();
          paramString2.write(s.h("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
          paramBundle = paramString1.keySet().iterator();
          i = -1;
          while (paramBundle.hasNext())
          {
            localObject2 = (String)paramBundle.next();
            j = i + 1;
            paramString2.write(s.h("Content-Disposition: form-data; name=\"" + (String)localObject2 + "\"; filename=\"" + (String)localObject2 + "\"\r\n"));
            paramString2.write(s.h("Content-Type: content/unknown\r\n\r\n"));
            localObject2 = paramString1.getByteArray((String)localObject2);
            if (localObject2 != null)
              paramString2.write((byte[])localObject2);
            i = j;
            if (j < k - 1)
            {
              paramString2.write(s.h("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
              i = j;
            }
          }
        }
        paramString2.write(s.h("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
        paramString1 = paramString2.toByteArray();
        i = paramString1.length + 0;
        paramString2.close();
        paramContext.setEntity(new ByteArrayEntity(paramString1));
      }
    }
    label686: throw new HttpUtils.HttpStatusException("http status code error:" + j);
  }

  public static String a(Bundle paramBundle)
  {
    if (paramBundle == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = paramBundle.get((String)localObject1);
      if (((localObject2 instanceof String)) || ((localObject2 instanceof String[])))
        if ((localObject2 instanceof String[]))
        {
          int j;
          int k;
          if (i != 0)
          {
            j = 0;
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=");
            localObject1 = paramBundle.getStringArray((String)localObject1);
            i = j;
            if (localObject1 != null)
            {
              k = 0;
              label137: i = j;
              if (k < localObject1.length)
                if (k == 0)
                  localStringBuilder.append(URLEncoder.encode(localObject1[k]));
            }
          }
          else
          {
            while (true)
            {
              k += 1;
              break label137;
              localStringBuilder.append("&");
              j = i;
              break;
              localStringBuilder.append(URLEncoder.encode("," + localObject1[k]));
            }
          }
        }
        else
        {
          if (i != 0)
            i = 0;
          while (true)
          {
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=" + URLEncoder.encode(paramBundle.getString((String)localObject1)));
            break;
            localStringBuilder.append("&");
          }
        }
    }
    return localStringBuilder.toString();
  }

  private static String a(Bundle paramBundle, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramBundle.size();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = -1;
    while (true)
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        i += 1;
        Object localObject = paramBundle.get(str);
        if ((localObject instanceof String))
        {
          localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n" + (String)localObject);
          if (i < j - 1)
            localStringBuilder.append("\r\n--" + paramString + "\r\n");
        }
      }
      else
      {
        return localStringBuilder.toString();
      }
  }

  private static String a(HttpResponse paramHttpResponse)
    throws IllegalStateException, IOException
  {
    Object localObject = paramHttpResponse.getEntity().getContent();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramHttpResponse = paramHttpResponse.getFirstHeader("Content-Encoding");
    if ((paramHttpResponse != null) && (paramHttpResponse.getValue().toLowerCase().indexOf("gzip") >= 0));
    for (paramHttpResponse = new GZIPInputStream((InputStream)localObject); ; paramHttpResponse = (HttpResponse)localObject)
    {
      localObject = new byte[512];
      while (true)
      {
        int i = paramHttpResponse.read((byte[])localObject);
        if (i == -1)
          break;
        localByteArrayOutputStream.write((byte[])localObject, 0, i);
      }
      localObject = new String(localByteArrayOutputStream.toByteArray(), "UTF-8");
      paramHttpResponse.close();
      return localObject;
    }
  }

  public static HttpClient a(Context paramContext, String paramString)
  {
    Object localObject1 = new SchemeRegistry();
    ((SchemeRegistry)localObject1).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    if (Build.VERSION.SDK_INT < 16);
    while (true)
    {
      try
      {
        Object localObject2 = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore)localObject2).load(null, null);
        localObject2 = new i((KeyStore)localObject2);
        ((SSLSocketFactory)localObject2).setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        ((SchemeRegistry)localObject1).register(new Scheme("https", (SocketFactory)localObject2, 443));
        localObject2 = new BasicHttpParams();
        if (paramContext == null)
          break label468;
        paramString = l.a(paramContext, paramString);
        if (paramString == null)
          break label461;
        j = paramString.a("Common_HttpConnectionTimeout");
        i = paramString.a("Common_SocketConnectionTimeout");
        int k = j;
        if (j == 0)
          k = 15000;
        j = i;
        if (i == 0)
          j = 30000;
        HttpConnectionParams.setConnectionTimeout((HttpParams)localObject2, k);
        HttpConnectionParams.setSoTimeout((HttpParams)localObject2, j);
        HttpProtocolParams.setVersion((HttpParams)localObject2, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset((HttpParams)localObject2, "UTF-8");
        HttpProtocolParams.setUserAgent((HttpParams)localObject2, "AndroidSDK_" + Build.VERSION.SDK + "_" + Build.DEVICE + "_" + Build.VERSION.RELEASE);
        localObject2 = new DefaultHttpClient(new ThreadSafeClientConnManager((HttpParams)localObject2, (SchemeRegistry)localObject1), (HttpParams)localObject2);
        if (paramContext == null)
          break label456;
        paramString = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramString == null)
          break label456;
        paramString = paramString.getActiveNetworkInfo();
        if ((paramString == null) || (paramString.getType() != 0))
          break label456;
        if (Build.VERSION.SDK_INT >= 11)
          break label446;
        if (paramContext == null)
          break label439;
        localObject1 = Proxy.getHost(paramContext);
        paramString = (String)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1))
          paramString = Proxy.getDefaultHost();
        i = a(paramContext);
        if ((TextUtils.isEmpty(paramString)) || (i < 0))
          break label456;
        paramContext = new k(paramString, i, (byte)0);
        if (paramContext != null)
        {
          paramContext = new HttpHost(paramContext.a, paramContext.b);
          ((HttpClient)localObject2).getParams().setParameter("http.route.default-proxy", paramContext);
        }
        return localObject2;
      }
      catch (Exception localException)
      {
        ((SchemeRegistry)localObject1).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        continue;
      }
      ((SchemeRegistry)localObject1).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
      continue;
      label439: paramString = Proxy.getDefaultHost();
      continue;
      label446: paramString = System.getProperty("http.proxyHost");
      continue;
      label456: paramContext = null;
      continue;
      label461: int i = 0;
      int j = 0;
      continue;
      label468: paramString = null;
    }
  }

  public static JSONObject a(v paramv, Context paramContext, String paramString1, Bundle paramBundle, String paramString2)
    throws IOException, JSONException, HttpUtils.NetworkUnavailableException, HttpUtils.HttpStatusException
  {
    h.a("openSDK_LOG.HttpUtils", "OpenApi request");
    String str2;
    String str1;
    if (!paramString1.toLowerCase().startsWith("http"))
    {
      str2 = n.a().a(paramContext, "https://openmobile.qq.com/") + paramString1;
      str1 = n.a().a(paramContext, "https://openmobile.qq.com/") + paramString1;
    }
    while (true)
    {
      if ((paramString1.indexOf("add_share") >= 0) || (paramString1.indexOf("upload_pic") >= 0) || (paramString1.indexOf("add_topic") >= 0) || (paramString1.indexOf("set_user_face") >= 0) || (paramString1.indexOf("add_t") >= 0) || (paramString1.indexOf("add_pic_t") >= 0) || (paramString1.indexOf("add_pic_url") >= 0) || (paramString1.indexOf("add_video") >= 0))
        a.a(paramContext, paramv, "requireApi", new String[] { paramString1 });
      long l2 = SystemClock.elapsedRealtime();
      int j = l.a(paramContext, paramv.a).a("Common_HttpRetryCount");
      h.a("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + j + "   appid:" + paramv.a + "     url:" + str1);
      if (j == 0)
        j = 3;
      while (true)
      {
        h.a("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + j + "   appid:" + paramv.a + "     url:" + str1);
        paramv = null;
        int k = 0;
        int m = k + 1;
        try
        {
          t localt = a(paramContext, str2, paramString2, paramBundle);
          paramString1 = s.d(localt.a);
          paramv = paramString1;
          try
          {
            i = paramv.getInt("ret");
            l3 = localt.b;
            l4 = localt.c;
            l1 = l2;
            g.a().a(str1, l1, l3, l4, i);
            return paramv;
          }
          catch (JSONException paramString1)
          {
            while (true)
              i = -4;
          }
          catch (ConnectTimeoutException paramString1)
          {
            while (true)
            {
              paramString1.printStackTrace();
              if (m >= j)
                break label440;
              l1 = SystemClock.elapsedRealtime();
              i = -7;
              paramString1 = paramv;
              l2 = l1;
              k = m;
              paramv = paramString1;
              if (m < j)
                break;
              long l3 = 0L;
              paramv = paramString1;
              long l4 = 0L;
            }
            g.a().a(str1, l2, 0L, 0L, -7);
            throw paramString1;
          }
          catch (SocketTimeoutException paramString1)
          {
            while (true)
            {
              label390: label440: label457: paramString1.printStackTrace();
              if (m >= j)
                break;
              long l1 = SystemClock.elapsedRealtime();
              i = -8;
              paramString1 = paramv;
            }
            g.a().a(str1, l2, 0L, 0L, -8);
            throw paramString1;
          }
        }
        catch (HttpUtils.HttpStatusException paramv)
        {
          paramv.printStackTrace();
          paramContext = paramv.getMessage();
          try
          {
            i = Integer.parseInt(paramContext.replace("http status code error:", ""));
            g.a().a(str1, l2, 0L, 0L, i);
            throw paramv;
          }
          catch (Exception paramContext)
          {
            while (true)
            {
              paramContext.printStackTrace();
              i = -9;
            }
          }
        }
        catch (HttpUtils.NetworkUnavailableException paramv)
        {
          paramv.printStackTrace();
          throw paramv;
        }
        catch (MalformedURLException paramv)
        {
          paramv.printStackTrace();
          g.a().a(str1, l2, 0L, 0L, -3);
          throw paramv;
        }
        catch (IOException paramv)
        {
          paramv.printStackTrace();
          int i = a(paramv);
          g.a().a(str1, l2, 0L, 0L, i);
          throw paramv;
        }
        catch (JSONException paramv)
        {
          paramv.printStackTrace();
          g.a().a(str1, l2, 0L, 0L, -4);
          throw paramv;
        }
        catch (SocketTimeoutException paramString1)
        {
          break label457;
        }
        catch (ConnectTimeoutException paramString1)
        {
          break label390;
        }
      }
      str1 = paramString1;
      str2 = paramString1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.HttpUtils
 * JD-Core Version:    0.6.2
 */