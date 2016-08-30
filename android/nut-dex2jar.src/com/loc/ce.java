package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Timer;

public final class ce
{
  private static float L = 1.1F;
  private static float M = 2.2F;
  private static float N = 2.3F;
  private static float O = 3.8F;
  private static int P = 3;
  private static int Q = 10;
  private static int R = 2;
  private static int S = 7;
  private static int T = 20;
  private static int U = 70;
  private static int V = 120;
  protected static boolean a = false;
  protected static boolean b = true;
  private static int d = 10;
  private static int e = 2;
  private static int f = 10;
  private static int g = 10;
  private static int h = 50;
  private static int i = 200;
  private static Object j = new Object();
  private static ce k;
  private volatile Handler A = null;
  private da B = new da(this);
  private LocationListener C = new cu(this);
  private BroadcastReceiver D = new cv();
  private BroadcastReceiver E = new cw();
  private GpsStatus F = null;
  private int G = 0;
  private int H = 0;
  private HashMap I = null;
  private int J = 0;
  private int K = 0;
  boolean c = false;
  private int l = -1;
  private int m = 0;
  private int n = 0;
  private Context o;
  private LocationManager p;
  private co q;
  private dc r;
  private dm s;
  private cl t;
  private dl u;
  private db v;
  private cf w;
  private Thread x = null;
  private Looper y = null;
  private cz z = null;

  private ce(Context paramContext)
  {
    this.o = paramContext;
    this.q = co.a(paramContext);
    this.w = new cf();
    this.r = new dc(this.q);
    this.t = new cl(paramContext);
    this.s = new dm(this.t);
    this.u = new dl(this.t);
    this.p = ((LocationManager)this.o.getSystemService("location"));
    this.v = db.a(this.o);
    this.v.f = this.B;
    o();
    List localList = this.p.getAllProviders();
    if ((localList != null) && (localList.contains("gps")) && (localList.contains("passive")));
    for (boolean bool = true; ; bool = false)
    {
      this.c = bool;
      if (paramContext == null)
        break;
      co.r = paramContext.getPackageName();
      return;
    }
    Log.d(co.r, "Error: No SD Card!");
  }

  private int a(HashMap paramHashMap)
  {
    Object localObject1;
    ArrayList localArrayList;
    int i1;
    Object localObject2;
    int i2;
    if (this.G > 4)
    {
      localObject1 = new ArrayList();
      localArrayList = new ArrayList();
      paramHashMap = paramHashMap.entrySet().iterator();
      i1 = 0;
      if (paramHashMap.hasNext())
      {
        localObject2 = (List)((Map.Entry)paramHashMap.next()).getValue();
        if (localObject2 == null)
          break label459;
        localObject2 = a((List)localObject2);
        if (localObject2 == null)
          break label459;
        ((List)localObject1).add(localObject2);
        i2 = i1 + 1;
        localArrayList.add(Integer.valueOf(i1));
        i1 = i2;
      }
    }
    label459: 
    while (true)
    {
      break;
      if (!((List)localObject1).isEmpty())
      {
        paramHashMap = new double[2];
        i2 = ((List)localObject1).size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject2 = (double[])((List)localObject1).get(i1);
          int i3 = ((Integer)localArrayList.get(i1)).intValue();
          localObject2[0] *= i3;
          localObject2[1] *= i3;
          paramHashMap[0] += localObject2[0];
          paramHashMap[1] += localObject2[1];
          i1 += 1;
        }
        paramHashMap[0] /= i2;
        paramHashMap[1] /= i2;
        double d2 = paramHashMap[0];
        double d3 = paramHashMap[1];
        double d1;
        if (d3 == 0.0D)
          if (d2 > 0.0D)
            d1 = 90.0D;
        while (true)
        {
          localObject1 = new double[2];
          localObject1[0] = Math.sqrt(d2 * d2 + d3 * d3);
          localObject1[1] = d1;
          String.format(Locale.CHINA, "%d,%d,%d,%d", new Object[] { Long.valueOf(Math.round(paramHashMap[0] * 100.0D)), Long.valueOf(Math.round(paramHashMap[1] * 100.0D)), Long.valueOf(Math.round(localObject1[0] * 100.0D)), Long.valueOf(Math.round(localObject1[1] * 100.0D)) });
          if (localObject1[0] > U)
            break;
          return 1;
          if (d2 < 0.0D)
          {
            d1 = 270.0D;
          }
          else
          {
            d1 = 0.0D;
            continue;
            d1 = Math.toDegrees(Math.atan(d2 / d3));
          }
        }
        if (localObject1[0] >= V)
          return 4;
      }
      return 3;
    }
  }

  public static ce a(Context paramContext)
  {
    if (k == null);
    synchronized (j)
    {
      if (k == null)
        k = new ce(paramContext);
      return k;
    }
  }

  public static String a(String paramString)
  {
    if (paramString.equals("version"))
      return "V1.0.0r";
    if (paramString.equals("date"))
      return "COL.15.0929r";
    return null;
  }

  private static double[] a(List paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      return null;
    double[] arrayOfDouble = new double[2];
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (GpsSatellite)localIterator.next();
      if (localObject != null)
      {
        double d1 = 90.0F - ((GpsSatellite)localObject).getElevation();
        double d2 = ((GpsSatellite)localObject).getAzimuth();
        localObject = new double[2];
        localObject[0] = (Math.sin(Math.toRadians(d2)) * d1);
        localObject[1] = (d1 * Math.cos(Math.toRadians(d2)));
        arrayOfDouble[0] += localObject[0];
        arrayOfDouble[1] += localObject[1];
      }
    }
    int i1 = paramList.size();
    arrayOfDouble[0] /= i1;
    arrayOfDouble[1] /= i1;
    return arrayOfDouble;
  }

  public static boolean d()
  {
    return a;
  }

  private void o()
  {
    this.m = (this.v.a * 1000);
    this.n = this.v.b;
  }

  public final void a()
  {
    this.t.a();
  }

  public final void a(int paramInt)
  {
    if (this.q == null);
    while (true)
    {
      return;
      co localco = this.q;
      if (paramInt == co.q)
        continue;
      try
      {
        localco.o.clear();
        if (localco.n != null)
        {
          localco.b(localco.n);
          localco.n = null;
        }
        if (localco.p != null)
        {
          localco.p.cancel();
          localco.p = null;
        }
        if (paramInt < 5000)
          continue;
        co.q = paramInt;
        localco.p = new Timer();
        localco.n = new cs(localco, (byte)0);
        localco.a(localco.n);
        localco.n();
        return;
      }
      finally
      {
      }
    }
  }

  public final void a(ck paramck, String paramString)
  {
    int i1 = 0;
    if (co.t);
    boolean bool;
    do
    {
      return;
      bool = this.v.a(paramString);
    }
    while (paramck == null);
    paramString = paramck.a();
    if ((bool) && (paramString != null))
    {
      localObject = ((ConnectivityManager)this.o.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).isConnected()))
      {
        if (((NetworkInfo)localObject).getType() != 1)
          break label140;
        localObject = this.v;
        localdb = this.v;
        localdb.b();
        i2 = localdb.d + paramString.length;
        ((db)localObject).b();
        i1 = i2;
        if (i2 < 0)
          i1 = 0;
        ((db)localObject).d = i1;
      }
    }
    paramck.c = bool;
    this.u.a(paramck);
    return;
    label140: Object localObject = this.v;
    db localdb = this.v;
    localdb.b();
    int i2 = localdb.e + paramString.length;
    ((db)localObject).b();
    if (i2 < 0);
    while (true)
    {
      ((db)localObject).e = i1;
      break;
      i1 = i2;
    }
  }

  public final void b()
  {
    co.s = true;
    if ((!this.c) || (this.q == null));
    while (a)
      return;
    IntentFilter localIntentFilter = new IntentFilter("android.location.GPS_ENABLED_CHANGE");
    localIntentFilter.addAction("android.location.GPS_FIX_CHANGE");
    b = true;
    this.o.registerReceiver(this.E, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.setPriority(1000);
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_EJECT");
    localIntentFilter.addDataScheme("file");
    this.o.registerReceiver(this.D, localIntentFilter);
    this.p.removeUpdates(this.C);
    if (this.y != null)
    {
      this.y.quit();
      this.y = null;
    }
    if (this.x != null)
    {
      this.x.interrupt();
      this.x = null;
    }
    this.x = new cx(this, "");
    this.x.start();
    this.q.a();
    a = true;
  }

  public final void c()
  {
    co.s = false;
    this.A = null;
    co.t = false;
    if ((!this.c) || (this.q == null));
    while (!a)
      return;
    if (this.E != null);
    try
    {
      this.o.unregisterReceiver(this.E);
      this.o.unregisterReceiver(this.D);
      label63: if (this.q != null)
        this.q.m();
      this.p.removeGpsStatusListener(this.z);
      this.p.removeNmeaListener(this.z);
      this.z = null;
      this.p.removeUpdates(this.C);
      if (this.y != null)
      {
        this.y.quit();
        this.y = null;
      }
      if (this.x != null)
      {
        this.x.interrupt();
        this.x = null;
      }
      this.q.b();
      a = false;
      return;
    }
    catch (Exception localException)
    {
      break label63;
    }
  }

  public final ck e()
  {
    if (this.u == null);
    do
    {
      return null;
      f();
    }
    while ((!this.v.a()) || (co.t));
    return this.u.a(this.v.c);
  }

  public final boolean f()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.q != null)
    {
      List localList = this.q.j();
      bool1 = bool2;
      if (localList.size() > 0)
        bool1 = this.t.b(((Long)localList.get(0)).longValue());
    }
    return bool1;
  }

  public final int g()
  {
    if (this.u != null)
      return this.u.a();
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ce
 * JD-Core Version:    0.6.2
 */