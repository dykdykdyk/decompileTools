package com.google.zxing.e.a.a.a;

import com.google.zxing.common.a;

public final class b extends f
{
  public b(a parama)
  {
    super(parama);
  }

  protected final int a(int paramInt)
  {
    if (paramInt < 10000)
      return paramInt;
    return paramInt - 10000;
  }

  protected final void a(StringBuilder paramStringBuilder, int paramInt)
  {
    if (paramInt < 10000)
    {
      paramStringBuilder.append("(3202)");
      return;
    }
    paramStringBuilder.append("(3203)");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.b
 * JD-Core Version:    0.6.2
 */