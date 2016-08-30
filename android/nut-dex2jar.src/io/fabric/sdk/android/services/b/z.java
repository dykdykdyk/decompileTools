package io.fabric.sdk.android.services.b;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.a.b;
import io.fabric.sdk.android.services.a.d;

public final class z
{
  private final d<String> a = new aa(this);
  private final b<String> b = new b();

  public final String a(Context paramContext)
  {
    try
    {
      paramContext = (String)this.b.a(paramContext, this.a);
      boolean bool = "".equals(paramContext);
      if (bool)
        paramContext = null;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      f.b().c("Fabric", "Failed to determine installer package name", paramContext);
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.z
 * JD-Core Version:    0.6.2
 */