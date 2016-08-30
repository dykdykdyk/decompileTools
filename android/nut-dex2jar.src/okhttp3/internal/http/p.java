package okhttp3.internal.http;

import a.i;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.ac;
import okhttp3.ad;
import okhttp3.am;
import okhttp3.at;
import okhttp3.az;
import okhttp3.ba;
import okhttp3.bb;
import okhttp3.internal.b.c;
import okhttp3.j;
import okhttp3.s;

public final class p
{
  public static final bb a = new q();
  public final am b;
  public final ab c;
  public final az d;
  public u e;
  public long f = -1L;
  public boolean g;
  public final boolean h;
  public final at i;
  public at j;
  public az k;
  public az l;
  public a.z m;
  public i n;
  public final boolean o;
  public final boolean p;
  public a q;
  public b r;

  public p(am paramam, at paramat, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ab paramab, az paramaz)
  {
    this.b = paramam;
    this.i = paramat;
    this.h = paramBoolean1;
    this.o = paramBoolean2;
    this.p = paramBoolean3;
    if (paramab != null);
    while (true)
    {
      this.c = paramab;
      this.m = null;
      this.d = paramaz;
      return;
      okhttp3.o localo = paramam.r;
      paramab = null;
      HostnameVerifier localHostnameVerifier = null;
      j localj = null;
      if (paramat.c())
      {
        paramab = paramam.l;
        localHostnameVerifier = paramam.n;
        localj = paramam.o;
      }
      paramab = new ab(localo, new okhttp3.a(paramat.a.b, paramat.a.c, paramam.s, paramam.k, paramab, localHostnameVerifier, localj, paramam.p, paramam.b, paramam.c, paramam.d, paramam.g));
    }
  }

  public static String a(List<s> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (i1 > 0)
        localStringBuilder.append("; ");
      s locals = (s)paramList.get(i1);
      localStringBuilder.append(locals.a).append('=').append(locals.b);
      i1 += 1;
    }
    return localStringBuilder.toString();
  }

  public static okhttp3.ab a(okhttp3.ab paramab1, okhttp3.ab paramab2)
    throws IOException
  {
    int i2 = 0;
    ac localac = new ac();
    int i3 = paramab1.a.length / 2;
    int i1 = 0;
    while (i1 < i3)
    {
      String str1 = paramab1.a(i1);
      String str2 = paramab1.b(i1);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((!v.a(str1)) || (paramab2.a(str1) == null)))
        localac.a(str1, str2);
      i1 += 1;
    }
    i3 = paramab2.a.length / 2;
    i1 = i2;
    while (i1 < i3)
    {
      paramab1 = paramab2.a(i1);
      if ((!"Content-Length".equalsIgnoreCase(paramab1)) && (v.a(paramab1)))
        localac.a(paramab1, paramab2.b(i1));
      i1 += 1;
    }
    return localac.a();
  }

  public static az a(az paramaz)
  {
    az localaz = paramaz;
    if (paramaz != null)
    {
      localaz = paramaz;
      if (paramaz.f != null)
      {
        paramaz = paramaz.b();
        paramaz.g = null;
        localaz = paramaz.a();
      }
    }
    return localaz;
  }

  public static boolean a(at paramat)
  {
    return t.b(paramat.b);
  }

  public static boolean a(az paramaz1, az paramaz2)
  {
    if (paramaz2.b == 304);
    do
    {
      return true;
      paramaz1 = paramaz1.e.b("Last-Modified");
      if (paramaz1 == null)
        break;
      paramaz2 = paramaz2.e.b("Last-Modified");
    }
    while ((paramaz2 != null) && (paramaz2.getTime() < paramaz1.getTime()));
    return false;
  }

  public static boolean c(az paramaz)
  {
    if (paramaz.a.b.equals("HEAD"));
    do
    {
      return false;
      int i1 = paramaz.b;
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304))
        return true;
    }
    while ((v.a(paramaz) == -1L) && (!"chunked".equalsIgnoreCase(paramaz.a("Transfer-Encoding"))));
    return true;
  }

  public final p a(IOException paramIOException)
  {
    int i2 = 1;
    Object localObject = this.c;
    if (((ab)localObject).d != null)
      ((ab)localObject).a(paramIOException);
    boolean bool;
    if (((ab)localObject).c != null)
    {
      localObject = ((ab)localObject).c;
      if ((!((z)localObject).c()) && (!((z)localObject).b()) && (!((z)localObject).d()))
        break label92;
      i1 = 1;
      if (i1 == 0);
    }
    else
    {
      if (!(paramIOException instanceof ProtocolException))
        break label97;
      bool = false;
      label77: i1 = i2;
      if (bool)
        break label86;
    }
    int i1 = 0;
    label86: if (i1 == 0);
    label92: label97: 
    while (!this.b.v)
    {
      return null;
      i1 = 0;
      break;
      if ((paramIOException instanceof InterruptedIOException))
      {
        bool = paramIOException instanceof SocketTimeoutException;
        break label77;
      }
      if (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException)))
      {
        bool = false;
        break label77;
      }
      if ((paramIOException instanceof SSLPeerUnverifiedException))
      {
        bool = false;
        break label77;
      }
      bool = true;
      break label77;
    }
    paramIOException = b();
    return new p(this.b, this.i, this.h, this.o, this.p, paramIOException, this.d);
  }

  public final void a()
  {
    if (this.f != -1L)
      throw new IllegalStateException();
    this.f = System.currentTimeMillis();
  }

  public final void a(okhttp3.ab paramab)
    throws IOException
  {
    if (this.b.h == okhttp3.t.a);
    while (s.a(this.i.a, paramab).isEmpty())
      return;
    this.b.h.a();
  }

  public final boolean a(ad paramad)
  {
    ad localad = this.i.a;
    return (localad.b.equals(paramad.b)) && (localad.c == paramad.c) && (localad.a.equals(paramad.a));
  }

  public final az b(az paramaz)
    throws IOException
  {
    if ((!this.g) || (!"gzip".equalsIgnoreCase(this.l.a("Content-Encoding"))));
    while (paramaz.f == null)
      return paramaz;
    a.o localo = new a.o(paramaz.f.source());
    okhttp3.ab localab = paramaz.e.a().a("Content-Encoding").a("Content-Length").a();
    paramaz = paramaz.b().a(localab);
    paramaz.g = new w(localab, a.q.a(localo));
    return paramaz.a();
  }

  public final ab b()
  {
    if (this.n != null)
    {
      okhttp3.internal.o.a(this.n);
      if (this.l == null)
        break label53;
      okhttp3.internal.o.a(this.l.f);
    }
    while (true)
    {
      return this.c;
      if (this.m == null)
        break;
      okhttp3.internal.o.a(this.m);
      break;
      label53: this.c.a(null);
    }
  }

  public final az c()
    throws IOException
  {
    this.e.c();
    Object localObject = this.e.b();
    ((ba)localObject).a = this.j;
    ((ba)localObject).e = this.c.a().e;
    az localaz = ((ba)localObject).a(v.b, Long.toString(this.f)).a(v.c, Long.toString(System.currentTimeMillis())).a();
    localObject = localaz;
    if (!this.p)
    {
      localObject = localaz.b();
      ((ba)localObject).g = this.e.a(localaz);
      localObject = ((ba)localObject).a();
    }
    if (("close".equalsIgnoreCase(((az)localObject).a.a("Connection"))) || ("close".equalsIgnoreCase(((az)localObject).a("Connection"))))
      this.c.a(true, false, false);
    return localObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.p
 * JD-Core Version:    0.6.2
 */