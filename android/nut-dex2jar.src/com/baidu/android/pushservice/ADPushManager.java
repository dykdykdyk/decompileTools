package com.baidu.android.pushservice;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.util.j;
import com.baidu.android.pushservice.util.m;

public class ADPushManager
{
  private static final String TAG = "ADPushManager";
  private static Handler mHandler = null;

  public static void initPushClient(Context paramContext)
  {
    try
    {
      Object localObject = paramContext.getSharedPreferences("pushclient", 0);
      if (((SharedPreferences)localObject).getBoolean("isFirstRun", true))
      {
        localObject = ((SharedPreferences)localObject).edit();
        j.b(paramContext);
        ((SharedPreferences.Editor)localObject).putBoolean("isFirstRun", false);
        ((SharedPreferences.Editor)localObject).commit();
        com.baidu.android.pushservice.h.a.c("ADPushManager", "isFirstRun =  true");
        m.a("isFirstRun =  true", paramContext);
      }
      return;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.a("ADPushManager", paramContext);
    }
  }

  private static boolean isNullContext(Context paramContext)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.e("ADPushManager", "Context is null!");
      return true;
    }
    return false;
  }

  public static void setPushADMsgEnable(Context paramContext, boolean paramBoolean)
  {
    j.a(paramContext, paramBoolean);
    if (paramBoolean)
    {
      com.baidu.android.pushservice.util.a.a(paramContext, 1);
      return;
    }
    com.baidu.android.pushservice.util.a.a(paramContext, 2);
  }

  public static void startWorkForAD(Context paramContext, int paramInt, String paramString)
  {
    if (isNullContext(paramContext))
      return;
    if (mHandler == null)
      mHandler = new Handler(paramContext.getMainLooper());
    boolean bool = m.a(paramContext, paramString, true);
    b.a("ADPushManager", "startWorkforAD from " + paramContext.getPackageName() + " check: " + bool, paramContext);
    m.a("startWorkforAD from " + paramContext.getPackageName() + " check: ", paramContext);
    if (bool)
    {
      initPushClient(paramContext);
      PushManager.startWork(paramContext, paramInt, paramString, true);
      mHandler.postDelayed(new ADPushManager.1(paramContext), 1000L);
      return;
    }
    PushManager.checkedSendForUser(paramContext, 10101);
  }

  public static void stopWork(Context paramContext)
  {
    if (isNullContext(paramContext))
      return;
    PushManager.stopWork(paramContext);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.ADPushManager
 * JD-Core Version:    0.6.2
 */