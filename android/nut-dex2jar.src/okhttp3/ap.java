package okhttp3;

import java.io.IOException;

public enum ap
{
  private final String e;

  private ap(String paramString)
  {
    this.e = paramString;
  }

  public static ap a(String paramString)
    throws IOException
  {
    if (paramString.equals(a.e))
      return a;
    if (paramString.equals(b.e))
      return b;
    if (paramString.equals(d.e))
      return d;
    if (paramString.equals(c.e))
      return c;
    throw new IOException("Unexpected protocol: " + paramString);
  }

  public final String toString()
  {
    return this.e;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ap
 * JD-Core Version:    0.6.2
 */