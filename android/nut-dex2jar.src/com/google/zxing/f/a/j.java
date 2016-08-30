package com.google.zxing.f.a;

final class j extends i
{
  final boolean c;

  j(c paramc, boolean paramBoolean)
  {
    super(paramc);
    this.c = paramBoolean;
  }

  final a a()
  {
    d[] arrayOfd = this.b;
    Object localObject = new b();
    b localb1 = new b();
    b localb2 = new b();
    b localb3 = new b();
    int m = arrayOfd.length;
    int i = 0;
    if (i < m)
    {
      d locald = arrayOfd[i];
      int n;
      if (locald != null)
      {
        locald.b();
        n = locald.d % 30;
        int k = locald.e;
        int j = k;
        if (!this.c)
          j = k + 2;
        switch (j % 3)
        {
        default:
        case 0:
        case 1:
        case 2:
        }
      }
      while (true)
      {
        i += 1;
        break;
        localb1.a(n * 3 + 1);
        continue;
        localb3.a(n / 3);
        localb2.a(n % 3);
        continue;
        ((b)localObject).a(n + 1);
      }
    }
    if ((((b)localObject).a().length == 0) || (localb1.a().length == 0) || (localb2.a().length == 0) || (localb3.a().length == 0) || (localObject.a()[0] <= 0) || (localb1.a()[0] + localb2.a()[0] < 3) || (localb1.a()[0] + localb2.a()[0] > 90))
      return null;
    localObject = new a(localObject.a()[0], localb1.a()[0], localb2.a()[0], localb3.a()[0]);
    a(arrayOfd, (a)localObject);
    return localObject;
  }

  final void a(d[] paramArrayOfd, a parama)
  {
    int i = 0;
    if (i < paramArrayOfd.length)
    {
      d locald = paramArrayOfd[i];
      int m;
      int k;
      if (paramArrayOfd[i] != null)
      {
        m = locald.d % 30;
        k = locald.e;
        if (k <= parama.e)
          break label56;
        paramArrayOfd[i] = null;
      }
      while (true)
      {
        i += 1;
        break;
        label56: int j = k;
        if (!this.c)
          j = k + 2;
        switch (j % 3)
        {
        default:
          break;
        case 0:
          if (m * 3 + 1 != parama.c)
            paramArrayOfd[i] = null;
          break;
        case 1:
          if ((m / 3 != parama.b) || (m % 3 != parama.d))
            paramArrayOfd[i] = null;
          break;
        case 2:
          if (m + 1 != parama.a)
            paramArrayOfd[i] = null;
          break;
        }
      }
    }
  }

  public final String toString()
  {
    return "IsLeft: " + this.c + '\n' + super.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.j
 * JD-Core Version:    0.6.2
 */