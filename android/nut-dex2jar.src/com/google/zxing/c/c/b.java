package com.google.zxing.c.c;

final class b
  implements g
{
  public final void a(h paramh)
  {
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\000');
    while (paramh.b())
    {
      localStringBuilder.append(paramh.a());
      paramh.f += 1;
      i = j.a(paramh.a, paramh.f, 5);
      if (i != 5)
        paramh.g = i;
    }
    int k = localStringBuilder.length() - 1;
    int i = paramh.e.length() + k + 1;
    paramh.a(i);
    if (paramh.h.b - i > 0)
    {
      i = 1;
      if ((paramh.b()) || (i != 0))
      {
        if (k > 249)
          break label211;
        localStringBuilder.setCharAt(0, (char)k);
      }
      label138: k = localStringBuilder.length();
      i = j;
      label148: if (i >= k)
        return;
      j = localStringBuilder.charAt(i) + ((paramh.e.length() + 1) * 149 % 255 + 1);
      if (j > 255)
        break label286;
    }
    label286: for (char c = (char)j; ; c = (char)(j - 256))
    {
      paramh.a(c);
      i += 1;
      break label148;
      i = 0;
      break;
      label211: if ((k > 249) && (k <= 1555))
      {
        localStringBuilder.setCharAt(0, (char)(k / 250 + 249));
        localStringBuilder.insert(1, (char)(k % 250));
        break label138;
      }
      throw new IllegalStateException("Message length not in valid ranges: " + k);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.c.b
 * JD-Core Version:    0.6.2
 */