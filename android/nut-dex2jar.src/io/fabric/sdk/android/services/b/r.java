package io.fabric.sdk.android.services.b;

public enum r
{
  public final int e;

  private r(int paramInt)
  {
    this.e = paramInt;
  }

  public static r a(String paramString)
  {
    if ("io.crash.air".equals(paramString))
      return c;
    if (paramString != null)
      return d;
    return a;
  }

  public final String toString()
  {
    return Integer.toString(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.r
 * JD-Core Version:    0.6.2
 */