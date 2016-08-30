package okhttp3.internal.a;

import a.aa;
import a.f;
import a.m;
import java.io.IOException;

final class ak extends m
{
  ak(aj paramaj, aa paramaa)
  {
    super(paramaa);
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (this.a.a == 0);
    do
    {
      return -1L;
      paramLong = super.read(paramf, Math.min(paramLong, this.a.a));
    }
    while (paramLong == -1L);
    this.a.a = ((int)(this.a.a - paramLong));
    return paramLong;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ak
 * JD-Core Version:    0.6.2
 */