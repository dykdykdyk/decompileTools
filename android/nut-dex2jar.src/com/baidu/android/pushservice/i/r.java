package com.baidu.android.pushservice.i;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushService;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.f.c;
import com.baidu.android.pushservice.util.k;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class r
{
  public static String a = "";
  private Context b = null;
  private s c = null;
  private boolean d;

  public r(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.c = s.a(paramContext);
    this.d = false;
  }

  private boolean a(String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("stats", paramString2);
    localHashMap.put("pbVer", paramString3);
    localHashMap.put("os", "android");
    paramString2 = null;
    int i = -1;
    int j = 0;
    while (true)
    {
      int k = i;
      Object localObject2 = paramString2;
      Object localObject1;
      if (j < 6)
      {
        localObject1 = paramString2;
        paramString3 = paramString2;
      }
      try
      {
        localObject2 = c.a(paramString1, "POST", localHashMap);
        localObject1 = paramString2;
        paramString3 = paramString2;
        i = ((com.baidu.android.pushservice.f.b)localObject2).b();
        localObject1 = paramString2;
        paramString3 = paramString2;
        paramString2 = ((com.baidu.android.pushservice.f.b)localObject2).a();
        k = i;
        localObject2 = paramString2;
        if (i == 0)
        {
          k = i;
          localObject2 = paramString2;
          if (paramString2 == null)
          {
            paramString3 = paramString2;
            try
            {
              Thread.sleep(1000L);
              j += 1;
            }
            catch (Exception localException)
            {
              while (true)
              {
                localObject1 = paramString2;
                paramString3 = paramString2;
                com.baidu.android.pushservice.h.a.a("StatisticPoster", localException);
              }
            }
          }
        }
      }
      catch (Exception paramString1)
      {
        paramString3 = (String)localObject1;
        com.baidu.android.pushservice.h.a.a("StatisticPoster", paramString1);
        return false;
        localObject1 = localException;
        paramString3 = localException;
        paramString1 = com.baidu.android.pushservice.i.a.b.a(localException);
        if (k == 200)
          return true;
        if (k == 201)
        {
          localObject1 = localException;
          paramString3 = localException;
          a(paramString1);
        }
        while (true)
        {
          return false;
          if (k == 403)
          {
            localObject1 = localException;
            paramString3 = localException;
            b(paramString1);
          }
        }
      }
      finally
      {
        c.a(new Closeable[] { paramString3 });
      }
    }
    throw paramString1;
  }

  private boolean d()
  {
    if ((!com.baidu.android.pushservice.i.a.b.e(this.b)) || (this.d == true) || (PushSettings.f(this.b)));
    long l1;
    long l2;
    do
    {
      return false;
      l1 = System.currentTimeMillis();
      l2 = PushSettings.d(this.b);
      com.baidu.android.pushservice.h.a.c("StatisticPoster", "checkSendStatisticData currentTime:" + l1 + " lastSendTime " + l2);
    }
    while ((!com.baidu.android.pushservice.i.a.b.c(this.b)) && (l1 - l2 < PushSettings.e(this.b)));
    return k.b(this.b, l1, l2);
  }

  public final String a()
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject1.put("user_device", com.baidu.android.pushservice.i.a.b.f(this.b));
      localJSONObject1.put("user_network", com.baidu.android.pushservice.i.a.b.g(this.b));
      localJSONObject2.put("channel_id", PushSettings.a(this.b));
      localJSONObject2.put("push_running_version", com.baidu.android.pushservice.a.a());
      localJSONObject1.put("push_channel", localJSONObject2);
      label76: return localJSONObject1.toString();
    }
    catch (JSONException localJSONException)
    {
      break label76;
    }
  }

  public final String a(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    Object localObject1 = new JSONObject();
    try
    {
      ((JSONObject)localObject1).put("version", "1.0");
      String str = a();
      if (!TextUtils.isEmpty(str))
        ((JSONObject)localObject1).put("common", new JSONObject(str));
      str = this.c.a(paramLong1, paramLong2, paramInt1, paramInt2);
      if (!TextUtils.isEmpty(str))
        ((JSONObject)localObject1).put("application_info", new JSONArray(str));
      try
      {
        label90: localObject1 = com.baidu.android.pushservice.i.a.a.a(((JSONObject)localObject1).toString());
        localObject1[0] = 117;
        localObject1[1] = 123;
        if (localObject1 == null)
          return null;
      }
      catch (IOException localIOException)
      {
        Object localObject2;
        while (true)
          localObject2 = null;
        try
        {
          localObject2 = com.baidu.android.pushservice.j.b.a((byte[])localObject2, "utf-8");
          return localObject2;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          com.baidu.android.pushservice.h.a.e("StatisticPoster", "error " + localUnsupportedEncodingException.getMessage());
          return null;
        }
      }
    }
    catch (JSONException localJSONException)
    {
      break label90;
    }
  }

  public final void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      int i;
      int j;
      try
      {
        paramString = new JSONObject(paramString);
        i = paramString.getInt("config_type");
        j = paramString.getInt("interval");
        if (i == 0)
        {
          if (j <= 0)
            return;
          PushSettings.b(this.b, j * 1000);
          return;
        }
        if (i == 1)
        {
          this.d = true;
          return;
        }
      }
      catch (JSONException paramString)
      {
        com.baidu.android.pushservice.h.a.c("StatisticPoster", "parse 201 exception" + paramString);
        return;
      }
      if (i == 2)
      {
        if (j > 0)
        {
          PushSettings.b(this.b, 1);
          paramString = new Intent("com.baidu.android.pushservice.action.METHOD");
          paramString.putExtra("method", "com.baidu.android.pushservice.action.ENBALE_APPSTAT");
          paramString.setClass(this.b, PushService.class);
          paramString = PendingIntent.getService(this.b.getApplicationContext(), 0, paramString, 268435456);
          long l1 = SystemClock.elapsedRealtime();
          long l2 = j;
          AlarmManager localAlarmManager = (AlarmManager)this.b.getSystemService("alarm");
          localAlarmManager.cancel(paramString);
          localAlarmManager.set(1, l1 + l2, paramString);
        }
      }
      else
      {
        if (i == 10)
        {
          PushSettings.j(this.b);
          return;
        }
        if (i == 11)
          PushSettings.k(this.b);
      }
    }
  }

  public final void b()
  {
    new r.1(this).start();
  }

  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    try
    {
      paramString = new JSONObject(paramString);
      int i = paramString.getInt("error_code");
      paramString.getString("error_msg");
      if (i == 50009)
        PushSettings.b(this.b, 1);
      return;
    }
    catch (JSONException paramString)
    {
    }
  }

  public final boolean b(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    String str = a(paramLong1, paramLong2, paramInt1, paramInt2);
    try
    {
      if (!TextUtils.isEmpty(str))
      {
        boolean bool = a("http://statsonline.pushct.baidu.com/pushlog_special", str, "1.0");
        return bool;
      }
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      com.baidu.android.pushservice.h.a.e("StatisticPoster", "OutOfMemoryError when posting");
    }
    return false;
  }

  public final void c()
  {
    try
    {
      long l1 = System.currentTimeMillis();
      long l2 = PushSettings.d(this.b);
      int i = k.a(this.b, l1, l2);
      int j = 0;
      while (i >= 1000)
      {
        if (!b(l1, l2, j, 1000))
          break label120;
        j += 1000;
        i -= 1000;
      }
      boolean bool2 = true;
      boolean bool1 = bool2;
      if (i <= 1000)
      {
        bool1 = bool2;
        if (i > 0)
          bool1 = b(l1, l2, j, i);
      }
      if (bool1)
        PushSettings.a(this.b, System.currentTimeMillis());
      try
      {
        k.c(this.b);
        label120: return;
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.a.e("StatisticPoster", "clearBehaviorInfo exception" + localException);
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.r
 * JD-Core Version:    0.6.2
 */