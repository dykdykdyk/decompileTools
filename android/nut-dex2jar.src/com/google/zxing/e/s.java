package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.c;
import com.google.zxing.d;
import com.google.zxing.m;
import java.util.Map;

public final class s extends x
{
  private final x a = new h();

  private static m a(m paramm)
    throws FormatException
  {
    String str = paramm.a;
    if (str.charAt(0) == '0')
      return new m(str.substring(1), null, paramm.c, com.google.zxing.a.o);
    throw FormatException.a();
  }

  protected final int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    return this.a.a(parama, paramArrayOfInt, paramStringBuilder);
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    return a(this.a.a(paramInt, parama, paramMap));
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, int[] paramArrayOfInt, Map<d, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    return a(this.a.a(paramInt, parama, paramArrayOfInt, paramMap));
  }

  public final m a(c paramc, Map<d, ?> paramMap)
    throws NotFoundException, FormatException
  {
    return a(this.a.a(paramc, paramMap));
  }

  final com.google.zxing.a b()
  {
    return com.google.zxing.a.o;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.s
 * JD-Core Version:    0.6.2
 */