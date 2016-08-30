package com.nut.blehunter.ui.b;

import android.app.Activity;
import android.graphics.Color;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.aj;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.l;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.n;
import com.google.android.gms.maps.r;
import com.google.android.gms.maps.t;
import com.google.android.gms.maps.u;
import com.google.android.gms.maps.v;
import com.nut.blehunter.entity.Nut;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class e extends d
  implements LocationListener, com.google.android.gms.maps.k, l, com.google.android.gms.maps.m, n, com.google.android.gms.maps.o, com.google.android.gms.maps.p, v
{
  Handler m = new Handler();
  Runnable n = new f(this);
  private c o;
  private com.google.android.gms.maps.model.d p;
  private MapView q;
  private Geocoder r;
  private LocationManager s;
  private double t;
  private double u;
  private h v;
  private com.google.android.gms.maps.q w;
  private Map<String, com.google.android.gms.maps.model.f> x = new HashMap();

  private void a(com.google.android.gms.maps.a parama, boolean paramBoolean)
  {
    if (this.o == null)
      return;
    if (paramBoolean)
    {
      localc = this.o;
      try
      {
        localc.a.a(parama.a, 2000, null);
        return;
      }
      catch (RemoteException parama)
      {
        throw new RuntimeRemoteException(parama);
      }
    }
    c localc = this.o;
    try
    {
      localc.a.a(parama.a);
      return;
    }
    catch (RemoteException parama)
    {
    }
    throw new RuntimeRemoteException(parama);
  }

  private static LatLng b(com.nut.blehunter.entity.b paramb)
  {
    return new LatLng(paramb.a, paramb.b);
  }

  private static String b(Address paramAddress)
  {
    int i = 2;
    if (paramAddress == null)
      return "";
    while (true)
    {
      int j;
      try
      {
        StringBuffer localStringBuffer = new StringBuffer();
        j = paramAddress.getMaxAddressLineIndex();
        if (j > 2)
        {
          if (i >= 0)
          {
            localStringBuffer.append(paramAddress.getAddressLine(i));
            if (i == 0)
              break label81;
            localStringBuffer.append(",");
            break label81;
          }
          paramAddress = localStringBuffer.toString();
          return paramAddress;
        }
      }
      catch (Exception paramAddress)
      {
        b.a.a.b(paramAddress, "parseAddress Exception", new Object[0]);
        return "";
      }
      i = j;
      continue;
      label81: i -= 1;
    }
  }

  public final String a()
  {
    return e.class.getSimpleName();
  }

  public final String a(String paramString, com.nut.blehunter.entity.b paramb, int paramInt)
  {
    if (this.o == null)
    {
      b.a.a.d("addMarker params is error", new Object[0]);
      return null;
    }
    if (paramInt != 0);
    for (com.google.android.gms.maps.model.a locala = com.google.android.gms.maps.model.b.a(c(paramInt)); ; locala = com.google.android.gms.maps.model.b.a())
    {
      MarkerOptions localMarkerOptions = new MarkerOptions();
      paramb = localMarkerOptions.a(b(paramb.a()));
      paramb.e = locala;
      paramb.h = true;
      if (!TextUtils.isEmpty(paramString))
        localMarkerOptions.c = paramString;
      if (paramInt != 0)
      {
        localMarkerOptions.f = 0.5F;
        localMarkerOptions.g = 0.5F;
      }
      paramString = this.o.a(localMarkerOptions);
      if (d(paramInt))
        paramString.d();
      if (this.x != null)
        this.x.put(paramString.a(), paramString);
      return paramString.a();
    }
  }

  public final String a(String paramString, com.nut.blehunter.entity.b paramb, int paramInt, Nut paramNut)
  {
    if ((this.o == null) || (paramNut == null) || (getActivity() == null))
    {
      b.a.a.d("addMarker params is error", new Object[0]);
      return null;
    }
    paramNut = a(getActivity(), paramInt, paramNut);
    MarkerOptions localMarkerOptions = new MarkerOptions();
    paramb = localMarkerOptions.a(b(paramb.a()));
    paramb.e = com.google.android.gms.maps.model.b.a(com.nut.blehunter.d.o.a(getActivity(), paramNut));
    paramb.h = true;
    if (!TextUtils.isEmpty(paramString))
      localMarkerOptions.c = paramString;
    paramString = this.o.a(localMarkerOptions);
    if (this.x != null)
      this.x.put(paramString.a(), paramString);
    return paramString.a();
  }

  public final void a(float paramFloat)
  {
    a(com.google.android.gms.maps.b.a(paramFloat - 2.0F), true);
  }

  public final void a(int paramInt)
  {
    com.google.android.gms.maps.model.d locald;
    double d;
    if (this.p != null)
    {
      locald = this.p;
      d = paramInt;
    }
    try
    {
      locald.a.a(d);
      if (this.q != null)
        this.q.invalidate();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  // ERROR //
  public final void a(c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   5: aload_0
    //   6: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   9: ifnull +120 -> 129
    //   12: aload_0
    //   13: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   16: astore_1
    //   17: aload_1
    //   18: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   21: iconst_1
    //   22: invokeinterface 283 2 0
    //   27: aload_0
    //   28: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   31: invokevirtual 285	com/google/android/gms/maps/c:a	()V
    //   34: aload_0
    //   35: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   38: astore_1
    //   39: aload_0
    //   40: ifnonnull +147 -> 187
    //   43: aload_1
    //   44: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   47: aconst_null
    //   48: invokeinterface 288 2 0
    //   53: aload_0
    //   54: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   57: astore_1
    //   58: aload_0
    //   59: ifnonnull +159 -> 218
    //   62: aload_1
    //   63: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   66: aconst_null
    //   67: invokeinterface 291 2 0
    //   72: aload_0
    //   73: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   76: astore_1
    //   77: aload_0
    //   78: ifnonnull +171 -> 249
    //   81: aload_1
    //   82: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   85: aconst_null
    //   86: invokeinterface 294 2 0
    //   91: aload_0
    //   92: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   95: astore_1
    //   96: aload_0
    //   97: ifnonnull +183 -> 280
    //   100: aload_1
    //   101: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   104: aconst_null
    //   105: invokeinterface 297 2 0
    //   110: aload_0
    //   111: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   114: astore_1
    //   115: aload_0
    //   116: ifnonnull +195 -> 311
    //   119: aload_1
    //   120: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   123: aconst_null
    //   124: invokeinterface 300 2 0
    //   129: aload_0
    //   130: new 302	android/location/Geocoder
    //   133: dup
    //   134: aload_0
    //   135: invokevirtual 241	com/nut/blehunter/ui/b/e:getActivity	()Landroid/app/Activity;
    //   138: invokespecial 305	android/location/Geocoder:<init>	(Landroid/content/Context;)V
    //   141: putfield 156	com/nut/blehunter/ui/b/e:r	Landroid/location/Geocoder;
    //   144: aload_0
    //   145: invokevirtual 241	com/nut/blehunter/ui/b/e:getActivity	()Landroid/app/Activity;
    //   148: invokestatic 310	com/nut/blehunter/d/k:a	(Landroid/content/Context;)Lcom/nut/blehunter/entity/Position;
    //   151: astore_1
    //   152: aload_1
    //   153: ifnull +23 -> 176
    //   156: aload_0
    //   157: new 109	com/nut/blehunter/entity/b
    //   160: dup
    //   161: aload_1
    //   162: getfield 314	com/nut/blehunter/entity/Position:d	D
    //   165: aload_1
    //   166: getfield 316	com/nut/blehunter/entity/Position:c	D
    //   169: invokespecial 317	com/nut/blehunter/entity/b:<init>	(DD)V
    //   172: iconst_0
    //   173: invokevirtual 320	com/nut/blehunter/ui/b/e:a	(Lcom/nut/blehunter/entity/b;Z)V
    //   176: return
    //   177: astore_1
    //   178: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   181: dup
    //   182: aload_1
    //   183: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   186: athrow
    //   187: aload_1
    //   188: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   191: new 322	com/google/android/gms/maps/j
    //   194: dup
    //   195: aload_1
    //   196: aload_0
    //   197: invokespecial 325	com/google/android/gms/maps/j:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/n;)V
    //   200: invokeinterface 288 2 0
    //   205: goto -152 -> 53
    //   208: astore_1
    //   209: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   212: dup
    //   213: aload_1
    //   214: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   217: athrow
    //   218: aload_1
    //   219: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   222: new 327	com/google/android/gms/maps/g
    //   225: dup
    //   226: aload_1
    //   227: aload_0
    //   228: invokespecial 330	com/google/android/gms/maps/g:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V
    //   231: invokeinterface 291 2 0
    //   236: goto -164 -> 72
    //   239: astore_1
    //   240: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   243: dup
    //   244: aload_1
    //   245: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   248: athrow
    //   249: aload_1
    //   250: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   253: new 332	com/google/android/gms/maps/h
    //   256: dup
    //   257: aload_1
    //   258: aload_0
    //   259: invokespecial 335	com/google/android/gms/maps/h:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/m;)V
    //   262: invokeinterface 294 2 0
    //   267: goto -176 -> 91
    //   270: astore_1
    //   271: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   274: dup
    //   275: aload_1
    //   276: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   279: athrow
    //   280: aload_1
    //   281: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   284: new 337	com/google/android/gms/maps/i
    //   287: dup
    //   288: aload_1
    //   289: aload_0
    //   290: invokespecial 340	com/google/android/gms/maps/i:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V
    //   293: invokeinterface 297 2 0
    //   298: goto -188 -> 110
    //   301: astore_1
    //   302: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   305: dup
    //   306: aload_1
    //   307: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   310: athrow
    //   311: aload_1
    //   312: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   315: new 342	com/google/android/gms/maps/f
    //   318: dup
    //   319: aload_1
    //   320: aload_0
    //   321: invokespecial 345	com/google/android/gms/maps/f:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V
    //   324: invokeinterface 300 2 0
    //   329: goto -200 -> 129
    //   332: astore_1
    //   333: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   336: dup
    //   337: aload_1
    //   338: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   341: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   17	27	177	android/os/RemoteException
    //   43	53	208	android/os/RemoteException
    //   187	205	208	android/os/RemoteException
    //   62	72	239	android/os/RemoteException
    //   218	236	239	android/os/RemoteException
    //   81	91	270	android/os/RemoteException
    //   249	267	270	android/os/RemoteException
    //   100	110	301	android/os/RemoteException
    //   280	298	301	android/os/RemoteException
    //   119	129	332	android/os/RemoteException
    //   311	329	332	android/os/RemoteException
  }

  public final void a(CameraPosition paramCameraPosition)
  {
    if ((paramCameraPosition == null) || (paramCameraPosition.b == null))
      return;
    this.t = paramCameraPosition.b.b;
    this.u = paramCameraPosition.b.c;
    if (this.l != null)
      this.l.a(new com.nut.blehunter.entity.b(this.t, this.u, (byte)0));
    this.m.removeCallbacks(this.n);
    this.m.postDelayed(this.n, 600L);
  }

  public final void a(com.google.android.gms.maps.q paramq)
  {
    this.w = paramq;
    d();
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    new g(this, paramb).start();
  }

  public final void a(com.nut.blehunter.entity.b paramb, double paramDouble)
  {
    paramb = b(paramb.a());
    if (this.o != null)
    {
      c localc = this.o;
      CircleOptions localCircleOptions = new CircleOptions();
      localCircleOptions.b = paramb;
      localCircleOptions.c = paramDouble;
      localCircleOptions.e = Color.argb(50, 44, 155, 122);
      localCircleOptions.f = Color.argb(50, 68, 198, 151);
      localCircleOptions.d = 5.0F;
      this.p = localc.a(localCircleOptions);
    }
  }

  public final void a(com.nut.blehunter.entity.b paramb, boolean paramBoolean)
  {
    try
    {
      a(com.google.android.gms.maps.b.a(new CameraPosition(b(paramb.a()), 15.0F, 0.0F, 0.0F)), paramBoolean);
      return;
    }
    catch (Exception paramb)
    {
      paramb.printStackTrace();
    }
  }

  public final void a(String paramString)
  {
    if ((this.x != null) && (this.x.get(paramString) != null))
      paramString = (com.google.android.gms.maps.model.f)this.x.get(paramString);
    try
    {
      paramString.a.a();
      return;
    }
    catch (RemoteException paramString)
    {
    }
    throw new RuntimeRemoteException(paramString);
  }

  public final void a(String paramString, int paramInt)
  {
    if ((this.x != null) && (this.x.get(paramString) != null))
      if (paramInt == 0)
        break label50;
    label50: for (com.google.android.gms.maps.model.a locala = com.google.android.gms.maps.model.b.a(c(paramInt)); ; locala = com.google.android.gms.maps.model.b.a())
    {
      ((com.google.android.gms.maps.model.f)this.x.get(paramString)).a(locala);
      return;
    }
  }

  public final void a(String paramString, int paramInt, Nut paramNut)
  {
    if (((this.x != null) && (this.x.get(paramString) != null)) || (getActivity() == null))
    {
      paramNut = com.google.android.gms.maps.model.b.a(com.nut.blehunter.d.o.a(getActivity(), a(getActivity(), paramInt, paramNut)));
      ((com.google.android.gms.maps.model.f)this.x.get(paramString)).a(paramNut);
    }
  }

  public final void a(ArrayList<com.nut.blehunter.entity.b> paramArrayList)
  {
    if (paramArrayList.isEmpty())
      return;
    if (paramArrayList.size() == 1)
    {
      a((com.nut.blehunter.entity.b)paramArrayList.get(0), true);
      return;
    }
    com.google.android.gms.maps.model.e locale = new com.google.android.gms.maps.model.e();
    paramArrayList = paramArrayList.iterator();
    label129: label247: 
    while (paramArrayList.hasNext())
    {
      LatLng localLatLng = b(((com.nut.blehunter.entity.b)paramArrayList.next()).a());
      locale.a = Math.min(locale.a, localLatLng.b);
      locale.b = Math.max(locale.b, localLatLng.b);
      double d = localLatLng.c;
      if (Double.isNaN(locale.c))
      {
        locale.c = d;
        locale.d = d;
      }
      else
      {
        int i;
        if (locale.c <= locale.d)
          if ((locale.c <= d) && (d <= locale.d))
            i = 1;
        while (true)
        {
          if (i != 0)
            break label247;
          if (LatLngBounds.a(locale.c, d) >= LatLngBounds.b(locale.d, d))
            break label129;
          locale.c = d;
          break;
          i = 0;
          continue;
          if ((locale.c <= d) || (d <= locale.d))
            i = 1;
          else
            i = 0;
        }
      }
    }
    while (true)
    {
      try
      {
        if (!Double.isNaN(locale.c))
        {
          bool = true;
          com.google.android.gms.common.internal.b.a(bool, "no included points");
          a(com.google.android.gms.maps.b.a(new LatLngBounds(new LatLng(locale.a, locale.c), new LatLng(locale.b, locale.d))), true);
          return;
        }
      }
      catch (Exception paramArrayList)
      {
        paramArrayList.printStackTrace();
        return;
      }
      boolean bool = false;
    }
  }

  public final boolean a(com.google.android.gms.maps.model.f paramf)
  {
    if (a)
      paramf.d();
    if (this.i != null)
    {
      q localq = this.i;
      String str = paramf.a();
      paramf.c();
      new com.nut.blehunter.entity.b(paramf.b().b, paramf.b().c, (byte)0);
      localq.c(str);
    }
    return false;
  }

  public final float b(int paramInt)
  {
    if (paramInt <= 200)
      return 17.0F;
    if (paramInt <= 500)
      return 16.0F;
    if (paramInt <= 1000)
      return 15.0F;
    if (paramInt <= 2000)
      return 14.0F;
    if (paramInt <= 4000)
      return 13.0F;
    return 12.0F;
  }

  public final void b()
  {
    this.w = null;
    if (this.s != null)
      this.s.removeUpdates(this);
    this.s = null;
  }

  public final void b(String paramString)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      paramString = this.r.getFromLocationName(paramString, 5);
      if (paramString == null)
        return;
      if (paramString.isEmpty())
        return;
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        Address localAddress = (Address)paramString.next();
        localAddress.getLatitude();
        localAddress.getLongitude();
        localArrayList.add(b(localAddress));
      }
    }
    catch (Exception paramString)
    {
      b.a.a.b(paramString, "requestInputTips Exception", new Object[0]);
      return;
    }
    if (this.j != null)
      this.j.a(localArrayList);
  }

  public final void b(String paramString, int paramInt)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      paramString = this.r.getFromLocationName(paramString, paramInt);
      if (paramString == null)
        return;
      if (paramString.isEmpty())
        return;
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        Address localAddress = (Address)paramString.next();
        com.nut.blehunter.entity.b localb = new com.nut.blehunter.entity.b(localAddress.getLatitude(), localAddress.getLongitude(), (byte)0);
        a(b(localAddress), localb, 0);
        localArrayList.add(localb);
      }
    }
    catch (Exception paramString)
    {
      b.a.a.b(paramString, "doSearchQuery Exception", new Object[0]);
      return;
    }
    if (!localArrayList.isEmpty())
      a(localArrayList);
  }

  public final void c()
  {
    if (this.s != null)
      this.s.removeUpdates(this);
  }

  public final void d()
  {
    if (this.s == null)
      this.s = ((LocationManager)getActivity().getSystemService("location"));
    try
    {
      this.s.requestLocationUpdates("network", -1L, 25.0F, this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void e()
  {
    com.google.android.gms.maps.model.d locald;
    if (this.p != null)
      locald = this.p;
    try
    {
      locald.a.a();
      this.p = null;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void e_()
  {
    c localc;
    if (this.o != null)
      localc = this.o;
    try
    {
      localc.a.e();
      this.x.clear();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  // ERROR //
  public final void f_()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   4: ifnull +47 -> 51
    //   7: aload_0
    //   8: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   11: astore_1
    //   12: aload_0
    //   13: ifnonnull +55 -> 68
    //   16: aload_1
    //   17: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   20: aconst_null
    //   21: invokeinterface 601 2 0
    //   26: aload_0
    //   27: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   30: invokevirtual 604	com/google/android/gms/maps/c:b	()Lcom/google/android/gms/maps/w;
    //   33: astore_1
    //   34: aload_1
    //   35: getfield 609	com/google/android/gms/maps/w:a	Lcom/google/android/gms/maps/a/ab;
    //   38: iconst_1
    //   39: invokeinterface 614 2 0
    //   44: aload_0
    //   45: getfield 79	com/nut/blehunter/ui/b/e:o	Lcom/google/android/gms/maps/c;
    //   48: invokevirtual 285	com/google/android/gms/maps/c:a	()V
    //   51: aload_0
    //   52: getfield 617	com/nut/blehunter/ui/b/e:f	Lcom/nut/blehunter/ui/b/n;
    //   55: ifnull +12 -> 67
    //   58: aload_0
    //   59: getfield 617	com/nut/blehunter/ui/b/e:f	Lcom/nut/blehunter/ui/b/n;
    //   62: invokeinterface 621 1 0
    //   67: return
    //   68: aload_1
    //   69: getfield 84	com/google/android/gms/maps/c:a	Lcom/google/android/gms/maps/a/d;
    //   72: new 623	com/google/android/gms/maps/d
    //   75: dup
    //   76: aload_1
    //   77: aload_0
    //   78: invokespecial 626	com/google/android/gms/maps/d:<init>	(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/p;)V
    //   81: invokeinterface 601 2 0
    //   86: goto -60 -> 26
    //   89: astore_1
    //   90: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   93: dup
    //   94: aload_1
    //   95: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   98: athrow
    //   99: astore_1
    //   100: new 96	com/google/android/gms/maps/model/RuntimeRemoteException
    //   103: dup
    //   104: aload_1
    //   105: invokespecial 99	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   108: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   16	26	89	android/os/RemoteException
    //   68	86	89	android/os/RemoteException
    //   34	44	99	android/os/RemoteException
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.v = new h(this, (byte)0);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903140, paramViewGroup, false);
    this.q = ((MapView)paramLayoutInflater.findViewById(2131558787));
    paramViewGroup = this.q;
    Object localObject = paramViewGroup.a;
    ((com.google.android.gms.dynamic.b)localObject).a(paramBundle, new com.google.android.gms.dynamic.d((com.google.android.gms.dynamic.b)localObject, paramBundle));
    if (paramViewGroup.a.a == null)
    {
      paramBundle = paramViewGroup.getContext();
      int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramBundle);
      String str = aj.a(paramBundle, i, GooglePlayServicesUtil.zzam(paramBundle));
      localObject = aj.b(paramBundle, i);
      LinearLayout localLinearLayout = new LinearLayout(paramViewGroup.getContext());
      localLinearLayout.setOrientation(1);
      localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramViewGroup.addView(localLinearLayout);
      paramViewGroup = new TextView(paramViewGroup.getContext());
      paramViewGroup.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramViewGroup.setText(str);
      localLinearLayout.addView(paramViewGroup);
      if (localObject != null)
      {
        paramViewGroup = new Button(paramBundle);
        paramViewGroup.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        paramViewGroup.setText((CharSequence)localObject);
        localLinearLayout.addView(paramViewGroup);
        paramViewGroup.setOnClickListener(new com.google.android.gms.dynamic.e(paramBundle, i));
      }
    }
    u.a(getActivity());
    paramViewGroup = this.q;
    if (Looper.myLooper() != Looper.getMainLooper())
      throw new IllegalStateException("getMapAsync() must be called on the main thread");
    paramViewGroup = paramViewGroup.a;
    if (paramViewGroup.a != null)
    {
      ((r)paramViewGroup.a).a(this);
      return paramLayoutInflater;
    }
    paramViewGroup.e.add(this);
    return paramLayoutInflater;
  }

  public void onDestroy()
  {
    if (this.s != null)
      this.s.removeUpdates(this);
    t localt;
    if (this.q != null)
    {
      localt = this.q.a;
      if (localt.a == null)
        break label51;
      localt.a.c();
    }
    while (true)
    {
      super.onDestroy();
      return;
      label51: localt.a(1);
    }
  }

  public void onLocationChanged(Location paramLocation)
  {
    double d1 = paramLocation.getLatitude();
    double d2 = paramLocation.getLongitude();
    if (this.w != null)
    {
      if (com.nut.blehunter.o.a().a(d1, d2))
      {
        double[] arrayOfDouble = com.nut.blehunter.d.f.a(d1, d2);
        paramLocation.setLatitude(arrayOfDouble[0]);
        paramLocation.setLongitude(arrayOfDouble[1]);
      }
      this.w.a(paramLocation);
    }
    if (this.g != null)
      this.g.a(new com.nut.blehunter.entity.b(d1, d2));
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    t localt = this.q.a;
    if (localt.a != null)
      localt.a.d();
  }

  public void onPause()
  {
    super.onPause();
    t localt = this.q.a;
    if (localt.a != null)
    {
      localt.a.b();
      return;
    }
    localt.a(5);
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onResume()
  {
    super.onResume();
    t localt = this.q.a;
    localt.a(null, new com.google.android.gms.dynamic.f(localt));
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    t localt = this.q.a;
    if (localt.a != null)
      localt.a.b(paramBundle);
    while (localt.b == null)
      return;
    paramBundle.putAll(localt.b);
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.e
 * JD-Core Version:    0.6.2
 */