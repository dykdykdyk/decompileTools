package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLng;

class a
{
  private b a;
  private int b;

  public a(b paramb)
  {
    this.a = paramb;
  }

  protected void a(r paramr)
    throws RemoteException
  {
    while (true)
    {
      float f1;
      try
      {
        if (this.a == null)
          break;
        if (this.a.C() == null)
          return;
        f1 = this.a.e();
        if (paramr.a == r.a.h)
        {
          this.a.b.b((int)paramr.b, (int)paramr.c);
          this.a.postInvalidate();
          if ((f1 == this.b) || (!this.a.p().a()))
            break;
          this.a.M();
          return;
        }
      }
      catch (Exception paramr)
      {
        cz.a(paramr, "AMapCallback", "runCameraUpdate");
        return;
      }
      if (paramr.a == r.a.b)
      {
        this.a.C().c();
      }
      else if (paramr.a == r.a.e)
      {
        this.a.C().d();
      }
      else
      {
        float f2;
        if (paramr.a == r.a.f)
        {
          f2 = paramr.d;
          this.a.C().c(f2);
        }
        else if (paramr.a == r.a.g)
        {
          f2 = paramr.e;
          f2 = this.a.a(f2 + f1);
          paramr = paramr.h;
          if (paramr != null)
            this.a.a(f2 - f1, paramr, false);
          else
            this.a.C().c(f2);
        }
        else
        {
          int i;
          int j;
          if (paramr.a == r.a.i)
          {
            paramr = paramr.f;
            i = (int)(paramr.target.latitude * 1000000.0D);
            j = (int)(paramr.target.longitude * 1000000.0D);
            this.a.C().a(new ab(i, j), paramr.zoom);
          }
          else if (paramr.a == r.a.c)
          {
            paramr = paramr.f;
            i = (int)(paramr.target.latitude * 1000000.0D);
            j = (int)(paramr.target.longitude * 1000000.0D);
            this.a.C().a(new ab(i, j));
            q.a().b();
          }
          else if ((paramr.a == r.a.j) || (paramr.a == r.a.k))
          {
            this.a.a(paramr, false, -1L);
          }
          else
          {
            paramr.i = true;
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.a
 * JD-Core Version:    0.6.2
 */