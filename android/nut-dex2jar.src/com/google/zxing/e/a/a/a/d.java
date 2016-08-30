package com.google.zxing.e.a.a.a;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.a;

public final class d extends h
{
  public d(a parama)
  {
    super(parama);
  }

  public final String a()
    throws NotFoundException, FormatException
  {
    if (this.a.b < 48)
      throw NotFoundException.a();
    StringBuilder localStringBuilder = new StringBuilder();
    b(localStringBuilder, 8);
    int i = this.b.a(48, 2);
    localStringBuilder.append("(393");
    localStringBuilder.append(i);
    localStringBuilder.append(')');
    i = this.b.a(50, 10);
    if (i / 100 == 0)
      localStringBuilder.append('0');
    if (i / 10 == 0)
      localStringBuilder.append('0');
    localStringBuilder.append(i);
    localStringBuilder.append(this.b.a(60, null).a);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.d
 * JD-Core Version:    0.6.2
 */