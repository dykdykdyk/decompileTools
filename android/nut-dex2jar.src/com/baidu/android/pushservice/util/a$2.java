package com.baidu.android.pushservice.util;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.c.b;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.j.c;
import java.net.URI;
import java.net.URL;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

final class a$2
  implements Runnable
{
  a$2(Context paramContext, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    Object localObject3 = new DefaultHttpClient();
    ((HttpClient)localObject3).getParams().setParameter("http.connection.timeout", Integer.valueOf(10000));
    ((HttpClient)localObject3).getParams().setParameter("http.socket.timeout", Integer.valueOf(10000));
    Object localObject1 = a.b(this.a, this.b, this.c);
    if (TextUtils.isEmpty((CharSequence)localObject1));
    while (true)
    {
      return;
      try
      {
        localObject1 = new URL((String)localObject1);
        localObject1 = new URI(((URL)localObject1).getProtocol(), ((URL)localObject1).getHost(), ((URL)localObject1).getPath(), ((URL)localObject1).getQuery(), null);
        if (localObject1 != null)
        {
          com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "<<<  pushACKUrl  =  :  " + ((URI)localObject1).toString());
          localObject1 = new HttpPost((URI)localObject1);
          ((HttpPost)localObject1).addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
          ((HttpPost)localObject1).addHeader("User-Agent", "BCCS_SDK/3.0");
          try
          {
            localObject1 = ((HttpClient)localObject3).execute((HttpUriRequest)localObject1);
            localObject3 = EntityUtils.toString(((HttpResponse)localObject1).getEntity());
            if (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 200)
            {
              com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "<<< networkRegister return string :  " + (String)localObject3);
              return;
            }
          }
          catch (Exception localException1)
          {
            com.baidu.android.pushservice.h.a.e("AdvertiseUtility", "error = " + localException1.getMessage());
            return;
          }
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          com.baidu.android.pushservice.h.a.a("AdvertiseUtility", localException2);
          localObject2 = null;
        }
        com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "networkRegister request failed  " + ((HttpResponse)localObject2).getStatusLine());
        localObject2 = b.a(this.a).c(this.a.getPackageName());
        if (localObject2 == null);
      }
    }
    for (Object localObject2 = ((h)localObject2).a(); ; localObject2 = null)
    {
      localObject3 = PushSettings.a(this.a);
      String str1 = c.a(this.a);
      String str2 = a.b(this.c);
      String str3 = a.a(this.b);
      int i = Integer.parseInt(this.c);
      m.a(this.a, (String)localObject2, (String)localObject3, str1, str3, i, str2);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.a.2
 * JD-Core Version:    0.6.2
 */