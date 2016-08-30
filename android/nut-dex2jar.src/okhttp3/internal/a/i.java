package okhttp3.internal.a;

import java.io.IOException;
import java.util.List;
import java.util.Set;
import okhttp3.internal.h;

final class i extends h
{
  i(e parame, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    e.j(this.d).a();
    try
    {
      this.d.i.a(this.a, a.l);
      synchronized (this.d)
      {
        e.k(this.d).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.i
 * JD-Core Version:    0.6.2
 */