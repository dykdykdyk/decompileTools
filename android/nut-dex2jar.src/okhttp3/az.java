package okhttp3;

public final class az
{
  public final at a;
  public final int b;
  public final String c;
  public final aa d;
  public final ab e;
  public final bb f;
  private final ap g;
  private az h;
  private az i;
  private final az j;
  private volatile e k;

  private az(ba paramba)
  {
    this.a = paramba.a;
    this.g = paramba.b;
    this.b = paramba.c;
    this.c = paramba.d;
    this.d = paramba.e;
    this.e = paramba.f.a();
    this.f = paramba.g;
    this.h = paramba.h;
    this.i = paramba.i;
    this.j = paramba.j;
  }

  public final String a(String paramString)
  {
    paramString = this.e.a(paramString);
    if (paramString != null)
      return paramString;
    return null;
  }

  public final boolean a()
  {
    return (this.b >= 200) && (this.b < 300);
  }

  public final ba b()
  {
    return new ba(this, (byte)0);
  }

  public final e c()
  {
    e locale = this.k;
    if (locale != null)
      return locale;
    locale = e.a(this.e);
    this.k = locale;
    return locale;
  }

  public final String toString()
  {
    return "Response{protocol=" + this.g + ", code=" + this.b + ", message=" + this.c + ", url=" + this.a.a + '}';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.az
 * JD-Core Version:    0.6.2
 */