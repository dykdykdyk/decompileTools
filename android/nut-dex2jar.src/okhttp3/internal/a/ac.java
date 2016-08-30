package okhttp3.internal.a;

import a.i;
import a.j;
import a.k;
import java.io.IOException;
import java.util.logging.Logger;

public final class ac
  implements at
{
  private static final Logger a = Logger.getLogger(ae.class.getName());
  private static final k b = k.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

  private static IOException c(String paramString, Object[] paramArrayOfObject)
    throws IOException
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  public final b a(j paramj, boolean paramBoolean)
  {
    return new af(paramj, paramBoolean);
  }

  public final d a(i parami, boolean paramBoolean)
  {
    return new ag(parami, paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ac
 * JD-Core Version:    0.6.2
 */