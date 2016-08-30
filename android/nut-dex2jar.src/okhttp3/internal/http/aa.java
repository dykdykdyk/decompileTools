package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.ap;

public final class aa
{
  public final ap a;
  public final int b;
  public final String c;

  private aa(ap paramap, int paramInt, String paramString)
  {
    this.a = paramap;
    this.b = paramInt;
    this.c = paramString;
  }

  public static aa a(String paramString)
    throws IOException
  {
    int i = 9;
    int j;
    ap localap;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' '))
        throw new ProtocolException("Unexpected status line: " + paramString);
      j = paramString.charAt(7) - '0';
      if (j == 0)
        localap = ap.a;
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (j == 1)
      {
        localap = ap.b;
      }
      else
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
        if (paramString.startsWith("ICY "))
        {
          localap = ap.a;
          i = 4;
        }
        else
        {
          throw new ProtocolException("Unexpected status line: " + paramString);
        }
      }
    }
    try
    {
      j = Integer.parseInt(paramString.substring(i, i + 3));
      if (paramString.length() > i + 3)
        if (paramString.charAt(i + 3) != ' ')
          throw new ProtocolException("Unexpected status line: " + paramString);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    for (paramString = paramString.substring(i + 4); ; paramString = "")
      return new aa(localNumberFormatException, j, paramString);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.a == ap.a);
    for (String str = "HTTP/1.0"; ; str = "HTTP/1.1")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(' ').append(this.b);
      if (this.c != null)
        localStringBuilder.append(' ').append(this.c);
      return localStringBuilder.toString();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.aa
 * JD-Core Version:    0.6.2
 */