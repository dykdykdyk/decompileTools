package okhttp3.internal.http;

import okhttp3.ab;
import okhttp3.at;
import okhttp3.az;
import okhttp3.internal.j;

public final class v
{
  static final String a = j.b();
  public static final String b = a + "-Sent-Millis";
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  public static final String e = a + "-Response-Source";

  static
  {
    j.a();
  }

  public static long a(ab paramab)
  {
    return b(paramab.a("Content-Length"));
  }

  public static long a(at paramat)
  {
    return a(paramat.c);
  }

  public static long a(az paramaz)
  {
    return a(paramaz.e);
  }

  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }

  private static long b(String paramString)
  {
    if (paramString == null)
      return -1L;
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString)
    {
    }
    return -1L;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.v
 * JD-Core Version:    0.6.2
 */