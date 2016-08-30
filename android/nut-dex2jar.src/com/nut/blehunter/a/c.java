package com.nut.blehunter.a;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import b.a.a;
import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  private static c d;
  Handler a;
  public d b;
  long c;
  private HashMap<String, Long> e = new HashMap();

  public static c a()
  {
    if (d == null)
      d = new c();
    return d;
  }

  static String a(Message paramMessage)
  {
    return paramMessage.getData().getString("data");
  }

  private static boolean a(File paramFile)
  {
    boolean bool = false;
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(6);
    paramFile = paramFile.getName();
    paramFile = paramFile.substring(0, paramFile.indexOf("."));
    try
    {
      localCalendar.setTimeInMillis(Long.parseLong(paramFile));
      int j = localCalendar.get(6);
      if (i == j)
        bool = true;
      return bool;
    }
    catch (NumberFormatException paramFile)
    {
      paramFile.printStackTrace();
      return false;
    }
    catch (ArrayIndexOutOfBoundsException paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }

  static boolean a(String paramString, Message paramMessage)
  {
    paramMessage = a(paramMessage);
    if (TextUtils.isEmpty(paramMessage))
      return false;
    try
    {
      boolean bool = paramString.equals(new JSONObject(paramMessage).getJSONObject("NUT_LOG").getString("EVENT"));
      return bool;
    }
    catch (JSONException paramString)
    {
      a.b(paramString, "isEqualEventId JSONException", new Object[0]);
    }
    return false;
  }

  public final e a(String paramString1, String paramString2)
  {
    return new e(this, paramString1, paramString2);
  }

  public final void a(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences((Application)this.b).edit();
    localEditor.putLong("date", paramLong);
    localEditor.commit();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.a.c
 * JD-Core Version:    0.6.2
 */