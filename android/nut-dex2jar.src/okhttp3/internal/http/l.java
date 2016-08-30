package okhttp3.internal.http;

import a.k;
import a.q;
import a.z;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.ac;
import okhttp3.ad;
import okhttp3.am;
import okhttp3.ap;
import okhttp3.at;
import okhttp3.az;
import okhttp3.ba;
import okhttp3.bb;
import okhttp3.internal.a.a;
import okhttp3.internal.a.e;
import okhttp3.internal.a.t;
import okhttp3.internal.o;

public final class l
  implements u
{
  private static final k a = k.a("connection");
  private static final k b = k.a("host");
  private static final k c = k.a("keep-alive");
  private static final k d = k.a("proxy-connection");
  private static final k e = k.a("transfer-encoding");
  private static final k f = k.a("te");
  private static final k g = k.a("encoding");
  private static final k h = k.a("upgrade");
  private static final List<k> i = o.a(new k[] { a, b, c, d, e, okhttp3.internal.a.x.b, okhttp3.internal.a.x.c, okhttp3.internal.a.x.d, okhttp3.internal.a.x.e, okhttp3.internal.a.x.f, okhttp3.internal.a.x.g });
  private static final List<k> j = o.a(new k[] { a, b, c, d, e });
  private static final List<k> k = o.a(new k[] { a, b, c, d, f, e, g, h, okhttp3.internal.a.x.b, okhttp3.internal.a.x.c, okhttp3.internal.a.x.d, okhttp3.internal.a.x.e, okhttp3.internal.a.x.f, okhttp3.internal.a.x.g });
  private static final List<k> l = o.a(new k[] { a, b, c, d, f, e, g, h });
  private final ab m;
  private final e n;
  private p o;
  private t p;

  public l(ab paramab, e parame)
  {
    this.m = paramab;
    this.n = parame;
  }

  private static ba a(List<okhttp3.internal.a.x> paramList)
    throws IOException
  {
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    ac localac = new ac();
    int i5 = paramList.size();
    int i1 = 0;
    while (i1 < i5)
    {
      k localk = ((okhttp3.internal.a.x)paramList.get(i1)).h;
      String str2 = ((okhttp3.internal.a.x)paramList.get(i1)).i.a();
      int i2 = 0;
      if (i2 < str2.length())
      {
        int i4 = str2.indexOf(0, i2);
        int i3 = i4;
        if (i4 == -1)
          i3 = str2.length();
        String str1 = str2.substring(i2, i3);
        if (localk.equals(okhttp3.internal.a.x.a))
          localObject1 = str1;
        while (true)
        {
          i2 = i3 + 1;
          break;
          if (localk.equals(okhttp3.internal.a.x.g))
            localObject2 = str1;
          else if (!j.contains(localk))
            localac.a(localk.a(), str1);
        }
      }
      i1 += 1;
    }
    if (localObject1 == null)
      throw new ProtocolException("Expected ':status' header not present");
    paramList = aa.a((String)localObject2 + " " + (String)localObject1);
    localObject1 = new ba();
    ((ba)localObject1).b = ap.c;
    ((ba)localObject1).c = paramList.b;
    ((ba)localObject1).d = paramList.c;
    return ((ba)localObject1).a(localac.a());
  }

  private static List<okhttp3.internal.a.x> b(at paramat)
  {
    okhttp3.ab localab = paramat.c;
    ArrayList localArrayList = new ArrayList(localab.a.length / 2 + 5);
    localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.b, paramat.b));
    localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.c, x.a(paramat.a)));
    localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.g, "HTTP/1.1"));
    localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.f, o.a(paramat.a, false)));
    localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.d, paramat.a.a));
    paramat = new LinkedHashSet();
    int i3 = localab.a.length / 2;
    int i1 = 0;
    if (i1 < i3)
    {
      k localk = k.a(localab.a(i1).toLowerCase(Locale.US));
      String str;
      if (!i.contains(localk))
      {
        str = localab.b(i1);
        if (!paramat.add(localk))
          break label242;
        localArrayList.add(new okhttp3.internal.a.x(localk, str));
      }
      label339: 
      while (true)
      {
        i1 += 1;
        break;
        label242: int i2 = 0;
        while (true)
        {
          if (i2 >= localArrayList.size())
            break label339;
          if (((okhttp3.internal.a.x)localArrayList.get(i2)).h.equals(localk))
          {
            localArrayList.set(i2, new okhttp3.internal.a.x(localk, ((okhttp3.internal.a.x)localArrayList.get(i2)).i.a() + '\000' + str));
            break;
          }
          i2 += 1;
        }
      }
    }
    return localArrayList;
  }

  public final z a(at paramat, long paramLong)
    throws IOException
  {
    return this.p.d();
  }

  public final bb a(az paramaz)
    throws IOException
  {
    m localm = new m(this, this.p.f);
    return new w(paramaz.e, q.a(localm));
  }

  public final void a()
  {
    if (this.p != null)
      this.p.b(a.l);
  }

  public final void a(at paramat)
    throws IOException
  {
    int i1 = 0;
    if (this.p != null)
      return;
    this.o.a();
    boolean bool = p.a(paramat);
    if (this.n.a == ap.d)
    {
      okhttp3.ab localab = paramat.c;
      ArrayList localArrayList = new ArrayList(localab.a.length / 2 + 4);
      localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.b, paramat.b));
      localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.c, x.a(paramat.a)));
      localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.e, o.a(paramat.a, false)));
      localArrayList.add(new okhttp3.internal.a.x(okhttp3.internal.a.x.d, paramat.a.a));
      int i2 = localab.a.length / 2;
      while (true)
      {
        paramat = localArrayList;
        if (i1 >= i2)
          break;
        paramat = k.a(localab.a(i1).toLowerCase(Locale.US));
        if (!k.contains(paramat))
          localArrayList.add(new okhttp3.internal.a.x(paramat, localab.b(i1)));
        i1 += 1;
      }
    }
    paramat = b(paramat);
    this.p = this.n.a(paramat, bool);
    this.p.h.a(this.o.b.x, TimeUnit.MILLISECONDS);
    this.p.i.a(this.o.b.y, TimeUnit.MILLISECONDS);
  }

  public final void a(p paramp)
  {
    this.o = paramp;
  }

  public final void a(y paramy)
    throws IOException
  {
    paramy.a(this.p.d());
  }

  public final ba b()
    throws IOException
  {
    if (this.n.a == ap.d)
    {
      List localList = this.p.c();
      Object localObject1 = null;
      ac localac = new ac();
      int i2 = localList.size();
      int i1 = 0;
      if (i1 < i2)
      {
        k localk = ((okhttp3.internal.a.x)localList.get(i1)).h;
        localObject2 = ((okhttp3.internal.a.x)localList.get(i1)).i.a();
        if (localk.equals(okhttp3.internal.a.x.a))
          localObject1 = localObject2;
        while (true)
        {
          i1 += 1;
          break;
          if (!l.contains(localk))
            localac.a(localk.a(), (String)localObject2);
        }
      }
      if (localObject1 == null)
        throw new ProtocolException("Expected ':status' header not present");
      localObject1 = aa.a("HTTP/1.1 " + (String)localObject1);
      Object localObject2 = new ba();
      ((ba)localObject2).b = ap.d;
      ((ba)localObject2).c = ((aa)localObject1).b;
      ((ba)localObject2).d = ((aa)localObject1).c;
      return ((ba)localObject2).a(localac.a());
    }
    return a(this.p.c());
  }

  public final void c()
    throws IOException
  {
    this.p.d().close();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.l
 * JD-Core Version:    0.6.2
 */