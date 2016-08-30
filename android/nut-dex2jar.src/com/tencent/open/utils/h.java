package com.tencent.open.utils;

import android.content.Context;
import android.os.Bundle;
import com.tencent.connect.b.v;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;

public final class h extends Thread
{
  public h(v paramv, Context paramContext, String paramString1, Bundle paramBundle, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      HttpUtils.a(this.a, this.b, this.c, this.d, this.e);
      if (this.f != null)
        com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi onComplete");
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync MalformedURLException", localMalformedURLException);
      return;
    }
    catch (ConnectTimeoutException localConnectTimeoutException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onConnectTimeoutException", localConnectTimeoutException);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onSocketTimeoutException", localSocketTimeoutException);
      return;
    }
    catch (HttpUtils.NetworkUnavailableException localNetworkUnavailableException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onNetworkUnavailableException", localNetworkUnavailableException);
      return;
    }
    catch (HttpUtils.HttpStatusException localHttpStatusException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onHttpStatusException", localHttpStatusException);
      return;
    }
    catch (IOException localIOException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync IOException", localIOException);
      return;
    }
    catch (JSONException localJSONException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync JSONException", localJSONException);
      return;
    }
    catch (Exception localException)
    {
      while (this.f == null);
      com.tencent.open.a.h.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onUnknowException", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.h
 * JD-Core Version:    0.6.2
 */