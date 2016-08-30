package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import java.util.HashMap;

public class bk$e
  implements bs
{
  private float b = 0.0F;
  private HashMap<Float, Float> c = new HashMap();

  public bk$e(bk parambk)
  {
  }

  private int a(boolean paramBoolean)
  {
    int i = this.a.c.c();
    ab localab1 = a(0, this.a.c.d());
    ab localab2 = a(i, 0);
    if (paramBoolean)
      return Math.abs(localab1.a() - localab2.a());
    return Math.abs(localab1.b() - localab2.b());
  }

  public float a(float paramFloat)
  {
    float f = this.a.c.e();
    if ((this.c.size() > 30) || (f != this.b))
    {
      this.b = f;
      this.c.clear();
    }
    if (!this.c.containsKey(Float.valueOf(paramFloat)))
    {
      ab localab1 = a(0, 0);
      ab localab2 = a(0, 100);
      f = this.a.i.a(localab1, localab2);
      if (f <= 0.0F)
        return 0.0F;
      f = paramFloat / f;
      this.c.put(Float.valueOf(paramFloat), Float.valueOf(100.0F * f));
    }
    return ((Float)this.c.get(Float.valueOf(paramFloat))).floatValue();
  }

  public int a()
  {
    return a(false);
  }

  public Point a(ab paramab, Point paramPoint)
  {
    paramab = this.a.i.b(paramab, this.a.i.l, this.a.i.n, this.a.i.k);
    bn localbn = bk.d.a(this.a.c).F();
    Point localPoint = bk.d.a(this.a.c).a().i.n;
    int n;
    if (localbn.m)
      n = 1;
    while (true)
    {
      try
      {
        boolean bool = this.a.h.h.f();
        n = bool;
        if ((localbn.l) && (n != 0))
        {
          f1 = bn.j * ((int)paramab.x - localbn.f.x) + localbn.f.x + (localbn.g.x - localbn.f.x);
          f2 = bn.j * ((int)paramab.y - localbn.f.y) + localbn.f.y + (localbn.g.y - localbn.f.y);
          j = (int)f1;
          k = (int)f2;
          i = j;
          if (f1 >= j + 0.5D)
            i = j + 1;
          j = k;
          if (f2 >= k + 0.5D)
            j = k + 1;
          k = i;
          i = j;
          j = k;
          paramab = new Point(j, i);
          if (paramPoint != null)
          {
            paramPoint.x = paramab.x;
            paramPoint.y = paramab.y;
          }
          return paramab;
        }
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        continue;
        j = (int)paramab.x;
        i = (int)paramab.y;
        continue;
      }
      float f1 = this.a.i.c;
      float f2 = (int)paramab.x - localRemoteException.x;
      f1 = localRemoteException.x + f1 * f2;
      f2 = this.a.i.c * ((int)paramab.y - localRemoteException.y) + localRemoteException.y;
      int i = (int)f1;
      int m = (int)f2;
      int k = i;
      if (f1 >= i + 0.5D)
        k = i + 1;
      int j = k;
      i = m;
      if (f2 >= m + 0.5D)
      {
        i = m + 1;
        j = k;
      }
    }
  }

  public ab a(int paramInt1, int paramInt2)
  {
    PointF localPointF = new PointF(paramInt1, paramInt2);
    return this.a.i.a(localPointF, this.a.i.l, this.a.i.n, this.a.i.k, this.a.i.o);
  }

  public int b()
  {
    return a(true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bk.e
 * JD-Core Version:    0.6.2
 */