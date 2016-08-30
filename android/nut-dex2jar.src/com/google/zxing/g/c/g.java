package com.google.zxing.g.c;

import com.google.zxing.g.a.n;
import com.google.zxing.g.a.p;
import com.google.zxing.g.a.r;

public final class g
{
  p a;
  n b;
  r c;
  int d = -1;
  public b e;

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append("<<\n");
    localStringBuilder.append(" mode: ");
    localStringBuilder.append(this.a);
    localStringBuilder.append("\n ecLevel: ");
    localStringBuilder.append(this.b);
    localStringBuilder.append("\n version: ");
    localStringBuilder.append(this.c);
    localStringBuilder.append("\n maskPattern: ");
    localStringBuilder.append(this.d);
    if (this.e == null)
      localStringBuilder.append("\n matrix: null\n");
    while (true)
    {
      localStringBuilder.append(">>\n");
      return localStringBuilder.toString();
      localStringBuilder.append("\n matrix:\n");
      localStringBuilder.append(this.e);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.c.g
 * JD-Core Version:    0.6.2
 */