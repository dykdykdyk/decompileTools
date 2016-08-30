package io.fabric.sdk.android.services.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.d.d;

final class c
{
  final io.fabric.sdk.android.services.d.c a;
  private final Context b;

  public c(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.a = new d(paramContext, "TwitterAdvertisingInfoPreferences");
  }

  static boolean b(b paramb)
  {
    return (paramb != null) && (!TextUtils.isEmpty(paramb.a));
  }

  final b a()
  {
    b localb = new e(this.b).a();
    if (!b(localb))
    {
      localb = new f(this.b).a();
      if (!b(localb))
      {
        io.fabric.sdk.android.f.b().a("Fabric", "AdvertisingInfo not present");
        return localb;
      }
      io.fabric.sdk.android.f.b().a("Fabric", "Using AdvertisingInfo from Service Provider");
      return localb;
    }
    io.fabric.sdk.android.f.b().a("Fabric", "Using AdvertisingInfo from Reflection Provider");
    return localb;
  }

  @SuppressLint({"CommitPrefEdits"})
  final void a(b paramb)
  {
    if (b(paramb))
    {
      this.a.a(this.a.b().putString("advertising_id", paramb.a).putBoolean("limit_ad_tracking_enabled", paramb.b));
      return;
    }
    this.a.a(this.a.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.c
 * JD-Core Version:    0.6.2
 */