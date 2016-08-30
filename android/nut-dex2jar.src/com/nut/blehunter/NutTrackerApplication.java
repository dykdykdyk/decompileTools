package com.nut.blehunter;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.LocationManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.b.j;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.nut.blehunter.a.c;
import com.nut.blehunter.a.d;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.v;
import java.io.File;
import java.util.Calendar;
import java.util.Stack;
import org.json.JSONException;
import org.json.JSONObject;

public class NutTrackerApplication extends Application
  implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2, d
{
  public static final String a = Environment.getExternalStorageDirectory() + File.separator + "NutTracker/";
  public static boolean b = true;
  private static NutTrackerApplication e;
  private static String f = "";
  public String c = null;
  public String d = null;
  private Stack<String> g = new Stack();

  public static NutTrackerApplication a()
  {
    try
    {
      NutTrackerApplication localNutTrackerApplication = e;
      return localNutTrackerApplication;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    android.support.b.a.a(this);
  }

  public final PackageInfo b()
  {
    Object localObject = getPackageName();
    try
    {
      localObject = getPackageManager().getPackageInfo((String)localObject, 0);
      return localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      b.a.a.d(localNameNotFoundException.toString(), new Object[0]);
    }
    return null;
  }

  public final String c()
  {
    if (this.g.isEmpty())
      return null;
    return (String)this.g.peek();
  }

  public final String d()
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("VERSION", "1.0");
      localJSONObject2.put("PLATFORM", "ANDROID");
      localJSONObject2.put("APP_VERSION", getPackageManager().getPackageInfo(getPackageName(), 0).versionName);
      if (m.a().c())
        localJSONObject2.put("USER_ID", m.a().b().a);
      while (true)
      {
        String str = ((TelephonyManager)getSystemService("phone")).getDeviceId();
        if (TextUtils.isEmpty(str))
          break;
        localJSONObject2.put("PHONE_DEVICE_ID", str);
        localJSONObject2.put("PHONE_MODAL", Build.MODEL);
        localJSONObject2.put("SYSTEM_VERSION", Build.VERSION.RELEASE);
        localJSONObject1.put("NUT_LOG_HEADER", localJSONObject2);
        return localJSONObject1.toString();
        localJSONObject2.put("USER_ID", JSONObject.NULL);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        JSONObject localJSONObject2;
        b.a.a.b(localJSONException, "getHeaderInfo JSONException", new Object[0]);
        return null;
        localJSONObject2.put("PHONE_DEVICE_ID", JSONObject.NULL);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        b.a.a.b(localNameNotFoundException, "getHeaderInfo NameNotFoundException", new Object[0]);
    }
  }

  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    b = false;
    f = "created";
    this.g.push(paramActivity.getClass().getSimpleName());
  }

  public void onActivityDestroyed(Activity paramActivity)
  {
    f = "destroyed";
    this.g.pop();
  }

  public void onActivityPaused(Activity paramActivity)
  {
    f = "paused";
  }

  public void onActivityResumed(Activity paramActivity)
  {
    f = "resumed";
  }

  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
  }

  public void onActivityStarted(Activity paramActivity)
  {
    f = "started";
  }

  public void onActivityStopped(Activity paramActivity)
  {
    f = "stopped";
  }

  public void onCreate()
  {
    super.onCreate();
    io.fabric.sdk.android.f.a(this, new io.fabric.sdk.android.o[] { new v(new TwitterAuthConfig(a.t, a.u)), new com.crashlytics.android.a() });
    e = this;
    registerActivityLifecycleCallbacks(this);
    Object localObject = new File(a);
    if (!((File)localObject).exists())
      ((File)localObject).mkdir();
    this.c = (a + "log/");
    localObject = new File(this.c);
    if (!((File)localObject).exists())
      ((File)localObject).mkdir();
    Thread.setDefaultUncaughtExceptionHandler(new b(getApplicationContext(), this.c));
    b.a.a.a(new r((byte)0));
    this.d = (a + "file/");
    localObject = new File(this.d);
    if (!((File)localObject).exists())
      ((File)localObject).mkdir();
    localObject = c.a();
    Log.d("UbRecod", "init ubrecord");
    ((c)localObject).b = this;
    Thread localThread = new Thread(new com.nut.blehunter.a.f((c)localObject, (byte)0));
    localThread.setName("UbRecordThread");
    localThread.start();
    ((c)localObject).a(Calendar.getInstance().getTimeInMillis());
    localObject = o.a();
    ((o)localObject).b = this;
    ((o)localObject).c = new Handler();
    ((o)localObject).d = ((LocationManager)((o)localObject).b.getSystemService("location"));
  }

  public void onTrimMemory(int paramInt)
  {
    if (f.equals("stopped"))
    {
      b = true;
      Intent localIntent = new Intent("com.nutspace.action.app.background");
      j.a(this).a(localIntent);
    }
    super.onTrimMemory(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.NutTrackerApplication
 * JD-Core Version:    0.6.2
 */