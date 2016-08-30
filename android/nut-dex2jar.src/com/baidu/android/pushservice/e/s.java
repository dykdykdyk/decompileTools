package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.baidu.android.pushservice.g.f;
import com.baidu.android.pushservice.h;
import com.baidu.android.pushservice.h.a;
import java.io.Closeable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class s
  implements Runnable
{
  private final String a = h.a + "/lightapp/infosbykey/%s";
  private final String b = h.a + "/lightapp/infos/%s";
  private Context c;
  private com.baidu.android.pushservice.g.c d;
  private int e = 3;
  private int f = 0;
  private boolean g = false;
  private s.a h;

  public s(Context paramContext, String paramString1, String paramString2, s.a parama)
  {
    this.c = paramContext.getApplicationContext();
    this.h = parama;
    this.d = new com.baidu.android.pushservice.g.c(paramString1, paramString2);
  }

  private boolean a(String paramString)
  {
    while (true)
    {
      JSONObject localJSONObject2;
      try
      {
        paramString = new JSONObject(paramString);
        if (paramString.isNull("state"))
          return false;
        if (paramString.getInt("state") == 0)
          break label362;
        paramString = paramString.getJSONArray("data").getJSONObject(0);
        String str1 = paramString.getString("title");
        String str2 = paramString.getString("id");
        String str3 = paramString.getString("api_key");
        JSONObject localJSONObject1 = paramString.getJSONObject("logo");
        int i;
        if (localJSONObject1 != null)
        {
          localJSONObject2 = localJSONObject1.getJSONObject("thumbnails");
          if (localJSONObject2 != null)
          {
            this.d.f(localJSONObject2.getString("L"));
            this.d.g(localJSONObject2.getString("M"));
            this.d.h(localJSONObject2.getString("S"));
            this.d.i(localJSONObject2.getString("XL"));
            i = this.c.getResources().getDisplayMetrics().densityDpi;
          }
        }
        switch (i)
        {
        case 120:
          if (i <= 240)
            break label345;
          this.d.d(localJSONObject2.getString("XL"));
          this.d.b(str2);
          this.d.c(str3);
          this.d.a(str1);
          this.d.e(localJSONObject1.toString());
          this.d.a(paramString.getBoolean("allow_shortcut"));
          return true;
          this.d.d(localJSONObject2.getString("S"));
          continue;
        case 160:
        case 240:
        }
      }
      catch (JSONException paramString)
      {
        a.b("GetLightAppInfoRequester", "GetLightAppInfo e : " + paramString);
        return false;
      }
      this.d.d(localJSONObject2.getString("M"));
      continue;
      this.d.d(localJSONObject2.getString("L"));
      continue;
      label345: this.d.d(localJSONObject2.getString("S"));
      continue;
      label362: return false;
    }
  }

  private boolean b()
  {
    Object localObject5 = null;
    String str = null;
    Object localObject4;
    if (!TextUtils.isEmpty(this.d.c()))
      localObject4 = String.format(this.a, new Object[] { this.d.c() });
    while (true)
    {
      a.c("GetLightAppInfoRequester", "getLightAppInfo request url:" + (String)localObject4);
      Object localObject2 = str;
      Object localObject1 = localObject5;
      try
      {
        com.baidu.android.pushservice.f.b localb = com.baidu.android.pushservice.f.c.a((String)localObject4, "GET", null);
        localObject2 = str;
        localObject1 = localObject5;
        localObject4 = localb.a();
        if (localb != null)
        {
          localObject2 = localObject4;
          localObject1 = localObject4;
          if ((localb.b() == 200) && (localObject4 != null))
          {
            localObject2 = localObject4;
            localObject1 = localObject4;
            str = com.baidu.android.pushservice.i.a.b.a(localb.a());
            localObject2 = localObject4;
            localObject1 = localObject4;
            a.b("GetLightAppInfoRequester", "getLightAppInfo return string :  " + str);
            localObject2 = localObject4;
            localObject1 = localObject4;
            boolean bool = a(str);
            return bool;
            localObject4 = String.format(this.b, new Object[] { this.d.b() });
            continue;
          }
        }
        localObject2 = localObject4;
        localObject1 = localObject4;
        this.f = 0;
        localObject2 = localObject4;
        localObject1 = localObject4;
        this.g = false;
        return false;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localObject1 = localObject2;
          a.e("GetLightAppInfoRequester", "error " + localException.getMessage());
          localObject1 = localObject2;
          this.g = true;
          com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject2 });
        }
      }
      finally
      {
        com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject1 });
      }
    }
  }

  private void c()
  {
    this.f += 1;
    if (this.f < this.e)
    {
      int i = (1 << this.f - 1) * 5 * 1000;
      a.b("GetLightAppInfoRequester", "schedule retry-- retry times: " + this.f + "time delay: " + i);
      long l = i;
      try
      {
        Thread.sleep(l);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        a.e("GetLightAppInfoRequester", "error : " + localInterruptedException.getMessage());
        return;
      }
    }
    a.b("GetLightAppInfoRequester", "hava reconnect " + this.e + " times, all failed.");
    this.g = false;
  }

  protected void a()
  {
    boolean bool;
    do
    {
      bool = b();
      if ((bool) && (this.d.a() == null))
      {
        byte[] arrayOfByte = f.a(this.c, this.d.c(), this.d.e(), false);
        this.d.a(arrayOfByte);
      }
      if (this.g)
        c();
      if (this.h != null)
      {
        this.e = 0;
        this.h.a(bool, this.d);
      }
    }
    while ((this.e > 0) && (this.g));
    a.b("GetLightAppInfoRequester", "GetLightAppInfoRequester connectResult: " + bool);
  }

  public void a(int paramInt)
  {
    this.e = paramInt;
  }

  public void run()
  {
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.s
 * JD-Core Version:    0.6.2
 */