package com.baidu.android.pushservice.j;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.b;

final class d$a
{
  public final String a;
  public final boolean b;

  private d$a(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
  }

  static a a(Context paramContext)
  {
    boolean bool = true;
    Object localObject = "";
    try
    {
      String str = b.a(paramContext, "bd_setting_i");
      localObject = str;
      if (TextUtils.isEmpty(str))
      {
        localObject = str;
        str = a(paramContext, "");
        localObject = str;
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          b.a(paramContext, "bd_setting_i", (String)localObject);
          i = 0;
          if (i == 0)
          {
            return new a((String)localObject, bool);
            localException1 = localException1;
            a.a("DeviceId", "Settings.System.getString or putString failed", localException1);
            if (!TextUtils.isEmpty((CharSequence)localObject))
              continue;
            localObject = a(paramContext, "");
            i = 1;
            continue;
          }
          bool = false;
          continue;
        }
        catch (Exception localException2)
        {
          continue;
          int i = 1;
          continue;
        }
        localObject = localException2;
      }
    }
  }

  private static String a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext != null)
      {
        paramContext = paramContext.getDeviceId();
        paramContext = a(paramContext);
        if (!TextUtils.isEmpty(paramContext))
          break label47;
        return paramString;
      }
    }
    catch (Exception paramContext)
    {
      while (true)
      {
        a.a("DeviceId", "Read IMEI failed", paramContext);
        paramContext = null;
      }
    }
    label47: return paramContext;
  }

  private static String a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.contains(":"))
        str = "";
    }
    return str;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j.d.a
 * JD-Core Version:    0.6.2
 */