package com.baidu.android.pushservice.i;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.f.c;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.j;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class p
{
  protected Context a;
  protected String b;
  private boolean c = false;
  private boolean d;

  public p(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.d = false;
  }

  private void c(boolean paramBoolean)
  {
    if (TextUtils.isEmpty(this.b))
      a.e("Statistics-BaseSender", "mUrl is null");
    while (true)
    {
      return;
      try
      {
        Object localObject = a(paramBoolean);
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          if (!b())
            this.b += j.a(this.a).b();
          HashMap localHashMap = new HashMap();
          com.baidu.android.pushservice.e.b.b(localHashMap);
          a((String)localObject, localHashMap);
          localObject = c.a(this.b, "POST", localHashMap);
          if (localObject != null)
          {
            a((com.baidu.android.pushservice.f.b)localObject);
            return;
          }
        }
      }
      catch (Exception localException)
      {
        a.e("Statistics-BaseSender", "startSendLoop Exception: " + localException);
      }
    }
  }

  abstract String a(boolean paramBoolean);

  public void a(com.baidu.android.pushservice.f.b paramb)
  {
    Object localObject = null;
    while (true)
    {
      InputStream localInputStream;
      int i;
      try
      {
        localInputStream = paramb.a();
        localObject = localInputStream;
        i = paramb.b();
        localObject = localInputStream;
        paramb = com.baidu.android.pushservice.i.a.b.a(localInputStream);
        localObject = localInputStream;
        a.c("Statistics-BaseSender", "return conncection = " + paramb);
        if (i == 200)
        {
          localObject = localInputStream;
          b(paramb);
          return;
        }
        if (i == 201)
        {
          localObject = localInputStream;
          c(paramb);
          continue;
        }
      }
      finally
      {
        c.a(new Closeable[] { localObject });
      }
      if (i == 403)
      {
        localObject = localInputStream;
        d(paramb);
      }
    }
  }

  abstract void a(String paramString);

  abstract void a(String paramString, HashMap<String, String> paramHashMap);

  abstract boolean a();

  public void b(String paramString)
  {
    a(paramString);
  }

  public void b(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        boolean bool = this.c;
        if (bool)
          return;
        if (!a())
        {
          a.d("Statistics-BaseSender", "No new data producted, do nothing!");
          continue;
        }
      }
      finally
      {
      }
      if (!j.a(this.a).d())
      {
        a.e("Statistics-BaseSender", "Fail Send Statistics. Token invalid!");
      }
      else
      {
        this.c = true;
        Thread localThread = new Thread(new p.1(this, paramBoolean));
        localThread.setName("PushService-stats-sender");
        localThread.start();
      }
    }
  }

  abstract boolean b();

  public void c(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    try
    {
      paramString = new JSONObject(paramString);
      int i = paramString.getInt("config_type");
      int j = paramString.getInt("interval");
      a.c("Statistics-BaseSender", "lbs config_type = " + i + " interval = " + j);
      if ((i == 0) && (j > 0))
        PushSettings.c(this.a, j);
      return;
    }
    catch (JSONException paramString)
    {
      a.e("Statistics-BaseSender", "parse 201 exception" + paramString);
    }
  }

  public boolean c()
  {
    return this.d;
  }

  public void d(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    try
    {
      paramString = new JSONObject(paramString);
      int i = paramString.getInt("error_code");
      paramString = paramString.getString("error_msg");
      a.c("Statistics-BaseSender", "error code = " + i + " error_msg = " + paramString);
      if (i == 50009)
        PushSettings.j(this.a);
      return;
    }
    catch (JSONException paramString)
    {
      a.e("Statistics-BaseSender", " parse 403 exception" + paramString);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.p
 * JD-Core Version:    0.6.2
 */