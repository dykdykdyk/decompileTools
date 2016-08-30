package okhttp3.internal.a;

import a.j;
import a.k;
import a.q;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class aa
{
  final List<x> a = new ArrayList();
  final j b;
  int c = 4096;
  int d = 4096;
  x[] e = new x[8];
  int f = this.e.length - 1;
  int g = 0;
  int h = 0;

  aa(a.aa paramaa)
  {
    this.b = q.a(paramaa);
  }

  private void c()
  {
    this.a.clear();
    Arrays.fill(this.e, null);
    this.f = (this.e.length - 1);
    this.g = 0;
    this.h = 0;
  }

  static boolean c(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= z.a().length - 1);
  }

  private int d()
    throws IOException
  {
    return this.b.f() & 0xFF;
  }

  private int d(int paramInt)
  {
    int i = 0;
    int k = 0;
    if (paramInt > 0)
    {
      i = this.e.length - 1;
      int j = paramInt;
      paramInt = k;
      while ((i >= this.f) && (j > 0))
      {
        j -= this.e[i].j;
        this.h -= this.e[i].j;
        this.g -= 1;
        paramInt += 1;
        i -= 1;
      }
      System.arraycopy(this.e, this.f + 1, this.e, this.f + 1 + paramInt, this.g);
      this.f += paramInt;
      i = paramInt;
    }
    return i;
  }

  final int a(int paramInt)
  {
    return this.f + 1 + paramInt;
  }

  final int a(int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 &= paramInt2;
    if (paramInt1 < paramInt2)
      return paramInt1;
    paramInt1 = 0;
    int i;
    while (true)
    {
      i = d();
      if ((i & 0x80) == 0)
        break;
      paramInt2 += ((i & 0x7F) << paramInt1);
      paramInt1 += 7;
    }
    return (i << paramInt1) + paramInt2;
  }

  final void a()
  {
    if (this.d < this.h)
    {
      if (this.d == 0)
        c();
    }
    else
      return;
    d(this.h - this.d);
  }

  final void a(x paramx)
  {
    this.a.add(paramx);
    int i = paramx.j;
    if (i > this.d)
    {
      c();
      return;
    }
    d(this.h + i - this.d);
    if (this.g + 1 > this.e.length)
    {
      x[] arrayOfx = new x[this.e.length * 2];
      System.arraycopy(this.e, 0, arrayOfx, this.e.length, this.e.length);
      this.f = (this.e.length - 1);
      this.e = arrayOfx;
    }
    int j = this.f;
    this.f = (j - 1);
    this.e[j] = paramx;
    this.g += 1;
    this.h = (i + this.h);
  }

  final k b()
    throws IOException
  {
    int j = 0;
    int k = d();
    int i;
    ah localah;
    byte[] arrayOfByte;
    ByteArrayOutputStream localByteArrayOutputStream;
    ai localai1;
    if ((k & 0x80) == 128)
    {
      i = 1;
      k = a(k, 127);
      if (i != 0)
      {
        localah = ah.a();
        arrayOfByte = this.b.e(k);
        localByteArrayOutputStream = new ByteArrayOutputStream();
        localai1 = localah.a;
        k = 0;
        i = 0;
      }
    }
    else
    {
      int m;
      ai localai2;
      while (true)
      {
        m = i;
        localai2 = localai1;
        if (j >= arrayOfByte.length)
          break label183;
        k = k << 8 | arrayOfByte[j] & 0xFF;
        i += 8;
        while (true)
        {
          if (i < 8)
            break label176;
          localai1 = localai1.a[(k >>> i - 8 & 0xFF)];
          if (localai1.a == null)
          {
            localByteArrayOutputStream.write(localai1.b);
            i -= localai1.c;
            localai1 = localah.a;
            continue;
            i = 0;
            break;
          }
          i -= 8;
        }
        label176: j += 1;
      }
      label183: 
      while (m > 0)
      {
        localai1 = localai2.a[(k << 8 - m & 0xFF)];
        if ((localai1.a != null) || (localai1.c > m))
          break;
        localByteArrayOutputStream.write(localai1.b);
        m -= localai1.c;
        localai2 = localah.a;
      }
      return k.a(localByteArrayOutputStream.toByteArray());
    }
    return this.b.c(k);
  }

  final k b(int paramInt)
  {
    if (c(paramInt))
      return z.a()[paramInt].h;
    return this.e[a(paramInt - z.a().length)].h;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.aa
 * JD-Core Version:    0.6.2
 */