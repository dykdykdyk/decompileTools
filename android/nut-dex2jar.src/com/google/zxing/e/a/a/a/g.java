package com.google.zxing.e.a.a.a;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.a;

public final class g extends h
{
  public g(a parama)
  {
    super(parama);
  }

  public final String a()
    throws NotFoundException, FormatException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("(01)");
    int i = localStringBuilder.length();
    localStringBuilder.append(this.b.a(4, 4));
    a(localStringBuilder, 8, i);
    return this.b.a(localStringBuilder, 48);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.g
 * JD-Core Version:    0.6.2
 */