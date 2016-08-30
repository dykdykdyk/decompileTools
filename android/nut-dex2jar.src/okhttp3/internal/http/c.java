package okhttp3.internal.http;

import java.util.Date;
import okhttp3.ab;
import okhttp3.at;
import okhttp3.az;

public final class c
{
  public final long a;
  public final at b;
  public final az c;
  public Date d;
  public String e;
  public Date f;
  public String g;
  public Date h;
  public long i;
  public long j;
  public String k;
  public int l = -1;

  public c(long paramLong, at paramat, az paramaz)
  {
    this.a = paramLong;
    this.b = paramat;
    this.c = paramaz;
    if (paramaz != null)
    {
      paramat = paramaz.e;
      int m = 0;
      int n = paramat.a.length / 2;
      if (m < n)
      {
        paramaz = paramat.a(m);
        String str = paramat.b(m);
        if ("Date".equalsIgnoreCase(paramaz))
        {
          this.d = n.a(str);
          this.e = str;
        }
        while (true)
        {
          m += 1;
          break;
          if ("Expires".equalsIgnoreCase(paramaz))
          {
            this.h = n.a(str);
          }
          else if ("Last-Modified".equalsIgnoreCase(paramaz))
          {
            this.f = n.a(str);
            this.g = str;
          }
          else if ("ETag".equalsIgnoreCase(paramaz))
          {
            this.k = str;
          }
          else if ("Age".equalsIgnoreCase(paramaz))
          {
            this.l = d.a(str, -1);
          }
          else if (v.b.equalsIgnoreCase(paramaz))
          {
            this.i = Long.parseLong(str);
          }
          else if (v.c.equalsIgnoreCase(paramaz))
          {
            this.j = Long.parseLong(str);
          }
        }
      }
    }
  }

  public static boolean a(at paramat)
  {
    return (paramat.a("If-Modified-Since") != null) || (paramat.a("If-None-Match") != null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.c
 * JD-Core Version:    0.6.2
 */