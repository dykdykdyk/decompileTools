package okhttp3.internal.http;

import a.j;
import okhttp3.ab;
import okhttp3.ai;
import okhttp3.bb;

public final class w extends bb
{
  private final ab a;
  private final j b;

  public w(ab paramab, j paramj)
  {
    this.a = paramab;
    this.b = paramj;
  }

  public final long contentLength()
  {
    return v.a(this.a);
  }

  public final ai contentType()
  {
    String str = this.a.a("Content-Type");
    if (str != null)
      return ai.a(str);
    return null;
  }

  public final j source()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.w
 * JD-Core Version:    0.6.2
 */