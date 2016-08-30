package io.fabric.sdk.android.services.d;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import io.fabric.sdk.android.o;

public final class d
  implements c
{
  private final SharedPreferences a;
  private final String b;
  private final Context c;

  public d(Context paramContext, String paramString)
  {
    if (paramContext == null)
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    this.c = paramContext;
    this.b = paramString;
    this.a = this.c.getSharedPreferences(this.b, 0);
  }

  @Deprecated
  public d(o paramo)
  {
    this(paramo.q, paramo.getClass().getName());
  }

  public final SharedPreferences a()
  {
    return this.a;
  }

  @TargetApi(9)
  public final boolean a(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return true;
    }
    return paramEditor.commit();
  }

  public final SharedPreferences.Editor b()
  {
    return this.a.edit();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.d.d
 * JD-Core Version:    0.6.2
 */