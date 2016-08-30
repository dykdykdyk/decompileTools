package okhttp3.internal.http;

import a.q;
import a.z;
import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import java.net.Proxy.Type;
import okhttp3.ac;
import okhttp3.at;
import okhttp3.az;
import okhttp3.ba;
import okhttp3.bb;
import okhttp3.bd;
import okhttp3.internal.b.c;
import okhttp3.internal.f;
import okhttp3.internal.o;
import okhttp3.n;

public final class e
  implements u
{
  final ab a;
  final a.j b;
  final a.i c;
  int d = 0;
  private p e;

  public e(ab paramab, a.j paramj, a.i parami)
  {
    this.a = paramab;
    this.b = paramj;
    this.c = parami;
  }

  public final a.aa a(long paramLong)
    throws IOException
  {
    if (this.d != 4)
      throw new IllegalStateException("state: " + this.d);
    this.d = 5;
    return new j(this, paramLong);
  }

  public final z a(at paramat, long paramLong)
    throws IOException
  {
    if ("chunked".equalsIgnoreCase(paramat.a("Transfer-Encoding")))
    {
      if (this.d != 1)
        throw new IllegalStateException("state: " + this.d);
      this.d = 2;
      return new g(this, (byte)0);
    }
    if (paramLong != -1L)
    {
      if (this.d != 1)
        throw new IllegalStateException("state: " + this.d);
      this.d = 2;
      return new i(this, paramLong, (byte)0);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }

  public final bb a(az paramaz)
    throws IOException
  {
    Object localObject;
    if (!p.c(paramaz))
      localObject = a(0L);
    while (true)
    {
      return new w(paramaz.e, q.a((a.aa)localObject));
      if ("chunked".equalsIgnoreCase(paramaz.a("Transfer-Encoding")))
      {
        localObject = this.e;
        if (this.d != 4)
          throw new IllegalStateException("state: " + this.d);
        this.d = 5;
        localObject = new h(this, (p)localObject);
      }
      else
      {
        long l = v.a(paramaz);
        if (l != -1L)
        {
          localObject = a(l);
        }
        else
        {
          if (this.d != 4)
            throw new IllegalStateException("state: " + this.d);
          if (this.a == null)
            throw new IllegalStateException("streamAllocation == null");
          this.d = 5;
          this.a.a(true, false, false);
          localObject = new k(this, (byte)0);
        }
      }
    }
  }

  public final void a()
  {
    c localc = this.a.a();
    if (localc != null)
      o.a(localc.c);
  }

  public final void a(okhttp3.ab paramab, String paramString)
    throws IOException
  {
    if (this.d != 0)
      throw new IllegalStateException("state: " + this.d);
    this.c.b(paramString).b("\r\n");
    int i = 0;
    int j = paramab.a.length / 2;
    while (i < j)
    {
      this.c.b(paramab.a(i)).b(": ").b(paramab.b(i)).b("\r\n");
      i += 1;
    }
    this.c.b("\r\n");
    this.d = 1;
  }

  public final void a(at paramat)
    throws IOException
  {
    this.e.a();
    Object localObject = this.e.c.a().a().b.type();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramat.b);
    localStringBuilder.append(' ');
    int i;
    if ((!paramat.c()) && (localObject == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0)
        break label115;
      localStringBuilder.append(paramat.a);
    }
    while (true)
    {
      localStringBuilder.append(" HTTP/1.1");
      localObject = localStringBuilder.toString();
      a(paramat.c, (String)localObject);
      return;
      i = 0;
      break;
      label115: localStringBuilder.append(x.a(paramat.a));
    }
  }

  public final void a(p paramp)
  {
    this.e = paramp;
  }

  public final void a(y paramy)
    throws IOException
  {
    if (this.d != 1)
      throw new IllegalStateException("state: " + this.d);
    this.d = 3;
    paramy.a(this.c);
  }

  public final ba b()
    throws IOException
  {
    return d();
  }

  public final void c()
    throws IOException
  {
    this.c.flush();
  }

  public final ba d()
    throws IOException
  {
    if ((this.d != 1) && (this.d != 3))
      throw new IllegalStateException("state: " + this.d);
    Object localObject;
    try
    {
      aa localaa;
      do
      {
        localaa = aa.a(this.b.n());
        localObject = new ba();
        ((ba)localObject).b = localaa.a;
        ((ba)localObject).c = localaa.b;
        ((ba)localObject).d = localaa.c;
        localObject = ((ba)localObject).a(e());
      }
      while (localaa.b == 100);
      this.d = 4;
      return localObject;
    }
    catch (EOFException localEOFException)
    {
      localObject = new IOException("unexpected end of stream on " + this.a);
      ((IOException)localObject).initCause(localEOFException);
    }
    throw ((Throwable)localObject);
  }

  public final okhttp3.ab e()
    throws IOException
  {
    ac localac = new ac();
    while (true)
    {
      String str = this.b.n();
      if (str.length() == 0)
        break;
      f.b.a(localac, str);
    }
    return localac.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.e
 * JD-Core Version:    0.6.2
 */