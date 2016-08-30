package okhttp3;

import java.util.Arrays;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.o;

public final class q
{
  public static final q a = localr.a(arrayOfString).a(new be[] { be.a, be.b, be.c }).a().b();
  public static final q b = new r(a).a(new be[] { be.c }).a().b();
  public static final q c = new r(false).b();
  private static final m[] h = { m.aK, m.aO, m.W, m.am, m.al, m.av, m.aw, m.F, m.J, m.U, m.D, m.H, m.h };
  final boolean d;
  public final boolean e;
  final String[] f;
  final String[] g;

  static
  {
    r localr = new r(true);
    m[] arrayOfm = h;
    if (!localr.a)
      throw new IllegalStateException("no cipher suites for cleartext connections");
    String[] arrayOfString = new String[arrayOfm.length];
    int i = 0;
    while (i < arrayOfm.length)
    {
      arrayOfString[i] = arrayOfm[i].aS;
      i += 1;
    }
  }

  private q(r paramr)
  {
    this.d = paramr.a;
    this.f = paramr.b;
    this.g = paramr.c;
    this.e = paramr.d;
  }

  private static boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2.length == 0));
    while (true)
    {
      return false;
      int j = paramArrayOfString1.length;
      int i = 0;
      while (i < j)
      {
        if (o.a(paramArrayOfString2, paramArrayOfString1[i]))
          return true;
        i += 1;
      }
    }
  }

  public final boolean a(SSLSocket paramSSLSocket)
  {
    if (!this.d);
    while (((this.g != null) && (!a(this.g, paramSSLSocket.getEnabledProtocols()))) || ((this.f != null) && (!a(this.f, paramSSLSocket.getEnabledCipherSuites()))))
      return false;
    return true;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof q));
    do
    {
      return false;
      if (paramObject == this)
        return true;
      paramObject = (q)paramObject;
    }
    while ((this.d != paramObject.d) || ((this.d) && ((!Arrays.equals(this.f, paramObject.f)) || (!Arrays.equals(this.g, paramObject.g)) || (this.e != paramObject.e))));
    return true;
  }

  public final int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (this.d)
    {
      j = Arrays.hashCode(this.f);
      k = Arrays.hashCode(this.g);
      if (!this.e)
        break label53;
    }
    label53: for (i = 0; ; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }

  public final String toString()
  {
    Object localObject2 = null;
    int j = 0;
    if (!this.d)
      return "ConnectionSpec()";
    Object localObject1;
    if (this.f != null)
      if (this.f == null)
      {
        localObject1 = null;
        localObject1 = localObject1.toString();
        label36: if (this.g == null)
          break label205;
        if (this.g != null)
          break label154;
      }
    label50: label205: for (localObject2 = localObject2.toString(); ; localObject2 = "[all enabled]")
    {
      return "ConnectionSpec(cipherSuites=" + (String)localObject1 + ", tlsVersions=" + (String)localObject2 + ", supportsTlsExtensions=" + this.e + ")";
      localObject1 = new m[this.f.length];
      int i = 0;
      while (i < this.f.length)
      {
        localObject1[i] = m.a(this.f[i]);
        i += 1;
      }
      localObject1 = o.a((Object[])localObject1);
      break;
      localObject1 = "[all enabled]";
      break label36;
      localObject2 = new be[this.g.length];
      i = j;
      while (i < this.g.length)
      {
        localObject2[i] = be.a(this.g[i]);
        i += 1;
      }
      localObject2 = o.a((Object[])localObject2);
      break label50;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.q
 * JD-Core Version:    0.6.2
 */