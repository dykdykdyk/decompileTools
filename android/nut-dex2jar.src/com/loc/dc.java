package com.loc;

import android.location.Location;
import android.net.wifi.ScanResult;
import android.telephony.CellLocation;
import java.util.List;

public final class dc
{
  private static int c = 10;
  private static int d = 100;
  private static float f = 0.5F;
  protected dk a = new dk();
  protected dh b = new dh();
  private co e;

  protected dc(co paramco)
  {
    this.e = paramco;
  }

  protected static void a(int paramInt)
  {
    c = paramInt;
  }

  protected static void b(int paramInt)
  {
    d = paramInt;
  }

  protected final boolean a(Location paramLocation)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if (this.e == null);
    List localList;
    do
    {
      return bool2;
      localList = this.e.g();
    }
    while (paramLocation == null);
    new StringBuilder("cell.list.size: ").append(localList.size());
    di localdi = null;
    if (localList.size() >= 2)
    {
      localdi = new di((CellLocation)localList.get(1));
      if (this.b.b != null)
        break label112;
      bool1 = true;
    }
    label133: label221: label226: label231: 
    while (true)
    {
      bool2 = bool1;
      if (!bool1)
        break;
      this.b.a = localdi;
      return bool1;
      label112: if (paramLocation.distanceTo(this.b.b) > d)
      {
        bool1 = true;
        if (bool1)
          break label231;
        paramLocation = this.b.a;
        if ((localdi.e != paramLocation.e) || (localdi.d != paramLocation.d) || (localdi.c != paramLocation.c) || (localdi.b != paramLocation.b) || (localdi.a != paramLocation.a))
          break label221;
      }
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          break label226;
        bool1 = true;
        break;
        bool1 = false;
        break label133;
      }
      bool1 = false;
    }
  }

  protected final boolean b(Location paramLocation)
  {
    int m = 0;
    if (this.e == null)
      return false;
    List localList = this.e.a(false);
    boolean bool;
    if (localList.size() >= 2)
    {
      localList = (List)localList.get(1);
      if (this.a.b == null)
      {
        bool = true;
        paramLocation = localList;
      }
    }
    while (true)
    {
      int j;
      int i;
      label178: float f1;
      label207: label224: float f2;
      label301: int k;
      if (bool)
      {
        this.a.a.clear();
        j = paramLocation.size();
        i = m;
        while (i < j)
        {
          this.a.a.add(new dj(((ScanResult)paramLocation.get(i)).BSSID));
          i += 1;
          continue;
          if ((localList == null) || (localList.size() <= 0))
            break label428;
          if (paramLocation.distanceTo(this.a.b) > c)
          {
            bool = true;
            if (bool)
              break label422;
            paramLocation = this.a.a;
            f1 = f;
            if ((localList != null) && (paramLocation != null))
              break label224;
            i = 0;
          }
          while (true)
            if (i == 0)
            {
              bool = true;
              break;
              bool = false;
              break label178;
              if ((localList == null) || (paramLocation == null))
              {
                i = 0;
              }
              else
              {
                int n = localList.size();
                int i1 = paramLocation.size();
                f2 = n + i1;
                if ((n == 0) && (i1 == 0))
                {
                  i = 1;
                }
                else if ((n == 0) || (i1 == 0))
                {
                  i = 0;
                }
                else
                {
                  j = 0;
                  i = 0;
                  if (j < n)
                  {
                    String str = ((ScanResult)localList.get(j)).BSSID;
                    if (str == null)
                      break label419;
                    k = 0;
                    label333: if (k >= i1)
                      break label419;
                    if (str.equals(((dj)paramLocation.get(k)).a))
                      i += 1;
                  }
                }
              }
            }
        }
      }
      label419: 
      while (true)
      {
        j += 1;
        break label301;
        k += 1;
        break label333;
        if (i << 1 >= f2 * f1)
        {
          i = 1;
          break label207;
        }
        i = 0;
        break label207;
        bool = false;
        break;
        return bool;
      }
      label422: paramLocation = localList;
      continue;
      label428: paramLocation = localList;
      bool = false;
      continue;
      paramLocation = null;
      bool = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dc
 * JD-Core Version:    0.6.2
 */