package okhttp3;

import okhttp3.internal.http.t;

public final class au
{
  ad a;
  String b;
  public ac c;
  av d;
  Object e;

  public au()
  {
    this.b = "GET";
    this.c = new ac();
  }

  private au(at paramat)
  {
    this.a = paramat.a;
    this.b = paramat.b;
    this.d = paramat.d;
    this.e = paramat.e;
    this.c = paramat.c.a();
  }

  public final at a()
  {
    if (this.a == null)
      throw new IllegalStateException("url == null");
    return new at(this, (byte)0);
  }

  public final au a(String paramString)
  {
    String str;
    if (paramString.regionMatches(true, 0, "ws:", 0, 3))
      str = "http:" + paramString.substring(3);
    while (true)
    {
      paramString = ad.e(str);
      if (paramString != null)
        break;
      throw new IllegalArgumentException("unexpected url: " + str);
      str = paramString;
      if (paramString.regionMatches(true, 0, "wss:", 0, 4))
        str = "https:" + paramString.substring(4);
    }
    return a(paramString);
  }

  public final au a(String paramString1, String paramString2)
  {
    this.c.c(paramString1, paramString2);
    return this;
  }

  public final au a(String paramString, av paramav)
  {
    if ((paramString == null) || (paramString.length() == 0))
      throw new IllegalArgumentException("method == null || method.length() == 0");
    if ((paramav != null) && (!t.b(paramString)))
      throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
    if ((paramav == null) && (t.a(paramString)))
      throw new IllegalArgumentException("method " + paramString + " must have a request body.");
    this.b = paramString;
    this.d = paramav;
    return this;
  }

  public final au a(ad paramad)
  {
    if (paramad == null)
      throw new IllegalArgumentException("url == null");
    this.a = paramad;
    return this;
  }

  public final au b(String paramString)
  {
    this.c.a(paramString);
    return this;
  }

  public final au b(String paramString1, String paramString2)
  {
    this.c.a(paramString1, paramString2);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.au
 * JD-Core Version:    0.6.2
 */