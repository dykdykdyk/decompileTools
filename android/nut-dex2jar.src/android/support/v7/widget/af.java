package android.support.v7.widget;

import android.support.v4.f.p;
import android.support.v4.f.q;
import java.util.ArrayList;
import java.util.List;

final class af
  implements dj
{
  final ArrayList<ah> a = new ArrayList();
  final ArrayList<ah> b = new ArrayList();
  final ag c;
  Runnable d;
  final boolean e;
  final di f;
  int g = 0;
  private p<ah> h = new q(30);

  af(ag paramag)
  {
    this(paramag, (byte)0);
  }

  private af(ag paramag, byte paramByte)
  {
    this.c = paramag;
    this.e = false;
    this.f = new di(this);
  }

  private void a(ah paramah, int paramInt)
  {
    this.c.a(paramah);
    switch (paramah.a)
    {
    case 3:
    default:
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 2:
      this.c.a(paramInt, paramah.d);
      return;
    case 4:
    }
    this.c.a(paramInt, paramah.d, paramah.c);
  }

  private void a(List<ah> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((ah)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }

  private int b(int paramInt1, int paramInt2)
  {
    int i = this.b.size() - 1;
    ah localah;
    if (i >= 0)
    {
      localah = (ah)this.b.get(i);
      int k;
      int j;
      if (localah.a == 8)
        if (localah.b < localah.d)
        {
          k = localah.b;
          j = localah.d;
          label64: if ((paramInt1 < k) || (paramInt1 > j))
            break label195;
          if (k != localah.b)
            break label151;
          if (paramInt2 != 1)
            break label131;
          localah.d += 1;
          label103: paramInt1 += 1;
        }
      while (true)
      {
        i -= 1;
        break;
        k = localah.d;
        j = localah.b;
        break label64;
        label131: if (paramInt2 != 2)
          break label103;
        localah.d -= 1;
        break label103;
        label151: if (paramInt2 == 1)
          localah.b += 1;
        while (true)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 2)
            localah.b -= 1;
        }
        label195: if (paramInt1 < localah.b)
        {
          if (paramInt2 == 1)
          {
            localah.b += 1;
            localah.d += 1;
          }
          else if (paramInt2 == 2)
          {
            localah.b -= 1;
            localah.d -= 1;
          }
        }
        else
        {
          continue;
          if (localah.b <= paramInt1)
          {
            if (localah.a == 1)
              paramInt1 -= localah.d;
            else if (localah.a == 2)
              paramInt1 = localah.d + paramInt1;
          }
          else if (paramInt2 == 1)
            localah.b += 1;
          else if (paramInt2 == 2)
            localah.b -= 1;
        }
      }
    }
    paramInt2 = this.b.size() - 1;
    if (paramInt2 >= 0)
    {
      localah = (ah)this.b.get(paramInt2);
      if (localah.a == 8)
        if ((localah.d == localah.b) || (localah.d < 0))
        {
          this.b.remove(paramInt2);
          a(localah);
        }
      while (true)
      {
        paramInt2 -= 1;
        break;
        if (localah.d <= 0)
        {
          this.b.remove(paramInt2);
          a(localah);
        }
      }
    }
    return paramInt1;
  }

  private void b(ah paramah)
  {
    if ((paramah.a == 1) || (paramah.a == 8))
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    int i1 = b(paramah.b, paramah.a);
    int j = paramah.b;
    int k;
    int n;
    int m;
    label109: int i2;
    switch (paramah.a)
    {
    case 3:
    default:
      throw new IllegalArgumentException("op should be remove or update." + paramah);
    case 4:
      k = 1;
      n = 1;
      m = 1;
      if (m >= paramah.d)
        break label294;
      i2 = b(paramah.b + k * m, paramah.a);
      switch (paramah.a)
      {
      case 3:
      default:
        i = 0;
        label170: if (i == 0);
        break;
      case 4:
      case 2:
      }
      break;
    case 2:
    }
    for (int i = n + 1; ; i = n)
    {
      m += 1;
      n = i;
      break label109;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      if (i2 == i1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      localObject = a(paramah.a, i1, n, paramah.c);
      a((ah)localObject, j);
      a((ah)localObject);
      i = j;
      if (paramah.a == 4)
        i = j + n;
      n = 1;
      i1 = i2;
      j = i;
    }
    label294: Object localObject = paramah.c;
    a(paramah);
    if (n > 0)
    {
      paramah = a(paramah.a, i1, n, localObject);
      a(paramah, j);
      a(paramah);
    }
  }

  private void c(ah paramah)
  {
    this.b.add(paramah);
    switch (paramah.a)
    {
    case 3:
    case 5:
    case 6:
    case 7:
    default:
      throw new IllegalArgumentException("Unknown update op type for " + paramah);
    case 1:
      this.c.c(paramah.b, paramah.d);
      return;
    case 8:
      this.c.d(paramah.b, paramah.d);
      return;
    case 2:
      this.c.b(paramah.b, paramah.d);
      return;
    case 4:
    }
    this.c.a(paramah.b, paramah.d, paramah.c);
  }

  private boolean c(int paramInt)
  {
    int k = this.b.size();
    int i = 0;
    while (i < k)
    {
      ah localah = (ah)this.b.get(i);
      if (localah.a == 8)
      {
        if (a(localah.d, i + 1) == paramInt)
          return true;
      }
      else if (localah.a == 1)
      {
        int m = localah.b;
        int n = localah.d;
        int j = localah.b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt)
            return true;
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }

  final int a(int paramInt1, int paramInt2)
  {
    int k = this.b.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    ah localah;
    if (j < k)
    {
      localah = (ah)this.b.get(j);
      if (localah.a == 8)
        if (localah.b == paramInt2)
          paramInt1 = localah.d;
    }
    while (true)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (localah.b < paramInt2)
        i = paramInt2 - 1;
      paramInt1 = i;
      if (localah.d <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (localah.b <= paramInt2)
          if (localah.a == 2)
          {
            if (paramInt2 < localah.b + localah.d)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - localah.d;
          }
          else
          {
            paramInt1 = paramInt2;
            if (localah.a == 1)
              paramInt1 = paramInt2 + localah.d;
          }
      }
    }
  }

  public final ah a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    ah localah = (ah)this.h.a();
    if (localah == null)
      return new ah(paramInt1, paramInt2, paramInt3, paramObject);
    localah.a = paramInt1;
    localah.b = paramInt2;
    localah.d = paramInt3;
    localah.c = paramObject;
    return localah;
  }

  final void a()
  {
    a(this.a);
    a(this.b);
    this.g = 0;
  }

  public final void a(ah paramah)
  {
    if (!this.e)
    {
      paramah.c = null;
      this.h.a(paramah);
    }
  }

  final boolean a(int paramInt)
  {
    return (this.g & paramInt) != 0;
  }

  final int b(int paramInt)
  {
    return a(paramInt, 0);
  }

  final void b()
  {
    di localdi = this.f;
    ArrayList localArrayList = this.a;
    int i;
    label24: label53: int i1;
    ah localah2;
    ah localah3;
    int k;
    while (true)
    {
      j = 0;
      i = localArrayList.size() - 1;
      if (i < 0)
        break label268;
      if (((ah)localArrayList.get(i)).a != 8)
        break;
      if (j == 0)
        break label1835;
      j = i;
      if (j == -1)
        break label1251;
      i1 = j + 1;
      localah2 = (ah)localArrayList.get(j);
      localah3 = (ah)localArrayList.get(i1);
      switch (localah3.a)
      {
      case 3:
      default:
        break;
      case 1:
        i = 0;
        if (localah2.d < localah3.b)
          i = -1;
        k = i;
        if (localah2.b < localah3.b)
          k = i + 1;
        if (localah3.b <= localah2.b)
          localah2.b += localah3.d;
        if (localah3.b <= localah2.d)
          localah2.d += localah3.d;
        localah3.b = (k + localah3.b);
        localArrayList.set(j, localah3);
        localArrayList.set(i1, localah2);
      case 2:
      case 4:
      }
    }
    int j = 1;
    label268: label655: label1835: 
    while (true)
    {
      i -= 1;
      break label24;
      j = -1;
      break label53;
      ah localah1 = null;
      int m = 0;
      int n;
      if (localah2.b < localah2.d)
      {
        n = 0;
        k = n;
        i = m;
        if (localah3.b == localah2.b)
        {
          k = n;
          i = m;
          if (localah3.d == localah2.d - localah2.b)
          {
            i = 1;
            k = n;
          }
        }
        label344: if (localah2.d >= localah3.b)
          break label491;
        localah3.b -= 1;
        label369: if (localah2.b > localah3.b)
          break label567;
        localah3.b += 1;
      }
      label491: int i2;
      while (true)
      {
        if (i == 0)
          break label655;
        localArrayList.set(j, localah3);
        localArrayList.remove(i1);
        localdi.a.a(localah2);
        break;
        n = 1;
        k = n;
        i = m;
        if (localah3.b != localah2.d + 1)
          break label344;
        k = n;
        i = m;
        if (localah3.d != localah2.b - localah2.d)
          break label344;
        i = 1;
        k = n;
        break label344;
        if (localah2.d >= localah3.b + localah3.d)
          break label369;
        localah3.d -= 1;
        localah2.a = 2;
        localah2.d = 1;
        if (localah3.d != 0)
          break;
        localArrayList.remove(i1);
        localdi.a.a(localah3);
        break;
        label567: if (localah2.b < localah3.b + localah3.d)
        {
          m = localah3.b;
          n = localah3.d;
          i2 = localah2.b;
          localah1 = localdi.a.a(2, localah2.b + 1, m + n - i2, null);
          localah3.d = (localah2.b - localah3.b);
        }
      }
      if (k != 0)
      {
        if (localah1 != null)
        {
          if (localah2.b > localah1.b)
            localah2.b -= localah1.d;
          if (localah2.d > localah1.b)
            localah2.d -= localah1.d;
        }
        if (localah2.b > localah3.b)
          localah2.b -= localah3.d;
        if (localah2.d > localah3.b)
          localah2.d -= localah3.d;
        localArrayList.set(j, localah3);
        if (localah2.b == localah2.d)
          break label958;
        localArrayList.set(i1, localah2);
      }
      while (localah1 != null)
      {
        localArrayList.add(j, localah1);
        break;
        if (localah1 != null)
        {
          if (localah2.b >= localah1.b)
            localah2.b -= localah1.d;
          if (localah2.d >= localah1.b)
            localah2.d -= localah1.d;
        }
        if (localah2.b >= localah3.b)
          localah2.b -= localah3.d;
        if (localah2.d < localah3.b)
          break label780;
        localah2.d -= localah3.d;
        break label780;
        label958: localArrayList.remove(i1);
      }
      localah1 = null;
      Object localObject = null;
      if (localah2.d < localah3.b)
      {
        localah3.b -= 1;
        label1002: if (localah2.b > localah3.b)
          break label1149;
        localah3.b += 1;
        localArrayList.set(i1, localah2);
        if (localah3.d <= 0)
          break label1227;
        localArrayList.set(j, localah3);
      }
      while (true)
      {
        if (localah1 != null)
          localArrayList.add(j, localah1);
        if (localObject == null)
          break;
        localArrayList.add(j, localObject);
        break;
        if (localah2.d >= localah3.b + localah3.d)
          break label1002;
        localah3.d -= 1;
        localah1 = localdi.a.a(4, localah2.b, 1, localah3.c);
        break label1002;
        label1149: if (localah2.b >= localah3.b + localah3.d)
          break label1027;
        i = localah3.b + localah3.d - localah2.b;
        localObject = localdi.a.a(4, localah2.b + 1, i, localah3.c);
        localah3.d -= i;
        break label1027;
        label1227: localArrayList.remove(j);
        localdi.a.a(localah3);
      }
      label1251: int i3 = this.a.size();
      i1 = 0;
      if (i1 < i3)
      {
        localah1 = (ah)this.a.get(i1);
        switch (localah1.a)
        {
        case 3:
        case 5:
        case 6:
        case 7:
        default:
        case 1:
        case 2:
        case 4:
        case 8:
        }
        while (true)
        {
          if (this.d != null)
            this.d.run();
          i1 += 1;
          break;
          c(localah1);
          continue;
          int i4 = localah1.b;
          i = localah1.b;
          k = localah1.d + i;
          i2 = -1;
          i = localah1.b;
          n = 0;
          if (i < k)
          {
            j = 0;
            m = 0;
            if ((this.c.a(i) != null) || (c(i)))
            {
              if (i2 == 0)
              {
                b(a(2, i4, n, null));
                m = 1;
              }
              j = 1;
              label1458: if (m == 0)
                break label1526;
              m = i - n;
              i = k - n;
            }
            for (k = 1; ; k = n)
            {
              n = k;
              k = i;
              i = m + 1;
              i2 = j;
              break;
              if (i2 == 1)
              {
                c(a(2, i4, n, null));
                j = 1;
              }
              i2 = 0;
              m = j;
              j = i2;
              break label1458;
              label1526: n += 1;
              m = i;
              i = k;
            }
          }
          localObject = localah1;
          if (n != localah1.d)
          {
            a(localah1);
            localObject = a(2, i4, n, null);
          }
          if (i2 == 0)
          {
            b((ah)localObject);
          }
          else
          {
            c((ah)localObject);
            continue;
            k = localah1.b;
            i4 = localah1.b;
            int i5 = localah1.d;
            i = localah1.b;
            j = 0;
            i2 = -1;
            if (i < i4 + i5)
            {
              if ((this.c.a(i) != null) || (c(i)))
              {
                m = j;
                n = k;
                if (i2 == 0)
                {
                  b(a(4, k, j, localah1.c));
                  m = 0;
                  n = i;
                }
                k = n;
              }
              for (j = 1; ; j = 0)
              {
                i += 1;
                m += 1;
                i2 = j;
                j = m;
                break;
                m = j;
                n = k;
                if (i2 == 1)
                {
                  c(a(4, k, j, localah1.c));
                  m = 0;
                  n = i;
                }
                k = n;
              }
            }
            localObject = localah1;
            if (j != localah1.d)
            {
              localObject = localah1.c;
              a(localah1);
              localObject = a(4, k, j, localObject);
            }
            if (i2 == 0)
            {
              b((ah)localObject);
            }
            else
            {
              c((ah)localObject);
              continue;
              c(localah1);
            }
          }
        }
      }
      this.a.clear();
      return;
    }
  }

  final void c()
  {
    int j = this.b.size();
    int i = 0;
    while (i < j)
    {
      this.c.b((ah)this.b.get(i));
      i += 1;
    }
    a(this.b);
    this.g = 0;
  }

  final boolean d()
  {
    return this.a.size() > 0;
  }

  final void e()
  {
    c();
    int j = this.a.size();
    int i = 0;
    if (i < j)
    {
      ah localah = (ah)this.a.get(i);
      switch (localah.a)
      {
      case 3:
      case 5:
      case 6:
      case 7:
      default:
      case 1:
      case 2:
      case 4:
      case 8:
      }
      while (true)
      {
        if (this.d != null)
          this.d.run();
        i += 1;
        break;
        this.c.b(localah);
        this.c.c(localah.b, localah.d);
        continue;
        this.c.b(localah);
        this.c.a(localah.b, localah.d);
        continue;
        this.c.b(localah);
        this.c.a(localah.b, localah.d, localah.c);
        continue;
        this.c.b(localah);
        this.c.d(localah.b, localah.d);
      }
    }
    a(this.a);
    this.g = 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.af
 * JD-Core Version:    0.6.2
 */