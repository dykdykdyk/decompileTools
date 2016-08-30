package com.baidu.android.pushservice.h;

import android.content.Context;
import android.util.Log;
import com.baidu.android.pushservice.PushSettings;

public class b
{
  public static void a(String paramString1, String paramString2, Context paramContext)
  {
    if ((PushSettings.b(paramContext)) && (paramString2 != null))
      Log.d("BDPushSDK-" + paramString1, paramString2);
  }

  public static void a(String paramString, Throwable paramThrowable, Context paramContext)
  {
    b(paramString, a.a(paramThrowable), paramContext);
  }

  public static void b(String paramString1, String paramString2, Context paramContext)
  {
    if ((PushSettings.b(paramContext)) && (paramString2 != null))
      Log.e("BDPushSDK-" + paramString1, paramString2);
  }

  public static void c(String paramString1, String paramString2, Context paramContext)
  {
    if ((PushSettings.b(paramContext)) && (paramString2 != null))
      Log.i("BDPushSDK-" + paramString1, paramString2);
  }

  public static void d(String paramString1, String paramString2, Context paramContext)
  {
    if ((PushSettings.b(paramContext)) && (paramString2 != null))
      Log.w("BDPushSDK-" + paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.h.b
 * JD-Core Version:    0.6.2
 */