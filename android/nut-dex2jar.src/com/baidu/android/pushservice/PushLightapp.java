package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.baidu.android.pushservice.b.a;
import com.baidu.android.pushservice.util.m;

public class PushLightapp
{
  private static int BIND_TIME_OUT = 0;
  private static final boolean DEBUG = false;
  private static boolean EVER_BIND = false;
  private static final String PUSHSERVICE = "com.baidu.android.pushservice.PushService";
  private static final int PUSH_VERSION_LEGAL_41 = 23;
  private static final int PUSH_VERSION_LEGAL_44 = 27;
  private static int RUNNING_PUSH_VERSION = 0;
  private static final String TAG = "PushLightapp";
  private static PushLightapp sInstance;
  private static IPushLightappListener sListener;
  private int bind_times = 0;
  private boolean mBound = false;
  private ServiceConnection mConnection = new PushLightapp.2(this);
  private Context mContext;
  a mIPushService;

  public PushLightapp(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    tryBindPush();
  }

  private static PushLightapp getInstance(Context paramContext)
  {
    if (paramContext == null)
      return null;
    if (sInstance == null)
      sInstance = new PushLightapp(paramContext);
    while (true)
    {
      return sInstance;
      if (sInstance.mIPushService == null)
        sInstance.tryBindPush();
    }
  }

  public static void getInstanceAsync(Context paramContext, IPushLightappListener paramIPushLightappListener)
  {
    try
    {
      if ((sInstance != null) && (sInstance.mIPushService != null))
        if (paramIPushLightappListener != null)
          paramIPushLightappListener.initialComplete(sInstance);
      while (true)
      {
        return;
        sListener = paramIPushLightappListener;
        getInstance(paramContext);
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  private int getRunningServiceVersion()
  {
    if (this.mIPushService != null)
      try
      {
        int i = this.mIPushService.c();
        return i;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return 0;
  }

  private void tryBindPush()
  {
    if (this.mContext == null)
    {
      unbindService();
      return;
    }
    if ((EVER_BIND) || (this.mIPushService != null) || (RUNNING_PUSH_VERSION > 0))
      unbindService();
    EVER_BIND = true;
    Intent localIntent = new Intent();
    localIntent.setClassName(m.v(this.mContext), "com.baidu.android.pushservice.PushService");
    try
    {
      this.mContext.bindService(localIntent, this.mConnection, 1);
      label75: this.bind_times += 1;
      new PushLightapp.1(this).start();
      return;
    }
    catch (Exception localException)
    {
      break label75;
    }
  }

  private void unbindService()
  {
    try
    {
      this.mIPushService = null;
      EVER_BIND = false;
      RUNNING_PUSH_VERSION = 0;
      this.mBound = false;
      if (this.mContext != null)
        this.mContext.unbindService(this.mConnection);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public String getSubcribeApps()
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23))
      try
      {
        String str = this.mIPushService.a();
        return str;
      }
      catch (Exception localException)
      {
      }
    return null;
  }

  public String getSubscribedAppids()
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23))
      try
      {
        String str = this.mIPushService.b();
        return str;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }

  public String getSubscribedAppinfos(String paramString)
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23))
      try
      {
        paramString = this.mIPushService.a(paramString);
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    return null;
  }

  public boolean register(String paramString1, String paramString2)
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23))
      try
      {
        boolean bool = this.mIPushService.a(paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
      }
    return false;
  }

  public void subscribeLight(String paramString1, String paramString2, boolean paramBoolean, IPushLightappListener paramIPushLightappListener)
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23));
    while (paramIPushLightappListener == null)
      try
      {
        this.mIPushService.a(paramString1, paramString2, paramBoolean, new PushLightapp.3(this, paramIPushLightappListener));
        return;
      }
      catch (Exception paramString1)
      {
        do
          paramString1.printStackTrace();
        while (paramIPushLightappListener == null);
        paramIPushLightappListener.onSubscribeResult(40001, "aidl_error: INTERNAL_EXCEPTION");
        return;
      }
    paramIPushLightappListener.onSubscribeResult(40001, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION ");
  }

  public void subscribeLightByApiKey(String paramString1, String paramString2, boolean paramBoolean, String paramString3, IPushLightappListener paramIPushLightappListener)
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 27));
    while (paramIPushLightappListener == null)
      try
      {
        this.mIPushService.a(paramString1, paramString2, paramBoolean, paramString3, new PushLightapp.4(this, paramIPushLightappListener, paramString1));
        return;
      }
      catch (Exception paramString1)
      {
        do
          paramString1.printStackTrace();
        while (paramIPushLightappListener == null);
        paramIPushLightappListener.onSubscribeByApiKey(40001, "aidl_error: INTERNAL_EXCEPTION");
        return;
      }
    paramIPushLightappListener.onSubscribeByApiKey(40001, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION ");
  }

  public void unsubscribeLight(String paramString1, String paramString2, IPushLightappListener paramIPushLightappListener)
  {
    if ((this.mIPushService != null) && (RUNNING_PUSH_VERSION >= 23));
    while (paramIPushLightappListener == null)
      try
      {
        this.mIPushService.a(paramString1, paramString2, new PushLightapp.5(this, paramIPushLightappListener));
        return;
      }
      catch (Exception paramString1)
      {
        while (paramIPushLightappListener == null);
        paramIPushLightappListener.onUnsubscribeResult(40001, "aidl_error: INTERNAL_EXCEPTION");
        return;
      }
    paramIPushLightappListener.onUnsubscribeResult(40001, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION ");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushLightapp
 * JD-Core Version:    0.6.2
 */