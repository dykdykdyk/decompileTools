package com.google.zxing.f.a;

import com.google.zxing.o;
import java.util.Formatter;

final class h
{
  final a a;
  final i[] b;
  c c;
  final int d;

  h(a parama, c paramc)
  {
    this.a = parama;
    this.d = parama.a;
    this.c = paramc;
    this.b = new i[this.d + 2];
  }

  static int a(int paramInt1, int paramInt2, d paramd)
  {
    if (paramd == null);
    while (paramd.a())
      return paramInt2;
    if (paramd.a(paramInt1))
    {
      paramd.e = paramInt1;
      return 0;
    }
    return paramInt2 + 1;
  }

  final void a(i parami)
  {
    a locala;
    d[] arrayOfd;
    int j;
    int i;
    Object localObject;
    label106: int n;
    int k;
    label138: int i1;
    if (parami != null)
    {
      j localj = (j)parami;
      locala = this.a;
      arrayOfd = localj.b;
      parami = localj.b;
      j = parami.length;
      i = 0;
      while (i < j)
      {
        localObject = parami[i];
        if (localObject != null)
          ((d)localObject).b();
        i += 1;
      }
      localj.a(arrayOfd, locala);
      localObject = localj.a;
      if (localj.c)
      {
        parami = ((c)localObject).b;
        if (!localj.c)
          break label196;
        localObject = ((c)localObject).c;
        n = localj.b((int)parami.b);
        int i3 = localj.b((int)((o)localObject).b);
        j = -1;
        i = 1;
        k = 0;
        if (n >= i3)
          break label361;
        if (arrayOfd[n] == null)
          break label365;
        parami = arrayOfd[n];
        i1 = parami.e - j;
        if (i1 != 0)
          break label206;
        k += 1;
      }
    }
    label196: label206: label336: label361: label365: 
    while (true)
    {
      n += 1;
      break label138;
      parami = ((c)localObject).d;
      break;
      localObject = ((c)localObject).e;
      break label106;
      if (i1 == 1)
      {
        i = Math.max(i, k);
        k = 1;
        j = parami.e;
      }
      else if ((i1 < 0) || (parami.e >= locala.e) || (i1 > n))
      {
        arrayOfd[n] = null;
      }
      else
      {
        if (i > 2)
          i1 *= (i - 2);
        while (true)
        {
          int i2;
          if (i1 >= n)
          {
            m = 1;
            i2 = 1;
            if ((i2 > i1) || (m != 0))
              break label336;
            if (arrayOfd[(n - i2)] == null)
              break label330;
          }
          for (int m = 1; ; m = 0)
          {
            i2 += 1;
            break label289;
            m = 0;
            break;
          }
          if (m != 0)
          {
            arrayOfd[n] = null;
            break;
          }
          j = parami.e;
          k = 1;
          break;
          return;
        }
      }
    }
  }

  public final String toString()
  {
    Object localObject2 = this.b[0];
    Object localObject1 = localObject2;
    if (localObject2 == null)
      localObject1 = this.b[(this.d + 1)];
    localObject2 = new Formatter();
    int i = 0;
    while (i < ((i)localObject1).b.length)
    {
      ((Formatter)localObject2).format("CW %3d:", new Object[] { Integer.valueOf(i) });
      int j = 0;
      if (j < this.d + 2)
      {
        if (this.b[j] == null)
          ((Formatter)localObject2).format("    |   ", new Object[0]);
        while (true)
        {
          j += 1;
          break;
          d locald = this.b[j].b[i];
          if (locald == null)
            ((Formatter)localObject2).format("    |   ", new Object[0]);
          else
            ((Formatter)localObject2).format(" %3d|%3d", new Object[] { Integer.valueOf(locald.e), Integer.valueOf(locald.d) });
        }
      }
      ((Formatter)localObject2).format("%n", new Object[0]);
      i += 1;
    }
    localObject1 = ((Formatter)localObject2).toString();
    ((Formatter)localObject2).close();
    return localObject1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.h
 * JD-Core Version:    0.6.2
 */