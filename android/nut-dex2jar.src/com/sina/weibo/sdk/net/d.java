package com.sina.weibo.sdk.net;

import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

public abstract class d
  implements RedirectHandler
{
  private static final String c = d.class.getCanonicalName();
  int a;
  String b;
  private String d;

  public URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    throws ProtocolException
  {
    i.a(c, "CustomRedirectHandler getLocationURI getRedirectUrl : " + this.d);
    if (!TextUtils.isEmpty(this.d))
      return URI.create(this.d);
    return null;
  }

  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    if ((i == 301) || (i == 302))
    {
      this.d = paramHttpResponse.getFirstHeader("Location").getValue();
      if ((!TextUtils.isEmpty(this.d)) && (this.a < 15))
      {
        this.a += 1;
        return true;
      }
    }
    else if (i == 200)
    {
      this.b = this.d;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.d
 * JD-Core Version:    0.6.2
 */