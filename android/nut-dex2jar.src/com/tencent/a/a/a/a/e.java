package com.tencent.a.a.a.a;

import android.content.Context;
import android.provider.Settings.System;
import android.util.Log;

public final class e extends f
{
  public e(Context paramContext)
  {
    super(paramContext);
  }

  protected final void a(String paramString)
  {
    try
    {
      Log.i("MID", "write mid to Settings.System");
      Settings.System.putString(this.a.getContentResolver(), h.c("4kU71lN96TJUomD1vOU9lgj9Tw=="), paramString);
      return;
    }
    finally
    {
      paramString = finally;
    }
    throw paramString;
  }

  protected final boolean a()
  {
    return h.a(this.a, "android.permission.WRITE_SETTINGS");
  }

  protected final String b()
  {
    try
    {
      Log.i("MID", "read mid from Settings.System");
      String str = Settings.System.getString(this.a.getContentResolver(), h.c("4kU71lN96TJUomD1vOU9lgj9Tw=="));
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a.a.e
 * JD-Core Version:    0.6.2
 */