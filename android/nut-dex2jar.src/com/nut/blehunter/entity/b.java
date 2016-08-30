package com.nut.blehunter.entity;

import com.nut.blehunter.d.f;
import com.nut.blehunter.o;

public final class b
{
  public double a;
  public double b;

  private b()
  {
  }

  public b(double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  public b(double paramDouble1, double paramDouble2, byte paramByte)
  {
    if (o.a().a(paramDouble1, paramDouble2))
    {
      double[] arrayOfDouble1 = new double[2];
      double[] arrayOfDouble2 = f.b(paramDouble1, paramDouble2);
      arrayOfDouble1[0] = (paramDouble1 - arrayOfDouble2[0]);
      arrayOfDouble1[1] = (paramDouble2 - arrayOfDouble2[1]);
      this.a = arrayOfDouble1[0];
      this.b = arrayOfDouble1[1];
      return;
    }
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  public final b a()
  {
    double[] arrayOfDouble;
    double d2;
    if (o.a().a(this.a, this.b))
    {
      arrayOfDouble = f.a(this.a, this.b);
      d2 = arrayOfDouble[0];
    }
    for (double d1 = arrayOfDouble[1]; ; d1 = this.b)
    {
      return new b(d2, d1);
      d2 = this.a;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.b
 * JD-Core Version:    0.6.2
 */