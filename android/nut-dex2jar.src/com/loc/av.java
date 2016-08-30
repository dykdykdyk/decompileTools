package com.loc;

import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;

public final class av
{
  private static av a = null;
  private AmapLoc b = null;
  private long c = 0L;
  private long d = 0L;

  public static av a()
  {
    try
    {
      if (a == null)
        a = new av();
      av localav = a;
      return localav;
    }
    finally
    {
    }
  }

  private static AmapLoc b(AmapLoc paramAmapLoc)
  {
    if ((by.a(paramAmapLoc)) && ((paramAmapLoc.b() == 5) || (paramAmapLoc.b() == 6)))
      paramAmapLoc.a(2);
    return paramAmapLoc;
  }

  public final AmapLoc a(AmapLoc paramAmapLoc)
  {
    while (true)
    {
      float f2;
      float f3;
      try
      {
        AmapLoc localAmapLoc;
        if ((!by.a(this.b)) || (!by.a(paramAmapLoc)))
        {
          this.c = by.b();
          this.b = paramAmapLoc;
          localAmapLoc = this.b;
          return localAmapLoc;
        }
        if (paramAmapLoc.k() == this.b.k())
        {
          localAmapLoc = paramAmapLoc;
          if (paramAmapLoc.j() < 300.0F)
            continue;
        }
        if (paramAmapLoc.g().equals("gps"))
        {
          this.c = by.b();
          this.b = paramAmapLoc;
          localAmapLoc = this.b;
          continue;
        }
        if (paramAmapLoc.A() != this.b.A())
        {
          this.c = by.b();
          this.b = paramAmapLoc;
          localAmapLoc = this.b;
          continue;
        }
        if ((!paramAmapLoc.z().equals(this.b.z())) && (!TextUtils.isEmpty(paramAmapLoc.z())))
        {
          this.c = by.b();
          this.b = paramAmapLoc;
          localAmapLoc = this.b;
          continue;
        }
        float f1 = by.a(paramAmapLoc, this.b);
        f2 = this.b.j();
        f3 = paramAmapLoc.j();
        float f4 = f3 - f2;
        long l1 = by.b();
        long l2 = this.c;
        if ((f2 < 101.0F) && (f3 > 299.0F))
        {
          if (this.d == 0L)
          {
            this.d = l1;
            this.b = b(this.b);
            localAmapLoc = this.b;
            continue;
          }
          if (l1 - this.d <= 30000L)
            continue;
          this.c = l1;
          this.b = paramAmapLoc;
          this.d = 0L;
          localAmapLoc = this.b;
          continue;
          if ((f3 < 100.0F) && (f2 > 299.0F))
          {
            this.c = l1;
            this.b = paramAmapLoc;
            this.d = 0L;
            localAmapLoc = this.b;
            continue;
          }
          if (f3 <= 299.0F)
            this.d = 0L;
          if ((f1 < 10.0F) && (f1 > 0.1D))
          {
            if (f4 >= -300.0F)
            {
              this.b = b(this.b);
              localAmapLoc = this.b;
              continue;
            }
            if (f2 / f3 >= 2.0F)
            {
              this.c = l1;
              this.b = paramAmapLoc;
              localAmapLoc = this.b;
              continue;
            }
            this.b = b(this.b);
            localAmapLoc = this.b;
            continue;
          }
          if (f4 >= 300.0F)
          {
            if (l1 - l2 >= 30000L)
            {
              this.c = by.b();
              this.b = paramAmapLoc;
              localAmapLoc = this.b;
              continue;
            }
            this.b = b(this.b);
            localAmapLoc = this.b;
            continue;
          }
          this.c = by.b();
          this.b = paramAmapLoc;
          localAmapLoc = this.b;
          continue;
        }
      }
      finally
      {
      }
      if ((f2 <= 299.0F) || (f3 <= 299.0F));
    }
  }

  public final void b()
  {
    try
    {
      this.b = null;
      this.c = 0L;
      this.d = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.av
 * JD-Core Version:    0.6.2
 */