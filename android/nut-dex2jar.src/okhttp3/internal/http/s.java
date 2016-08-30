package okhttp3.internal.http;

import a.i;
import a.q;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;
import okhttp3.a;
import okhttp3.ad;
import okhttp3.ag;
import okhttp3.ah;
import okhttp3.am;
import okhttp3.at;
import okhttp3.av;
import okhttp3.az;
import okhttp3.bb;
import okhttp3.bd;
import okhttp3.n;

public final class s
  implements ah
{
  private final int b;
  private final at c;
  private int d;

  public s(p paramp, int paramInt, at paramat)
  {
    this.b = paramInt;
    this.c = paramat;
  }

  public final at a()
  {
    return this.c;
  }

  public final az a(at paramat)
    throws IOException
  {
    this.d += 1;
    Object localObject1;
    Object localObject2;
    if (this.b > 0)
    {
      localObject1 = (ag)this.a.b.f.get(this.b - 1);
      localObject2 = this.a.c.a().a().a;
      if ((!paramat.a.b.equals(((a)localObject2).a.b)) || (paramat.a.c != ((a)localObject2).a.c))
        throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
      if (this.d > 1)
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
    }
    if (this.b < this.a.b.f.size())
    {
      localObject1 = new s(this.a, this.b + 1, paramat);
      localObject2 = (ag)this.a.b.f.get(this.b);
      paramat = ((ag)localObject2).a((ah)localObject1);
      if (((s)localObject1).d != 1)
        throw new IllegalStateException("network interceptor " + localObject2 + " must call proceed() exactly once");
      if (paramat == null)
        throw new NullPointerException("network interceptor " + localObject2 + " returned null");
    }
    int i;
    do
    {
      do
      {
        return paramat;
        p.a(this.a).a(paramat);
        p.a(this.a, paramat);
        if ((p.a(paramat)) && (paramat.d != null))
        {
          localObject1 = q.a(p.a(this.a).a(paramat, paramat.d.contentLength()));
          paramat.d.writeTo((i)localObject1);
          ((i)localObject1).close();
        }
        localObject1 = p.b(this.a);
        i = ((az)localObject1).b;
        if (i == 204)
          break;
        paramat = (at)localObject1;
      }
      while (i != 205);
      paramat = (at)localObject1;
    }
    while (((az)localObject1).f.contentLength() <= 0L);
    throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + ((az)localObject1).f.contentLength());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.s
 * JD-Core Version:    0.6.2
 */