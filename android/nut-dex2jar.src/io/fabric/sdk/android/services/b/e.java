package io.fabric.sdk.android.services.b;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.lang.reflect.Method;

final class e
  implements i
{
  private final Context a;

  public e(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  private static boolean a(Context paramContext)
  {
    try
    {
      int i = ((Integer)Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(null, new Object[] { paramContext })).intValue();
      return i == 0;
    }
    catch (Exception paramContext)
    {
    }
    return false;
  }

  private String b()
  {
    try
    {
      String str = (String)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(d(), new Object[0]);
      return str;
    }
    catch (Exception localException)
    {
      f.b().d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return null;
  }

  private boolean c()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(d(), new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      f.b().d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }
    return false;
  }

  private Object d()
  {
    try
    {
      Object localObject = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { this.a });
      return localObject;
    }
    catch (Exception localException)
    {
      f.b().d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
    return null;
  }

  public final b a()
  {
    if (a(this.a))
      return new b(b(), c());
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.e
 * JD-Core Version:    0.6.2
 */