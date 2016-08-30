package okhttp3.internal.a;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.f;
import okhttp3.internal.h;

final class q extends h
{
  q(p paramp, String paramString, Object[] paramArrayOfObject, t paramt)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      e.f(this.c.c).a(this.a);
      return;
    }
    catch (IOException localIOException1)
    {
      f.a.log(Level.INFO, "FramedConnection.Listener failure for " + e.a(this.c.c), localIOException1);
      try
      {
        this.a.a(a.b);
        return;
      }
      catch (IOException localIOException2)
      {
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.q
 * JD-Core Version:    0.6.2
 */