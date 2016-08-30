package com.tencent.a.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.util.Log;

final class d extends f
{
  public d(Context paramContext)
  {
    super(paramContext);
  }

  protected final void a(String paramString)
  {
    try
    {
      Log.i("MID", "write mid to sharedPreferences");
      SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(this.a).edit();
      localEditor.putString(h.c("4kU71lN96TJUomD1vOU9lgj9Tw=="), paramString);
      localEditor.commit();
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
    return true;
  }

  protected final String b()
  {
    try
    {
      Log.i("MID", "read mid from sharedPreferences");
      String str = PreferenceManager.getDefaultSharedPreferences(this.a).getString(h.c("4kU71lN96TJUomD1vOU9lgj9Tw=="), null);
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
 * Qualified Name:     com.tencent.a.a.a.a.d
 * JD-Core Version:    0.6.2
 */