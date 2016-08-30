package com.google.zxing;

import com.google.zxing.a.c;
import com.google.zxing.e.k;
import com.google.zxing.e.n;
import com.google.zxing.e.t;
import java.util.Map;

public final class i
  implements q
{
  public final com.google.zxing.common.b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    Object localObject;
    switch (j.a[parama.ordinal()])
    {
    default:
      throw new IllegalArgumentException("No encoder available for format " + parama);
    case 1:
      localObject = new k();
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    }
    while (true)
    {
      return ((q)localObject).a(paramString, parama, paramInt1, paramInt2, paramMap);
      localObject = new com.google.zxing.e.i();
      continue;
      localObject = new t();
      continue;
      localObject = new com.google.zxing.g.b();
      continue;
      localObject = new com.google.zxing.e.f();
      continue;
      localObject = new com.google.zxing.e.d();
      continue;
      localObject = new n();
      continue;
      localObject = new com.google.zxing.f.d();
      continue;
      localObject = new com.google.zxing.e.b();
      continue;
      localObject = new com.google.zxing.c.b();
      continue;
      localObject = new c();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.i
 * JD-Core Version:    0.6.2
 */