package android.support.v7.widget;

import android.support.v4.f.a;
import android.support.v4.f.f;

final class gf
{
  final a<er, gg> a = new a();
  final f<er> b = new f();

  final dz a(er paramer, int paramInt)
  {
    Object localObject2 = null;
    int i = this.a.a(paramer);
    Object localObject1;
    if (i < 0)
      localObject1 = localObject2;
    gg localgg;
    do
    {
      do
      {
        return localObject1;
        localgg = (gg)this.a.c(i);
        localObject1 = localObject2;
      }
      while (localgg == null);
      localObject1 = localObject2;
    }
    while ((localgg.a & paramInt) == 0);
    localgg.a &= (paramInt ^ 0xFFFFFFFF);
    if (paramInt == 4);
    for (paramer = localgg.b; ; paramer = localgg.c)
    {
      localObject1 = paramer;
      if ((localgg.a & 0xC) != 0)
        break;
      this.a.d(i);
      gg.a(localgg);
      return paramer;
      if (paramInt != 8)
        break label129;
    }
    label129: throw new IllegalArgumentException("Must provide flag PRE or POST");
  }

  final void a()
  {
    this.a.clear();
    f localf = this.b;
    int j = localf.e;
    Object[] arrayOfObject = localf.d;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    localf.e = 0;
    localf.b = false;
  }

  final void a(long paramLong, er paramer)
  {
    this.b.a(paramLong, paramer);
  }

  final void a(er paramer, dz paramdz)
  {
    gg localgg2 = (gg)this.a.get(paramer);
    gg localgg1 = localgg2;
    if (localgg2 == null)
    {
      localgg1 = gg.a();
      this.a.put(paramer, localgg1);
    }
    localgg1.b = paramdz;
    localgg1.a |= 4;
  }

  final void a(gh paramgh)
  {
    int i = this.a.size() - 1;
    if (i >= 0)
    {
      er localer = (er)this.a.b(i);
      gg localgg = (gg)this.a.d(i);
      if ((localgg.a & 0x3) == 3)
        paramgh.a(localer);
      while (true)
      {
        gg.a(localgg);
        i -= 1;
        break;
        if ((localgg.a & 0x1) != 0)
        {
          if (localgg.b == null)
            paramgh.a(localer);
          else
            paramgh.a(localer, localgg.b, localgg.c);
        }
        else if ((localgg.a & 0xE) == 14)
          paramgh.b(localer, localgg.b, localgg.c);
        else if ((localgg.a & 0xC) == 12)
          paramgh.c(localer, localgg.b, localgg.c);
        else if ((localgg.a & 0x4) != 0)
          paramgh.a(localer, localgg.b, null);
        else if ((localgg.a & 0x8) != 0)
          paramgh.b(localer, localgg.b, localgg.c);
        else
          int j = localgg.a;
      }
    }
  }

  final boolean a(er paramer)
  {
    paramer = (gg)this.a.get(paramer);
    return (paramer != null) && ((paramer.a & 0x1) != 0);
  }

  final void b(er paramer)
  {
    gg localgg2 = (gg)this.a.get(paramer);
    gg localgg1 = localgg2;
    if (localgg2 == null)
    {
      localgg1 = gg.a();
      this.a.put(paramer, localgg1);
    }
    localgg1.a |= 1;
  }

  final void b(er paramer, dz paramdz)
  {
    gg localgg2 = (gg)this.a.get(paramer);
    gg localgg1 = localgg2;
    if (localgg2 == null)
    {
      localgg1 = gg.a();
      this.a.put(paramer, localgg1);
    }
    localgg1.c = paramdz;
    localgg1.a |= 8;
  }

  final void c(er paramer)
  {
    paramer = (gg)this.a.get(paramer);
    if (paramer == null)
      return;
    paramer.a &= -2;
  }

  final void d(er paramer)
  {
    int i = this.b.a() - 1;
    while (true)
    {
      if (i >= 0)
      {
        if (paramer != this.b.a(i))
          break label78;
        f localf = this.b;
        if (localf.d[i] != f.a)
        {
          localf.d[i] = f.a;
          localf.b = true;
        }
      }
      paramer = (gg)this.a.remove(paramer);
      if (paramer != null)
        gg.a(paramer);
      return;
      label78: i -= 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.gf
 * JD-Core Version:    0.6.2
 */