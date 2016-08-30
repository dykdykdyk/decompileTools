package com.loc;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import com.amap.api.fence.Fence;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.APSService;
import com.amap.api.location.LocationManagerBase;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class a
  implements LocationManagerBase
{
  AMapLocationClientOption a;
  e b;
  dr c = null;
  ArrayList<AMapLocationListener> d = new ArrayList();
  dq e;
  boolean f = false;
  dt g;
  Messenger h = null;
  Messenger i = null;
  d j;
  Intent k = null;
  int l = 0;
  long m = 0L;
  long n = 0L;
  int o = 0;
  boolean p = false;
  private final int q = 10000;
  private final int r = 30000;
  private Context s;
  private boolean t = false;
  private boolean u = true;
  private long v = 0L;
  private boolean w = true;
  private boolean x = false;
  private ServiceConnection y = new au(this);

  public a(Context paramContext, Intent paramIntent)
  {
    this.s = paramContext;
    this.k = paramIntent;
    paramIntent = this.k;
    paramContext = paramIntent;
    if (paramIntent == null);
    try
    {
      paramContext = new Intent(this.s, APSService.class);
      paramContext.putExtra("apiKey", dp.a);
      this.s.bindService(paramContext, this.y, 1);
      paramContext = this.s;
      if (dt.c == null)
        dt.c = new dt(paramContext);
      this.g = dt.c;
      if (Looper.myLooper() == null)
      {
        this.b = new e(this, this.s.getMainLooper());
        this.i = new Messenger(this.b);
        this.c = new dr(this.s, this.b);
      }
    }
    catch (Throwable paramContext)
    {
      try
      {
        while (true)
        {
          this.e = new dq(this.s);
          return;
          paramContext = paramContext;
          paramContext.printStackTrace();
        }
        this.b = new e(this);
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
      }
    }
  }

  private void a()
  {
    try
    {
      Intent localIntent1 = new Intent();
      localIntent1.setComponent(new ComponentName("com.autonavi.minimap", bv.o()));
      localIntent1.setFlags(268435456);
      localIntent1.setData(Uri.parse(bv.m()));
      this.s.startActivity(localIntent1);
      return;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse(bv.n()));
        localIntent2.setFlags(268435456);
        this.s.startActivity(localIntent2);
        return;
      }
      catch (Throwable localThrowable2)
      {
      }
    }
  }

  public void addGeoFenceAlert(String paramString, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, PendingIntent paramPendingIntent)
  {
    Fence localFence = new Fence();
    localFence.b = paramString;
    localFence.d = paramDouble1;
    localFence.c = paramDouble2;
    localFence.e = paramFloat;
    localFence.a = paramPendingIntent;
    localFence.a(paramLong);
    dq localdq;
    PendingIntent localPendingIntent;
    ArrayList localArrayList;
    if (this.e != null)
    {
      localdq = this.e;
      localPendingIntent = localFence.a;
      if ((localPendingIntent != null) && (!TextUtils.isEmpty(localFence.b)) && (localFence.e >= 100.0F) && (localFence.e <= 1000.0F) && ((localdq.b.isEmpty()) || (localdq.b.containsKey(localPendingIntent))) && (localFence.a() != 0) && (localFence.a() <= 7))
      {
        paramString = localdq.b.entrySet().iterator();
        for (int i1 = 0; (paramString != null) && (paramString.hasNext()); i1 = ((ArrayList)((Map.Entry)paramString.next()).getValue()).size() + i1);
        if (i1 <= 20)
        {
          localFence.g = -1;
          if (localdq.b.isEmpty())
            break label334;
          localArrayList = (ArrayList)localdq.b.get(localPendingIntent);
          paramString = null;
          Iterator localIterator = localArrayList.iterator();
          if (localIterator.hasNext())
          {
            paramPendingIntent = (Fence)localIterator.next();
            if (!paramPendingIntent.b.equals(localFence.b))
              break label362;
            paramString = paramPendingIntent;
          }
        }
      }
    }
    label334: label362: 
    while (true)
    {
      break;
      if (paramString != null)
        localArrayList.remove(paramString);
      localArrayList.add(localFence);
      localdq.b.put(localPendingIntent, localArrayList);
      return;
      paramString = new ArrayList();
      paramString.add(localFence);
      localdq.b.put(localPendingIntent, paramString);
      return;
    }
  }

  public AMapLocation getLastKnownLocation()
  {
    try
    {
      AMapLocation localAMapLocation = this.g.a();
      return localAMapLocation;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public String getVersion()
  {
    return "2.3.0";
  }

  public boolean isStarted()
  {
    return this.t;
  }

  public void onDestroy()
  {
    this.w = true;
    stopLocation();
    if (this.e != null)
      this.e.b.clear();
    if (this.y != null)
      this.s.unbindService(this.y);
    if (this.d != null)
    {
      this.d.clear();
      this.d = null;
    }
    this.y = null;
    if (this.b != null)
      this.b.removeCallbacksAndMessages(null);
  }

  public void removeGeoFenceAlert(PendingIntent paramPendingIntent)
  {
    dq localdq;
    if (this.e != null)
    {
      localdq = this.e;
      if ((paramPendingIntent != null) && (localdq.b.containsKey(paramPendingIntent)));
    }
    else
    {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    paramPendingIntent = ((ArrayList)localdq.b.get(paramPendingIntent)).iterator();
    while (paramPendingIntent.hasNext())
      localArrayList.add(((Fence)paramPendingIntent.next()).b);
    localdq.a(localArrayList);
  }

  public void removeGeoFenceAlert(PendingIntent paramPendingIntent, String paramString)
  {
    dq localdq;
    if (this.e != null)
    {
      localdq = this.e;
      if ((paramPendingIntent != null) && (localdq.b.containsKey(paramPendingIntent)))
        break label28;
    }
    label28: 
    while (TextUtils.isEmpty(paramString))
      return;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    localdq.a(paramPendingIntent, localArrayList);
  }

  public void setLocationListener(AMapLocationListener paramAMapLocationListener)
  {
    if (paramAMapLocationListener == null)
      throw new IllegalArgumentException("listener参数不能为null");
    if (this.d == null)
      this.d = new ArrayList();
    if (!this.d.contains(paramAMapLocationListener))
      this.d.add(paramAMapLocationListener);
  }

  public void setLocationOption(AMapLocationClientOption paramAMapLocationClientOption)
  {
    this.a = paramAMapLocationClientOption;
  }

  public void startAssistantLocation()
  {
    if (this.b != null)
      this.b.sendEmptyMessage(101);
  }

  public void startLocation()
  {
    if (this.a == null)
      this.a = new AMapLocationClientOption();
    this.u = false;
    if (this.j == null)
    {
      this.j = new d(this, "locationThread");
      this.j.start();
    }
    switch (cc.a[this.a.getLocationMode().ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    do
    {
      return;
      this.c.a();
      this.x = false;
      return;
    }
    while (this.x);
    dr localdr = this.c;
    localdr.d = this.a;
    long l1 = localdr.d.getInterval();
    try
    {
      localObject2 = Looper.myLooper();
      Object localObject1 = localObject2;
      if (localObject2 == null)
        localObject1 = localdr.b.getMainLooper();
      localdr.e = l1;
      localdr.c.requestLocationUpdates("gps", 1000L, 0.0F, localdr.g, (Looper)localObject1);
      label186: this.x = true;
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        Message localMessage = Message.obtain();
        Object localObject2 = new AMapLocation("");
        ((AMapLocation)localObject2).setProvider("gps");
        ((AMapLocation)localObject2).setErrorCode(12);
        ((AMapLocation)localObject2).setLocationType(1);
        localMessage.what = 2;
        localMessage.obj = localObject2;
        if (localdr.a != null)
          localdr.a.sendMessage(localMessage);
      }
    }
    catch (Throwable localThrowable)
    {
      break label186;
    }
  }

  public void stopAssistantLocation()
  {
    if (this.b != null)
      this.b.sendEmptyMessage(102);
  }

  public void stopLocation()
  {
    if (this.j != null)
    {
      this.j.a = false;
      this.j.interrupt();
    }
    this.j = null;
    this.c.a();
    this.x = false;
    this.p = false;
    this.t = false;
    this.u = true;
    this.n = 0L;
    this.m = 0L;
    this.o = 0;
    this.l = 0;
  }

  public void unRegisterLocationListener(AMapLocationListener paramAMapLocationListener)
  {
    if ((!this.d.isEmpty()) && (this.d.contains(paramAMapLocationListener)))
      this.d.remove(paramAMapLocationListener);
    if (this.d.isEmpty())
      stopLocation();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.a
 * JD-Core Version:    0.6.2
 */