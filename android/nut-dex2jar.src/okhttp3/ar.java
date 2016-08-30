package okhttp3;

import java.io.IOException;
import java.util.List;

final class ar
  implements ah
{
  private final int b;
  private final at c;
  private final boolean d;

  ar(aq paramaq, int paramInt, at paramat, boolean paramBoolean)
  {
    this.b = paramInt;
    this.c = paramat;
    this.d = paramBoolean;
  }

  public final at a()
  {
    return this.c;
  }

  public final az a(at paramat)
    throws IOException
  {
    if (this.b < this.a.a.e.size())
    {
      Object localObject = new ar(this.a, this.b + 1, paramat, this.d);
      paramat = (ag)this.a.a.e.get(this.b);
      localObject = paramat.a((ah)localObject);
      if (localObject == null)
        throw new NullPointerException("application interceptor " + paramat + " returned null");
      return localObject;
    }
    return this.a.a(paramat, this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ar
 * JD-Core Version:    0.6.2
 */