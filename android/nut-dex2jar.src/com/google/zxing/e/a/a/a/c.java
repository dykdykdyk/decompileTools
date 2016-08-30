package com.google.zxing.e.a.a.a;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.a;

public final class c extends h
{
  public c(a parama)
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
    localStringBuilder.append("(392");
    localStringBuilder.append(i);
    localStringBuilder.append(')');
    localStringBuilder.append(this.b.a(50, null).a);
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.c
 * JD-Core Version:    0.6.2
 */