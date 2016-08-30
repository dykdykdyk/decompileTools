package io.fabric.sdk.android.services.e;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.a;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.d;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

final class l extends a
  implements z
{
  public l(o paramo, String paramString1, String paramString2, io.fabric.sdk.android.services.network.l paraml)
  {
    this(paramo, paramString1, paramString2, paraml, d.a);
  }

  private l(o paramo, String paramString1, String paramString2, io.fabric.sdk.android.services.network.l paraml, int paramInt)
  {
    super(paramo, paramString1, paramString2, paraml, paramInt);
  }

  private JSONObject a(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      f.b().a("Fabric", "Failed to parse settings JSON from " + this.a, localException);
      f.b().a("Fabric", "Settings response " + paramString);
    }
    return null;
  }

  private static void a(HttpRequest paramHttpRequest, String paramString1, String paramString2)
  {
    if (paramString2 != null)
      paramHttpRequest.a(paramString1, paramString2);
  }

  public final JSONObject a(y paramy)
  {
    Object localObject2 = null;
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("build_version", paramy.j);
      localHashMap.put("display_version", paramy.i);
      localHashMap.put("source", Integer.toString(paramy.k));
      if (paramy.l != null)
        localHashMap.put("icon_hash", paramy.l);
      localObject1 = paramy.h;
      if (!io.fabric.sdk.android.services.b.l.c((String)localObject1))
        localHashMap.put("instance", localObject1);
      localObject1 = a(localHashMap);
      try
      {
        a((HttpRequest)localObject1, "X-CRASHLYTICS-API-KEY", paramy.a);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        a((HttpRequest)localObject1, "X-CRASHLYTICS-API-CLIENT-VERSION", this.b.a());
        a((HttpRequest)localObject1, "Accept", "application/json");
        a((HttpRequest)localObject1, "X-CRASHLYTICS-DEVICE-MODEL", paramy.b);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-OS-BUILD-VERSION", paramy.c);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-OS-DISPLAY-VERSION", paramy.d);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-ADVERTISING-TOKEN", paramy.e);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-INSTALLATION-ID", paramy.f);
        a((HttpRequest)localObject1, "X-CRASHLYTICS-ANDROID-ID", paramy.g);
        f.b().a("Fabric", "Requesting settings from " + this.a);
        f.b().a("Fabric", "Settings query params were: " + localHashMap);
        i = ((HttpRequest)localObject1).b();
        f.b().a("Fabric", "Settings result was: " + i);
        if ((i != 200) && (i != 201) && (i != 202))
        {
          if (i == 203)
          {
            break label459;
            if (i == 0)
              break label380;
          }
          for (paramy = a(((HttpRequest)localObject1).c()); ; paramy = localObject2)
          {
            return paramy;
            i = 0;
            break;
            label380: f.b().e("Fabric", "Failed to retrieve settings from " + this.a);
          }
        }
      }
      finally
      {
        if (localObject1 != null)
          f.b().a("Fabric", "Settings request ID: " + ((HttpRequest)localObject1).a("X-REQUEST-ID"));
      }
    }
    finally
    {
      while (true)
      {
        Object localObject1 = null;
        continue;
        label459: int i = 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.l
 * JD-Core Version:    0.6.2
 */