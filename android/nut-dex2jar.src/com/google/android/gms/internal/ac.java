package com.google.android.gms.internal;

public abstract class ac<T>
{
  private static final Object c = new Object();
  private static ag d = null;
  private static int e = 0;
  private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
  protected final String a;
  protected final T b;
  private T g = null;

  protected ac(String paramString, T paramT)
  {
    this.a = paramString;
    this.b = paramT;
  }

  public static ac<Integer> a(String paramString, Integer paramInteger)
  {
    return new ae(paramString, paramInteger);
  }

  public static ac<Long> a(String paramString, Long paramLong)
  {
    return new ad(paramString, paramLong);
  }

  public static ac<String> a(String paramString1, String paramString2)
  {
    return new af(paramString1, paramString2);
  }

  protected abstract T a();

  public final T b()
  {
    return a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ac
 * JD-Core Version:    0.6.2
 */