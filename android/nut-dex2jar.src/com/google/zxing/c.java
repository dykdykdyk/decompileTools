package com.google.zxing;

public final class c
{
  public final b a;
  private com.google.zxing.common.b b;

  public c(b paramb)
  {
    this.a = paramb;
  }

  public final com.google.zxing.common.b a()
    throws NotFoundException
  {
    if (this.b == null)
      this.b = this.a.a();
    return this.b;
  }

  public final String toString()
  {
    try
    {
      String str = a().toString();
      return str;
    }
    catch (NotFoundException localNotFoundException)
    {
    }
    return "";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c
 * JD-Core Version:    0.6.2
 */