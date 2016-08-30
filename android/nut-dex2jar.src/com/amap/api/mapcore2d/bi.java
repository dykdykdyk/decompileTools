package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MarkerOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class bi
  implements ah
{
  private static int a = 0;
  private int b = 0;
  private float c = 0.0F;
  private CopyOnWriteArrayList<BitmapDescriptor> d = null;
  private int e = 20;
  private String f;
  private LatLng g;
  private LatLng h;
  private String i;
  private String j;
  private float k = 0.5F;
  private float l = 1.0F;
  private boolean m = false;
  private boolean n = true;
  private bc o;
  private Object p;
  private boolean q = false;
  private bi.a r;
  private boolean s = false;
  private int t;
  private int u;
  private float v;
  private int w;

  public bi(MarkerOptions paramMarkerOptions, bc parambc)
  {
    this.o = parambc;
    this.q = paramMarkerOptions.isGps();
    this.v = paramMarkerOptions.getZIndex();
    if ((paramMarkerOptions.getPosition() == null) || (this.q));
    try
    {
      parambc = fj.a(paramMarkerOptions.getPosition().longitude, paramMarkerOptions.getPosition().latitude);
      this.h = new LatLng(parambc[1], parambc[0]);
      this.g = paramMarkerOptions.getPosition();
      this.k = paramMarkerOptions.getAnchorU();
      this.l = paramMarkerOptions.getAnchorV();
      this.n = paramMarkerOptions.isVisible();
      this.j = paramMarkerOptions.getSnippet();
      this.i = paramMarkerOptions.getTitle();
      this.m = paramMarkerOptions.isDraggable();
      this.e = paramMarkerOptions.getPeriod();
      this.f = d();
      b(paramMarkerOptions.getIcons());
      if ((this.d != null) && (this.d.size() == 0))
        b(paramMarkerOptions.getIcon());
      return;
    }
    catch (Exception parambc)
    {
      while (true)
      {
        cz.a(parambc, "MarkerDelegateImp", "MarkerDelegateImp");
        this.h = paramMarkerOptions.getPosition();
      }
    }
  }

  private ak b(float paramFloat1, float paramFloat2)
  {
    float f1 = (float)(3.141592653589793D * this.c / 180.0D);
    ak localak = new ak();
    localak.a = ((int)(paramFloat1 * Math.cos(f1) + paramFloat2 * Math.sin(f1)));
    localak.b = ((int)(paramFloat2 * Math.cos(f1) - paramFloat1 * Math.sin(f1)));
    return localak;
  }

  private void b(BitmapDescriptor paramBitmapDescriptor)
  {
    if (paramBitmapDescriptor != null)
    {
      w();
      this.d.add(paramBitmapDescriptor.clone());
    }
    this.o.a().postInvalidate();
  }

  private static String c(String paramString)
  {
    a += 1;
    return paramString + a;
  }

  public BitmapDescriptor A()
  {
    if ((this.d == null) || (this.d.size() == 0))
    {
      w();
      this.d.add(BitmapDescriptorFactory.defaultMarker());
    }
    while (this.d.get(0) != null)
      return (BitmapDescriptor)this.d.get(0);
    this.d.clear();
    return A();
  }

  public float B()
  {
    return this.k;
  }

  public float C()
  {
    return this.l;
  }

  public void a(float paramFloat)
  {
    this.c = ((-paramFloat % 360.0F + 360.0F) % 360.0F);
    if (k())
    {
      this.o.e(this);
      this.o.d(this);
    }
    this.o.a().postInvalidate();
  }

  public void a(float paramFloat1, float paramFloat2)
  {
    if ((this.k == paramFloat1) && (this.l == paramFloat2))
      return;
    this.k = paramFloat1;
    this.l = paramFloat2;
    if (k())
    {
      this.o.e(this);
      this.o.d(this);
    }
    this.o.a().postInvalidate();
  }

  public void a(int paramInt)
    throws RemoteException
  {
    if (paramInt <= 1)
    {
      this.e = 1;
      return;
    }
    this.e = paramInt;
  }

  public void a(int paramInt1, int paramInt2)
  {
    this.t = paramInt1;
    this.u = paramInt2;
    this.s = true;
    if (k())
      i();
  }

  public void a(Canvas paramCanvas, ad paramad)
  {
    if ((!this.n) || (t() == null) || (A() == null));
    label188: 
    while (true)
    {
      return;
      ak localak;
      if (q())
      {
        localak = new ak(this.t, this.u);
        paramad = p();
        if (paramad != null)
          if (paramad.size() > 1)
            paramad = ((BitmapDescriptor)paramad.get(this.b)).getBitmap();
      }
      else
      {
        while (true)
        {
          if ((paramad == null) || (paramad.isRecycled()))
            break label188;
          paramCanvas.save();
          paramCanvas.rotate(this.c, localak.a, localak.b);
          paramCanvas.drawBitmap(paramad, localak.a - B() * paramad.getWidth(), localak.b - C() * paramad.getHeight(), null);
          paramCanvas.restore();
          return;
          localak = z();
          break;
          if (paramad.size() == 1)
            paramad = ((BitmapDescriptor)paramad.get(0)).getBitmap();
          else
            paramad = null;
        }
      }
    }
  }

  public void a(BitmapDescriptor paramBitmapDescriptor)
  {
    if ((paramBitmapDescriptor == null) || (this.d == null))
      return;
    this.d.clear();
    this.d.add(paramBitmapDescriptor);
    if (k())
    {
      this.o.e(this);
      this.o.d(this);
    }
    this.o.a().postInvalidate();
  }

  public void a(LatLng paramLatLng)
  {
    if (this.q)
    {
      this.h = paramLatLng;
      return;
    }
    this.g = paramLatLng;
  }

  public void a(Object paramObject)
  {
    this.p = paramObject;
  }

  public void a(String paramString)
  {
    this.i = paramString;
  }

  public void a(ArrayList<BitmapDescriptor> paramArrayList)
    throws RemoteException
  {
    if (paramArrayList == null)
      return;
    b(paramArrayList);
    if (this.r == null)
    {
      this.r = new bi.a(this, null);
      this.r.start();
    }
    if (k())
    {
      this.o.e(this);
      this.o.d(this);
    }
    this.o.a().postInvalidate();
  }

  public void a(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public boolean a()
  {
    return this.o.b(this);
  }

  public boolean a(ah paramah)
  {
    return (equals(paramah)) || (paramah.d().equals(d()));
  }

  public Rect b()
  {
    ak localak1 = z();
    if (localak1 == null)
      return new Rect(0, 0, 0, 0);
    int i1 = n();
    int i2 = y();
    Rect localRect = new Rect();
    if (this.c == 0.0F)
    {
      localRect.top = ((int)(localak1.b - i2 * this.l));
      localRect.left = ((int)(localak1.a - this.k * i1));
      f1 = localak1.b;
      localRect.bottom = ((int)(i2 * (1.0F - this.l) + f1));
      f1 = localak1.a;
      f2 = this.k;
      localRect.right = ((int)(f1 + i1 * (1.0F - f2)));
      return localRect;
    }
    ak localak2 = b(-this.k * i1, (this.l - 1.0F) * i2);
    ak localak3 = b(-this.k * i1, this.l * i2);
    ak localak4 = b((1.0F - this.k) * i1, this.l * i2);
    float f1 = this.k;
    float f2 = i1;
    float f3 = this.l;
    ak localak5 = b(f2 * (1.0F - f1), i2 * (f3 - 1.0F));
    localRect.top = (localak1.b - Math.max(localak2.b, Math.max(localak3.b, Math.max(localak4.b, localak5.b))));
    localRect.left = (localak1.a + Math.min(localak2.a, Math.min(localak3.a, Math.min(localak4.a, localak5.a))));
    localRect.bottom = (localak1.b - Math.min(localak2.b, Math.min(localak3.b, Math.min(localak4.b, localak5.b))));
    localRect.right = (localak1.a + Math.max(localak2.a, Math.max(localak3.a, Math.max(localak4.a, localak5.a))));
    return localRect;
  }

  public void b(float paramFloat)
  {
    this.v = paramFloat;
    this.o.d();
  }

  public void b(int paramInt)
  {
    this.w = paramInt;
  }

  public void b(LatLng paramLatLng)
  {
    if (this.q);
    try
    {
      double[] arrayOfDouble = fj.a(paramLatLng.longitude, paramLatLng.latitude);
      this.h = new LatLng(arrayOfDouble[1], arrayOfDouble[0]);
      this.s = false;
      this.g = paramLatLng;
      this.o.a().postInvalidate();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        cz.a(localException, "MarkerDelegateImp", "setPosition");
        this.h = paramLatLng;
      }
    }
  }

  public void b(String paramString)
  {
    this.j = paramString;
  }

  public void b(ArrayList<BitmapDescriptor> paramArrayList)
  {
    w();
    if (paramArrayList != null)
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        BitmapDescriptor localBitmapDescriptor = (BitmapDescriptor)localIterator.next();
        if (localBitmapDescriptor != null)
          this.d.add(localBitmapDescriptor.clone());
      }
      if ((paramArrayList.size() > 1) && (this.r == null))
      {
        this.r = new bi.a(this, null);
        this.r.start();
      }
    }
    this.o.a().postInvalidate();
  }

  public void b(boolean paramBoolean)
  {
    this.n = paramBoolean;
    if ((!paramBoolean) && (k()))
      this.o.e(this);
    this.o.a().postInvalidate();
  }

  public LatLng c()
  {
    if (this.s)
    {
      x localx = new x();
      this.o.a.a(this.t, this.u, localx);
      return new LatLng(localx.b, localx.a);
    }
    if (this.q)
      return this.h;
    return this.g;
  }

  public String d()
  {
    if (this.f == null)
      this.f = c("Marker");
    return this.f;
  }

  public x e()
  {
    x localx = new x();
    if ((this.d != null) && (this.d.size() != 0))
    {
      localx.a = (n() * this.k);
      localx.b = (y() * this.l);
    }
    return localx;
  }

  public String f()
  {
    return this.i;
  }

  public String g()
  {
    return this.j;
  }

  public boolean h()
  {
    return this.m;
  }

  public void i()
  {
    if (!s())
      return;
    this.o.d(this);
  }

  public void j()
  {
    if (k())
      this.o.e(this);
  }

  public boolean k()
  {
    return this.o.f(this);
  }

  public void l()
  {
    try
    {
      if (this.d == null)
      {
        this.g = null;
        this.p = null;
        this.r = null;
        return;
      }
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        Bitmap localBitmap = ((BitmapDescriptor)localIterator.next()).getBitmap();
        if (localBitmap != null)
          localBitmap.recycle();
      }
    }
    catch (Exception localException)
    {
      cz.a(localException, "MarkerDelegateImp", "destroy");
      Log.d("destroy erro", "MarkerDelegateImp destroy");
    }
    while (true)
    {
      this.r = null;
      return;
      this.d = null;
      this.g = null;
      this.p = null;
    }
  }

  public int m()
  {
    return super.hashCode();
  }

  public int n()
  {
    return A().getWidth();
  }

  public int o()
    throws RemoteException
  {
    return this.e;
  }

  public ArrayList<BitmapDescriptor> p()
  {
    if ((this.d != null) && (this.d.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
        localArrayList.add((BitmapDescriptor)localIterator.next());
      return localArrayList;
    }
    return null;
  }

  public boolean q()
  {
    return this.s;
  }

  public float r()
  {
    return this.v;
  }

  public boolean s()
  {
    return this.n;
  }

  public LatLng t()
  {
    if (this.s)
    {
      x localx = new x();
      this.o.a.a(this.t, this.u, localx);
      return new LatLng(localx.b, localx.a);
    }
    return this.g;
  }

  public Object u()
  {
    return this.p;
  }

  public int v()
  {
    return this.w;
  }

  void w()
  {
    if (this.d == null)
    {
      this.d = new CopyOnWriteArrayList();
      return;
    }
    this.d.clear();
  }

  public ak x()
  {
    if (t() == null)
      return null;
    ak localak = new ak();
    if (this.q);
    for (ab localab = new ab((int)(c().latitude * 1000000.0D), (int)(c().longitude * 1000000.0D)); ; localab = new ab((int)(t().latitude * 1000000.0D), (int)(t().longitude * 1000000.0D)))
    {
      Point localPoint = new Point();
      this.o.a().r().a(localab, localPoint);
      localak.a = localPoint.x;
      localak.b = localPoint.y;
      return localak;
    }
  }

  public int y()
  {
    return A().getHeight();
  }

  public ak z()
  {
    ak localak2 = x();
    ak localak1 = localak2;
    if (localak2 == null)
      localak1 = null;
    return localak1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bi
 * JD-Core Version:    0.6.2
 */