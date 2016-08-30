package okhttp3.internal.http;

import okhttp3.at;
import okhttp3.az;
import okhttp3.e;

public final class b
{
  public final at a;
  public final az b;

  private b(at paramat, az paramaz)
  {
    this.a = paramat;
    this.b = paramaz;
  }

  public static boolean a(az paramaz, at paramat)
  {
    switch (paramaz.b)
    {
    default:
    case 302:
    case 307:
    case 200:
    case 203:
    case 204:
    case 300:
    case 301:
    case 308:
    case 404:
    case 405:
    case 410:
    case 414:
    case 501:
    }
    do
      return false;
    while (((paramaz.a("Expires") == null) && (paramaz.c().e == -1) && (!paramaz.c().g) && (!paramaz.c().f)) || (paramaz.c().d) || (paramat.b().d));
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.b
 * JD-Core Version:    0.6.2
 */