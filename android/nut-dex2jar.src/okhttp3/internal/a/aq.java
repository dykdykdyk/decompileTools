package okhttp3.internal.a;

import a.i;
import a.j;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import okhttp3.internal.o;

public final class aq
  implements at
{
  static final byte[] a;

  static
  {
    try
    {
      a = "".getBytes(o.c.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError();
  }

  public final b a(j paramj, boolean paramBoolean)
  {
    return new ar(paramj, paramBoolean);
  }

  public final d a(i parami, boolean paramBoolean)
  {
    return new as(parami, paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.aq
 * JD-Core Version:    0.6.2
 */