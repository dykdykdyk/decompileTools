package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class br
  implements am
{
  private b a;
  private float b = 10.0F;
  private int c = -16777216;
  private float d = 0.0F;
  private boolean e = true;
  private boolean f = false;
  private boolean g = false;
  private String h;
  private List<ak> i = new ArrayList();
  private List<LatLng> j = new ArrayList();
  private LatLngBounds k = null;

  public br(b paramb)
  {
    this.a = paramb;
    try
    {
      this.h = c();
      return;
    }
    catch (RemoteException paramb)
    {
      cz.a(paramb, "PolylineDelegateImp", "PolylineDelegateImp");
    }
  }

  private List<LatLng> m()
    throws RemoteException
  {
    if (this.i != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext())
      {
        ak localak = (ak)localIterator.next();
        if (localak != null)
        {
          x localx = new x();
          this.a.b(localak.a, localak.b, localx);
          localArrayList.add(new LatLng(localx.b, localx.a));
        }
      }
      return localArrayList;
    }
    return null;
  }

  ak a(ak paramak1, ak paramak2, ak paramak3, double paramDouble, int paramInt)
  {
    ak localak = new ak();
    double d1 = paramak2.a - paramak1.a;
    double d2 = paramak2.b - paramak1.b;
    double d3 = d2 * d2 / (d1 * d1);
    localak.b = ((int)(paramInt * paramDouble / Math.sqrt(d3 + 1.0D) + paramak3.b));
    localak.a = ((int)(d2 * (paramak3.b - localak.b) / d1 + paramak3.a));
    return localak;
  }

  public void a(float paramFloat)
    throws RemoteException
  {
    this.d = paramFloat;
    this.a.invalidate();
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.c = paramInt;
  }

  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if ((this.i == null) || (this.i.size() == 0) || (this.b <= 0.0F))
      return;
    Path localPath = new Path();
    Object localObject = new ab(((ak)this.i.get(0)).b, ((ak)this.i.get(0)).a);
    Point localPoint = new Point();
    localObject = this.a.r().a((ab)localObject, localPoint);
    localPath.moveTo(((Point)localObject).x, ((Point)localObject).y);
    int m = 1;
    while (m < this.i.size())
    {
      localObject = new ab(((ak)this.i.get(m)).b, ((ak)this.i.get(m)).a);
      localPoint = new Point();
      localObject = this.a.r().a((ab)localObject, localPoint);
      localPath.lineTo(((Point)localObject).x, ((Point)localObject).y);
      m += 1;
    }
    localObject = new Paint();
    ((Paint)localObject).setColor(h());
    ((Paint)localObject).setAntiAlias(true);
    ((Paint)localObject).setStrokeWidth(g());
    ((Paint)localObject).setStyle(Paint.Style.STROKE);
    ((Paint)localObject).setStrokeJoin(Paint.Join.ROUND);
    if (this.f)
    {
      m = (int)g();
      ((Paint)localObject).setPathEffect(new DashPathEffect(new float[] { m * 3, m, m * 3, m }, 1.0F));
    }
    paramCanvas.drawPath(localPath, (Paint)localObject);
  }

  void a(LatLng paramLatLng1, LatLng paramLatLng2, List<ak> paramList, LatLngBounds.Builder paramBuilder)
  {
    double d1 = Math.abs(paramLatLng1.longitude - paramLatLng2.longitude) * 3.141592653589793D / 180.0D;
    Object localObject = new LatLng((paramLatLng2.latitude + paramLatLng1.latitude) / 2.0D, (paramLatLng2.longitude + paramLatLng1.longitude) / 2.0D);
    paramBuilder.include(paramLatLng1).include((LatLng)localObject).include(paramLatLng2);
    if (((LatLng)localObject).latitude > 0.0D);
    for (int m = 1; ; m = -1)
    {
      paramBuilder = new ak();
      this.a.a(paramLatLng1.latitude, paramLatLng1.longitude, paramBuilder);
      paramLatLng1 = new ak();
      this.a.a(paramLatLng2.latitude, paramLatLng2.longitude, paramLatLng1);
      paramLatLng2 = new ak();
      this.a.a(((LatLng)localObject).latitude, ((LatLng)localObject).longitude, paramLatLng2);
      double d2 = Math.cos(0.5D * d1);
      paramLatLng2 = a(paramBuilder, paramLatLng1, paramLatLng2, Math.hypot(paramBuilder.a - paramLatLng1.a, paramBuilder.b - paramLatLng1.b) * 0.5D * Math.tan(0.5D * d1), m);
      localObject = new ArrayList();
      ((List)localObject).add(paramBuilder);
      ((List)localObject).add(paramLatLng2);
      ((List)localObject).add(paramLatLng1);
      a((List)localObject, paramList, d2);
      return;
    }
  }

  public void a(List<LatLng> paramList)
    throws RemoteException
  {
    if ((this.g) || (this.f))
      this.j = paramList;
    b(paramList);
  }

  void a(List<ak> paramList1, List<ak> paramList2, double paramDouble)
  {
    if (paramList1.size() != 3);
    while (true)
    {
      return;
      for (int m = 0; m <= 10; m = (int)(m + 1.0F))
      {
        float f1 = m / 10.0F;
        ak localak = new ak();
        double d1 = f1;
        double d2 = f1;
        double d3 = ((ak)paramList1.get(0)).a;
        double d4 = 2.0F * f1;
        double d5 = f1;
        double d6 = ((ak)paramList1.get(1)).a;
        double d7 = ((ak)paramList1.get(2)).a * (f1 * f1);
        double d8 = f1;
        double d9 = f1;
        double d10 = ((ak)paramList1.get(0)).b;
        double d11 = 2.0F * f1;
        double d12 = f1;
        double d13 = ((ak)paramList1.get(1)).b;
        double d14 = ((ak)paramList1.get(2)).b * (f1 * f1);
        double d15 = f1;
        double d16 = f1;
        double d17 = 2.0F * f1;
        double d18 = f1;
        double d19 = f1 * f1;
        double d20 = f1;
        double d21 = f1;
        double d22 = 2.0F * f1;
        double d23 = f1;
        double d24 = f1 * f1;
        localak.a = ((int)(((1.0D - d1) * (1.0D - d2) * d3 + d4 * (1.0D - d5) * d6 * paramDouble + d7) / ((1.0D - d15) * (1.0D - d16) + d17 * (1.0D - d18) * paramDouble + d19)));
        localak.b = ((int)(((1.0D - d8) * (1.0D - d9) * d10 + d11 * (1.0D - d12) * d13 * paramDouble + d14) / ((1.0D - d20) * (1.0D - d21) + d22 * (1.0D - d23) * paramDouble + d24)));
        paramList2.add(localak);
      }
    }
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.e = paramBoolean;
  }

  public boolean a()
  {
    if (this.k == null);
    LatLngBounds localLatLngBounds;
    do
    {
      return false;
      localLatLngBounds = this.a.w();
      if (localLatLngBounds == null)
        return true;
    }
    while ((!localLatLngBounds.contains(this.k)) && (!this.k.intersects(localLatLngBounds)));
    return true;
  }

  public boolean a(aj paramaj)
    throws RemoteException
  {
    return (equals(paramaj)) || (paramaj.c().equals(c()));
  }

  public void b()
    throws RemoteException
  {
    this.a.a(c());
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    this.b = paramFloat;
  }

  void b(List<LatLng> paramList)
    throws RemoteException
  {
    if ((paramList == null) || (paramList.size() == 0));
    LatLngBounds.Builder localBuilder;
    do
    {
      return;
      localBuilder = LatLngBounds.builder();
      this.i.clear();
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        paramList = null;
        while (localIterator.hasNext())
        {
          LatLng localLatLng = (LatLng)localIterator.next();
          if ((localLatLng != null) && (!localLatLng.equals(paramList)))
          {
            if (!this.g)
            {
              paramList = new ak();
              this.a.a(localLatLng.latitude, localLatLng.longitude, paramList);
              this.i.add(paramList);
              localBuilder.include(localLatLng);
            }
            while (true)
            {
              paramList = localLatLng;
              break;
              if (paramList != null)
                if (Math.abs(localLatLng.longitude - paramList.longitude) < 0.01D)
                {
                  ak localak = new ak();
                  this.a.a(paramList.latitude, paramList.longitude, localak);
                  this.i.add(localak);
                  localBuilder.include(paramList);
                  paramList = new ak();
                  this.a.a(localLatLng.latitude, localLatLng.longitude, paramList);
                  this.i.add(paramList);
                  localBuilder.include(localLatLng);
                }
                else
                {
                  a(paramList, localLatLng, this.i, localBuilder);
                }
            }
          }
        }
      }
    }
    while (this.i.size() <= 0);
    this.k = localBuilder.build();
  }

  public void b(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public String c()
    throws RemoteException
  {
    if (this.h == null)
      this.h = z.a("Polyline");
    return this.h;
  }

  public void c(boolean paramBoolean)
    throws RemoteException
  {
    if (this.g != paramBoolean)
      this.g = paramBoolean;
  }

  public float d()
    throws RemoteException
  {
    return this.d;
  }

  public boolean e()
    throws RemoteException
  {
    return this.e;
  }

  public int f()
    throws RemoteException
  {
    return super.hashCode();
  }

  public float g()
    throws RemoteException
  {
    return this.b;
  }

  public int h()
    throws RemoteException
  {
    return this.c;
  }

  public List<LatLng> i()
    throws RemoteException
  {
    if ((this.g) || (this.f))
      return this.j;
    return m();
  }

  public boolean j()
  {
    return this.f;
  }

  public boolean k()
  {
    return this.g;
  }

  public void l()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.br
 * JD-Core Version:    0.6.2
 */