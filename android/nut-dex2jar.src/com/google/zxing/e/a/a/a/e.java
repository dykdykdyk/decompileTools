package com.google.zxing.e.a.a.a;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.a;

public final class e extends i
{
  private final String c;
  private final String d;

  public e(a parama, String paramString1, String paramString2)
  {
    super(parama);
    this.c = paramString2;
    this.d = paramString1;
  }

  protected final int a(int paramInt)
  {
    return paramInt % 100000;
  }

  public final String a()
    throws NotFoundException
  {
    if (this.a.b != 84)
      throw NotFoundException.a();
    StringBuilder localStringBuilder = new StringBuilder();
    b(localStringBuilder, 8);
    b(localStringBuilder, 48, 20);
    int j = this.b.a(68, 16);
    if (j != 38400)
    {
      localStringBuilder.append('(');
      localStringBuilder.append(this.c);
      localStringBuilder.append(')');
      int i = j % 32;
      int k = j / 32;
      j = k % 12 + 1;
      k /= 12;
      if (k / 10 == 0)
        localStringBuilder.append('0');
      localStringBuilder.append(k);
      if (j / 10 == 0)
        localStringBuilder.append('0');
      localStringBuilder.append(j);
      if (i / 10 == 0)
        localStringBuilder.append('0');
      localStringBuilder.append(i);
    }
    return localStringBuilder.toString();
  }

  protected final void a(StringBuilder paramStringBuilder, int paramInt)
  {
    paramInt /= 100000;
    paramStringBuilder.append('(');
    paramStringBuilder.append(this.d);
    paramStringBuilder.append(paramInt);
    paramStringBuilder.append(')');
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.e
 * JD-Core Version:    0.6.2
 */