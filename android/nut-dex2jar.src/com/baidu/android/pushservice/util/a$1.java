package com.baidu.android.pushservice.util;

import android.content.Context;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.c.b;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.j.c;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

final class a$1
  implements Runnable
{
  a$1(Context paramContext, int paramInt)
  {
  }

  public final void run()
  {
    Object localObject1 = new DefaultHttpClient();
    Object localObject2 = new HttpPost(a.a());
    ((HttpClient)localObject1).getParams().setParameter("http.connection.timeout", Integer.valueOf(10000));
    ((HttpClient)localObject1).getParams().setParameter("http.socket.timeout", Integer.valueOf(10000));
    ((HttpPost)localObject2).addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
    ((HttpPost)localObject2).addHeader("User-Agent", "BCCS_SDK/3.0");
    Object localObject3 = new ArrayList();
    a.a(this.a, (List)localObject3, this.b);
    try
    {
      ((HttpPost)localObject2).setEntity(new UrlEncodedFormEntity((List)localObject3, "UTF-8"));
      localObject1 = ((HttpClient)localObject1).execute((HttpUriRequest)localObject2);
      localObject2 = EntityUtils.toString(((HttpResponse)localObject1).getEntity());
      if (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 200)
      {
        com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "<<<  updateADStatus  request succeed  return string:  " + (String)localObject2);
        if (com.baidu.android.pushservice.a.b() > 0)
          m.a("  updateADStatus request succeed returnString :   " + (String)localObject2, this.a);
      }
      else
      {
        com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "updateADStatus request failed  " + ((HttpResponse)localObject1).getStatusLine());
        if (com.baidu.android.pushservice.a.b() > 0)
          m.a("  updateADStatus  request failed,  returnString :   " + (String)localObject2, this.a);
        localObject3 = b.a(this.a).c(this.a.getPackageName());
        localObject1 = null;
        if (localObject3 != null)
          localObject1 = ((h)localObject3).a();
        localObject3 = PushSettings.a(this.a);
        String str = c.a(this.a);
        short s = com.baidu.android.pushservice.a.a();
        m.a(this.a, this.b, (String)localObject1, (String)localObject3, str, s);
        com.baidu.android.pushservice.h.a.b("AdvertiseUtility", "<<< networkRegister return string :  " + (String)localObject2);
        return;
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("AdvertiseUtility", "error = " + localException.getMessage());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.a.1
 * JD-Core Version:    0.6.2
 */