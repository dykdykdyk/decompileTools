package com.baidu.android.pushservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.pushservice.util.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class CommandService extends Service
{
  public void a(Intent paramIntent)
  {
    String str = m.d(this, getPackageName(), paramIntent.getAction());
    if (TextUtils.isEmpty(str))
    {
      Log.i("CommandService", " reflectReceiver error: receiver for: " + paramIntent.getAction() + " not found, package: " + getPackageName());
      paramIntent.setPackage(getPackageName());
      sendBroadcast(paramIntent);
      if ("com.baidu.android.pushservice.action.advertise.notification.SHOW".equals(paramIntent.getAction()))
        m.a(getApplicationContext(), paramIntent, "07");
    }
    while (true)
    {
      return;
      try
      {
        Object localObject2 = Class.forName(str);
        Object localObject1 = ((Class)localObject2).getConstructor(null).newInstance(null);
        localObject2 = ((Class)localObject2).getMethod("onReceive", new Class[] { Context.class, Intent.class });
        paramIntent.setClassName(getPackageName(), str);
        ((Method)localObject2).invoke(localObject1, new Object[] { getApplicationContext(), paramIntent });
        if ((a.b() > 0) && ("com.baidu.android.pushservice.action.advertise.notification.SHOW".equals(paramIntent.getAction())))
        {
          m.a(getApplicationContext(), paramIntent, "08");
          return;
        }
      }
      catch (Exception paramIntent)
      {
        Log.i("CommandService", "reflect e: " + paramIntent);
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    Log.d("CommandService", "onBind initSuc: ");
    return null;
  }

  public void onCreate()
  {
    Log.d("CommandService", "-- CommandService oncreate -- ");
    super.onCreate();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent == null)
    {
      stopSelf();
      return 2;
    }
    String str = null;
    if (paramIntent.hasExtra("command_type"))
    {
      str = paramIntent.getStringExtra("command_type");
      Log.d("CommandService", "-- command_type -- " + str);
    }
    if ((!TextUtils.isEmpty(str)) && (str.equals("reflect_receiver")))
      a(paramIntent);
    stopSelf();
    return 2;
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return super.onUnbind(paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.CommandService
 * JD-Core Version:    0.6.2
 */