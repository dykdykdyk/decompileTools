package okhttp3;

public final class ba
{
  public at a;
  public ap b;
  public int c = -1;
  public String d;
  public aa e;
  ac f;
  public bb g;
  az h;
  az i;
  az j;

  public ba()
  {
    this.f = new ac();
  }

  private ba(az paramaz)
  {
    this.a = az.a(paramaz);
    this.b = az.b(paramaz);
    this.c = az.c(paramaz);
    this.d = az.d(paramaz);
    this.e = az.e(paramaz);
    this.f = az.f(paramaz).a();
    this.g = az.g(paramaz);
    this.h = az.h(paramaz);
    this.i = az.i(paramaz);
    this.j = az.j(paramaz);
  }

  private static void a(String paramString, az paramaz)
  {
    if (az.g(paramaz) != null)
      throw new IllegalArgumentException(paramString + ".body != null");
    if (az.h(paramaz) != null)
      throw new IllegalArgumentException(paramString + ".networkResponse != null");
    if (az.i(paramaz) != null)
      throw new IllegalArgumentException(paramString + ".cacheResponse != null");
    if (az.j(paramaz) != null)
      throw new IllegalArgumentException(paramString + ".priorResponse != null");
  }

  public final az a()
  {
    if (this.a == null)
      throw new IllegalStateException("request == null");
    if (this.b == null)
      throw new IllegalStateException("protocol == null");
    if (this.c < 0)
      throw new IllegalStateException("code < 0: " + this.c);
    return new az(this, (byte)0);
  }

  public final ba a(String paramString1, String paramString2)
  {
    this.f.c(paramString1, paramString2);
    return this;
  }

  public final ba a(ab paramab)
  {
    this.f = paramab.a();
    return this;
  }

  public final ba a(az paramaz)
  {
    if (paramaz != null)
      a("networkResponse", paramaz);
    this.h = paramaz;
    return this;
  }

  public final ba b(String paramString1, String paramString2)
  {
    this.f.a(paramString1, paramString2);
    return this;
  }

  public final ba b(az paramaz)
  {
    if (paramaz != null)
      a("cacheResponse", paramaz);
    this.i = paramaz;
    return this;
  }

  public final ba c(az paramaz)
  {
    if ((paramaz != null) && (az.g(paramaz) != null))
      throw new IllegalArgumentException("priorResponse.body != null");
    this.j = paramaz;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ba
 * JD-Core Version:    0.6.2
 */