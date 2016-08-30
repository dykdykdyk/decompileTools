package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.c.f;

public class am
  implements Cloneable, h
{
  private static final List<q> A;
  private static final List<ap> z = okhttp3.internal.o.a(new ap[] { ap.d, ap.c, ap.b });
  final v a;
  public final Proxy b;
  public final List<ap> c;
  public final List<q> d;
  final List<ag> e;
  public final List<ag> f;
  public final ProxySelector g;
  public final t h;
  final d i;
  final okhttp3.internal.g j;
  public final SocketFactory k;
  public final SSLSocketFactory l;
  final f m;
  public final HostnameVerifier n;
  public final j o;
  public final b p;
  public final b q;
  public final o r;
  public final w s;
  public final boolean t;
  public final boolean u;
  public final boolean v;
  public final int w;
  public final int x;
  public final int y;

  static
  {
    A = okhttp3.internal.o.a(new q[] { q.a, q.b, q.c });
    okhttp3.internal.f.b = new an();
  }

  public am()
  {
    this(new ao());
  }

  private am(ao paramao)
  {
    this.a = paramao.a;
    this.b = paramao.b;
    this.c = paramao.c;
    this.d = paramao.d;
    this.e = okhttp3.internal.o.a(paramao.e);
    this.f = okhttp3.internal.o.a(paramao.f);
    this.g = paramao.g;
    this.h = paramao.h;
    this.i = paramao.i;
    this.j = paramao.j;
    this.k = paramao.k;
    Object localObject = this.d.iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      q localq = (q)((Iterator)localObject).next();
      if ((i1 != 0) || (localq.d));
      for (i1 = 1; ; i1 = 0)
        break;
    }
    if ((paramao.l != null) || (i1 == 0))
      this.l = paramao.l;
    while (true)
    {
      if ((this.l == null) || (paramao.m != null))
        break label402;
      localObject = okhttp3.internal.j.a().a(this.l);
      if (localObject == null)
      {
        throw new IllegalStateException("Unable to extract the trust manager on " + okhttp3.internal.j.a() + ", sslSocketFactory is " + this.l.getClass());
        try
        {
          localObject = SSLContext.getInstance("TLS");
          ((SSLContext)localObject).init(null, null, null);
          this.l = ((SSLContext)localObject).getSocketFactory();
        }
        catch (GeneralSecurityException paramao)
        {
          throw new AssertionError();
        }
      }
    }
    this.m = okhttp3.internal.j.a().a((X509TrustManager)localObject);
    localObject = new k(paramao.o);
    ((k)localObject).b = this.m;
    for (this.o = ((k)localObject).a(); ; this.o = paramao.o)
    {
      this.n = paramao.n;
      this.p = paramao.p;
      this.q = paramao.q;
      this.r = paramao.r;
      this.s = paramao.s;
      this.t = paramao.t;
      this.u = paramao.u;
      this.v = paramao.v;
      this.w = paramao.w;
      this.x = paramao.x;
      this.y = paramao.y;
      return;
      label402: this.m = paramao.m;
    }
  }

  public final g a(at paramat)
  {
    return new aq(this, paramat);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.am
 * JD-Core Version:    0.6.2
 */