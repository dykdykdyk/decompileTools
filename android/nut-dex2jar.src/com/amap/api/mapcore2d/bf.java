package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import java.util.ArrayList;

class bf
{
  public int a = 256;
  public int b = 256;
  float c = 1.0F;
  public double d = 156543.03390000001D;
  int e = 0;
  double f = -20037508.34D;
  double g = 20037508.34D;
  public int h = v.d;
  public int i = v.c;
  public float j = 10.0F;
  public double k = 0.0D;
  public ab l = null;
  public ab m = null;
  public Point n = null;
  public bf.a o = null;
  bk.d p = null;
  private double q = 116.39716D;
  private double r = 39.916690000000003D;
  private double s = 0.01745329251994329D;

  public bf(bk.d paramd)
  {
    this.p = paramd;
  }

  public float a(ab paramab1, ab paramab2)
  {
    double d4 = w.a(paramab1.c());
    double d3 = w.a(paramab1.d());
    double d2 = w.a(paramab2.c());
    double d1 = w.a(paramab2.d());
    double d5 = d4 * this.s;
    double d6 = d3 * this.s;
    d3 = d2 * this.s;
    d4 = d1 * this.s;
    d1 = Math.sin(d5);
    d2 = Math.sin(d6);
    d5 = Math.cos(d5);
    d6 = Math.cos(d6);
    double d7 = Math.sin(d3);
    double d8 = Math.sin(d4);
    d3 = Math.cos(d3);
    d4 = Math.cos(d4);
    paramab1 = new double[3];
    paramab2 = new double[3];
    paramab1[0] = (d5 * d6);
    paramab1[1] = (d6 * d1);
    paramab1[2] = d2;
    paramab2[0] = (d4 * d3);
    paramab2[1] = (d4 * d7);
    paramab2[2] = d8;
    return (float)(Math.asin(Math.sqrt((paramab1[0] - paramab2[0]) * (paramab1[0] - paramab2[0]) + (paramab1[1] - paramab2[1]) * (paramab1[1] - paramab2[1]) + (paramab1[2] - paramab2[2]) * (paramab1[2] - paramab2[2])) / 2.0D) * 12742001.579854401D);
  }

  public PointF a(int paramInt1, int paramInt2)
  {
    double d1 = 0.0D;
    double d2 = this.a * paramInt1;
    double d3 = this.k;
    double d4 = this.f;
    if (this.e == 0)
      d1 = this.g - this.a * paramInt2 * this.k;
    while (true)
    {
      return a(new ab(d1, d4 + d2 * d3, false), this.l, this.n, this.k);
      if (this.e == 1)
      {
        d1 = (paramInt2 + 1) * this.a;
        d1 = this.k * d1;
      }
    }
  }

  PointF a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, PointF paramPointF, int paramInt5, int paramInt6)
  {
    PointF localPointF = new PointF();
    localPointF.x = ((paramInt1 - paramInt3) * this.a + paramPointF.x);
    if (this.e == 0)
      localPointF.y = ((paramInt2 - paramInt4) * this.a + paramPointF.y);
    while (true)
    {
      if ((localPointF.x + this.a > 0.0F) && (localPointF.x < paramInt5) && (localPointF.y + this.a > 0.0F))
      {
        paramPointF = localPointF;
        if (localPointF.y < paramInt6);
      }
      else
      {
        paramPointF = null;
      }
      return paramPointF;
      if (this.e == 1)
        paramPointF.y -= (paramInt2 - paramInt4) * this.a;
    }
  }

  PointF a(ab paramab1, ab paramab2, Point paramPoint, double paramDouble)
  {
    PointF localPointF = new PointF();
    localPointF.x = ((float)((paramab1.e() - paramab2.e()) / paramDouble + paramPoint.x));
    localPointF.y = ((float)(paramPoint.y - (paramab1.f() - paramab2.f()) / paramDouble));
    return localPointF;
  }

  public ab a(PointF paramPointF, ab paramab, Point paramPoint, double paramDouble, bf.a parama)
  {
    return b(b(paramPointF, paramab, paramPoint, paramDouble, parama));
  }

  public ab a(ab paramab)
  {
    if (paramab == null)
      return null;
    double d1 = paramab.b() / 1000000.0D;
    double d2 = paramab.a() / 1000000.0D * 20037508.34D / 180.0D;
    return new ab(Math.log(Math.tan((d1 + 90.0D) * 3.141592653589793D / 360.0D)) / 0.0174532925199433D * 20037508.34D / 180.0D, d2, false);
  }

  public ArrayList<cc> a(ab paramab, int paramInt1, int paramInt2, int paramInt3)
  {
    double d2 = this.k;
    int i5 = (int)((paramab.e() - this.f) / (this.a * d2));
    double d3 = this.a * i5;
    double d4 = this.f;
    double d1 = 0.0D;
    int i2;
    if (this.e == 0)
    {
      i2 = (int)((this.g - paramab.f()) / (this.a * d2));
      d1 = this.g - this.a * i2 * d2;
    }
    while (true)
    {
      paramab = a(new ab(d1, d4 + d3 * d2, false), paramab, this.n, d2);
      Object localObject = new cc(i5, i2, b(), -1);
      ((cc)localObject).f = paramab;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localObject);
      int i3 = 1;
      paramInt1 = 0;
      int i4 = i5 - i3;
      label175: int i6;
      int i1;
      if (i4 <= i5 + i3)
      {
        i6 = i2 + i3;
        localObject = a(i4, i6, i5, i2, paramab, paramInt2, paramInt3);
        i1 = paramInt1;
        if (localObject != null)
        {
          if (paramInt1 != 0)
            break label595;
          paramInt1 = 1;
        }
      }
      label404: label589: label595: 
      while (true)
      {
        cc localcc = new cc(i4, i6, b(), -1);
        localcc.f = ((PointF)localObject);
        localArrayList.add(localcc);
        i1 = paramInt1;
        i6 = i2 - i3;
        localObject = a(i4, i6, i5, i2, paramab, paramInt2, paramInt3);
        paramInt1 = i1;
        if (localObject != null)
        {
          paramInt1 = i1;
          if (i1 == 0)
            paramInt1 = 1;
          localcc = new cc(i4, i6, b(), -1);
          localcc.f = ((PointF)localObject);
          localArrayList.add(localcc);
        }
        i4 += 1;
        break label175;
        if (this.e != 1)
          break label598;
        i2 = (int)((paramab.f() - this.g) / (this.a * d2));
        d1 = (i2 + 1) * this.a * d2;
        break;
        i4 = i2 + i3 - 1;
        i1 = paramInt1;
        if (i4 > i2 - i3)
        {
          i6 = i5 + i3;
          localObject = a(i6, i4, i5, i2, paramab, paramInt2, paramInt3);
          paramInt1 = i1;
          if (localObject != null)
            if (i1 != 0)
              break label589;
        }
        for (paramInt1 = 1; ; paramInt1 = i1)
        {
          localcc = new cc(i6, i4, b(), -1);
          localcc.f = ((PointF)localObject);
          localArrayList.add(localcc);
          i6 = i5 - i3;
          localObject = a(i6, i4, i5, i2, paramab, paramInt2, paramInt3);
          i1 = paramInt1;
          if (localObject != null)
          {
            i1 = paramInt1;
            if (paramInt1 == 0)
              i1 = 1;
            localcc = new cc(i6, i4, b(), -1);
            localcc.f = ((PointF)localObject);
            localArrayList.add(localcc);
          }
          i4 -= 1;
          break label404;
          if (i1 != 0)
          {
            i3 += 1;
            break;
          }
          return localArrayList;
        }
      }
      label598: i2 = 0;
    }
  }

  public void a()
  {
    this.d = (this.g * 2.0D / this.a);
    int i1 = (int)this.j;
    this.k = (this.d / (1 << i1) / (1.0F + this.j - i1));
    this.l = a(new ab(this.r, this.q, true));
    this.m = this.l.g();
    this.n = new Point(this.p.c() / 2, this.p.d() / 2);
    this.o = new bf.a();
    this.o.a = -20037508.0F;
    this.o.b = 20037508.0F;
    this.o.c = 20037508.0F;
    this.o.d = -20037508.0F;
  }

  public void a(Point paramPoint)
  {
    this.n = paramPoint;
  }

  public void a(PointF paramPointF1, PointF paramPointF2, float paramFloat)
  {
    double d1 = this.k;
    paramPointF1 = b(paramPointF1, this.l, this.n, d1, this.o);
    paramPointF2 = b(paramPointF2, this.l, this.n, d1, this.o);
    d1 = paramPointF2.e();
    double d4 = paramPointF1.e();
    double d2 = paramPointF2.f();
    double d3 = paramPointF1.f();
    d1 = this.l.e() + (d1 - d4);
    d3 = this.l.f() + (d2 - d3);
    while (true)
    {
      d2 = d1;
      if (d1 >= this.o.a)
        break;
      d1 += this.o.b - this.o.a;
    }
    while (true)
    {
      d1 = d3;
      if (d2 <= this.o.b)
        break;
      d2 -= this.o.b - this.o.a;
    }
    while (true)
    {
      d3 = d1;
      if (d1 >= this.o.d)
        break;
      d1 += this.o.c - this.o.d;
    }
    while (d3 > this.o.c)
      d3 -= this.o.c - this.o.d;
    this.l.b(d3);
    this.l.a(d2);
  }

  int b()
  {
    int i1 = (int)this.j;
    if (this.j - i1 < bk.a)
      return i1;
    return i1 + 1;
  }

  public PointF b(ab paramab1, ab paramab2, Point paramPoint, double paramDouble)
  {
    paramab1 = a(a(paramab1), paramab2, paramPoint, paramDouble);
    return this.p.g().b(paramab1);
  }

  ab b(PointF paramPointF, ab paramab, Point paramPoint, double paramDouble, bf.a parama)
  {
    paramPointF = this.p.g().c(paramPointF);
    float f1 = paramPointF.x;
    float f2 = paramPoint.x;
    float f3 = paramPointF.y;
    float f4 = paramPoint.y;
    double d1 = paramab.e();
    d1 = (f1 - f2) * paramDouble + d1;
    double d2 = paramab.f();
    double d3 = f3 - f4;
    while (d1 < parama.a)
      d1 += parama.b - parama.a;
    while (true)
      if (d1 > parama.b)
        d1 -= parama.b - parama.a;
      else
        while (true)
          if (paramDouble < parama.d)
          {
            paramDouble += parama.c - parama.d;
          }
          else
          {
            while (true)
              if (paramDouble > parama.c)
                paramDouble -= parama.c - parama.d;
              else
                return new ab(paramDouble, d1, false);
            paramDouble = d2 - d3 * paramDouble;
          }
  }

  public ab b(ab paramab)
  {
    float f1 = (float)(paramab.e() * 180.0D / 20037508.34D);
    return new ab((int)((float)(57.295779513082323D * (2.0D * Math.atan(Math.exp((float)(paramab.f() * 180.0D / 20037508.34D) * 3.141592653589793D / 180.0D)) - 1.570796326794897D)) * 1000000.0D), (int)(f1 * 1000000.0D));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bf
 * JD-Core Version:    0.6.2
 */