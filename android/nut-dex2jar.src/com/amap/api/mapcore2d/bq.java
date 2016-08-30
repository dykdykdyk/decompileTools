package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint;
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
import java.util.List<Lcom.amap.api.maps2d.model.LatLng;>;

class bq
  implements al
{
  private b a;
  private float b = 0.0F;
  private boolean c = true;
  private String d;
  private float e;
  private int f;
  private int g;
  private List<ak> h = new ArrayList();
  private LatLngBounds i = null;

  public bq(b paramb)
  {
    this.a = paramb;
    try
    {
      this.d = c();
      return;
    }
    catch (RemoteException paramb)
    {
      cz.a(paramb, "PolygonDelegateImp", "PolygonDelegateImp");
    }
  }

  public void a(float paramFloat)
    throws RemoteException
  {
    this.b = paramFloat;
    this.a.invalidate();
  }

  public void a(int paramInt)
    throws RemoteException
  {
    this.f = paramInt;
  }

  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if ((this.h == null) || (this.h.size() == 0))
      return;
    Path localPath = new Path();
    Object localObject = new ab(((ak)this.h.get(0)).b, ((ak)this.h.get(0)).a);
    Point localPoint = new Point();
    localObject = this.a.r().a((ab)localObject, localPoint);
    localPath.moveTo(((Point)localObject).x, ((Point)localObject).y);
    int j = 1;
    while (j < this.h.size())
    {
      localObject = new ab(((ak)this.h.get(j)).b, ((ak)this.h.get(j)).a);
      localPoint = new Point();
      localObject = this.a.r().a((ab)localObject, localPoint);
      localPath.lineTo(((Point)localObject).x, ((Point)localObject).y);
      j += 1;
    }
    localObject = new Paint();
    ((Paint)localObject).setColor(h());
    ((Paint)localObject).setAntiAlias(true);
    localPath.close();
    ((Paint)localObject).setStyle(Paint.Style.FILL);
    paramCanvas.drawPath(localPath, (Paint)localObject);
    ((Paint)localObject).setStyle(Paint.Style.STROKE);
    ((Paint)localObject).setColor(j());
    ((Paint)localObject).setStrokeWidth(g());
    paramCanvas.drawPath(localPath, (Paint)localObject);
  }

  public void a(List<LatLng> paramList)
    throws RemoteException
  {
    b(paramList);
  }

  public void a(boolean paramBoolean)
    throws RemoteException
  {
    this.c = paramBoolean;
  }

  public boolean a()
  {
    if (this.i == null);
    LatLngBounds localLatLngBounds;
    do
    {
      return false;
      localLatLngBounds = this.a.w();
      if (localLatLngBounds == null)
        return true;
    }
    while ((!this.i.contains(localLatLngBounds)) && (!this.i.intersects(localLatLngBounds)));
    return true;
  }

  public boolean a(aj paramaj)
    throws RemoteException
  {
    return (equals(paramaj)) || (paramaj.c().equals(c()));
  }

  public boolean a(LatLng paramLatLng)
    throws RemoteException
  {
    return cz.a(paramLatLng, i());
  }

  public void b()
    throws RemoteException
  {
    this.a.a(c());
  }

  public void b(float paramFloat)
    throws RemoteException
  {
    this.e = paramFloat;
  }

  public void b(int paramInt)
    throws RemoteException
  {
    this.g = paramInt;
  }

  void b(List<LatLng> paramList)
    throws RemoteException
  {
    LatLngBounds.Builder localBuilder = LatLngBounds.builder();
    this.h.clear();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      paramList = null;
      Object localObject;
      while (localIterator.hasNext())
      {
        localObject = (LatLng)localIterator.next();
        if (!((LatLng)localObject).equals(paramList))
        {
          paramList = new ak();
          this.a.a(((LatLng)localObject).latitude, ((LatLng)localObject).longitude, paramList);
          this.h.add(paramList);
          localBuilder.include((LatLng)localObject);
          paramList = (List<LatLng>)localObject;
        }
      }
      int j = this.h.size();
      if (j > 1)
      {
        paramList = (ak)this.h.get(0);
        localObject = (ak)this.h.get(j - 1);
        if ((paramList.a == ((ak)localObject).a) && (paramList.b == ((ak)localObject).b))
          this.h.remove(j - 1);
      }
    }
    this.i = localBuilder.build();
  }

  public String c()
    throws RemoteException
  {
    if (this.d == null)
      this.d = z.a("Polygon");
    return this.d;
  }

  public float d()
    throws RemoteException
  {
    return this.b;
  }

  public boolean e()
    throws RemoteException
  {
    return this.c;
  }

  public int f()
    throws RemoteException
  {
    return super.hashCode();
  }

  public float g()
    throws RemoteException
  {
    return this.e;
  }

  public int h()
    throws RemoteException
  {
    return this.f;
  }

  public List<LatLng> i()
    throws RemoteException
  {
    return k();
  }

  public int j()
    throws RemoteException
  {
    return this.g;
  }

  List<LatLng> k()
    throws RemoteException
  {
    if (this.h != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.h.iterator();
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

  public void l()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bq
 * JD-Core Version:    0.6.2
 */