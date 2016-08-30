package okhttp3;

import a.f;
import a.i;
import a.k;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.o;

public final class aj extends av
{
  public static final ai a = ai.a("multipart/mixed");
  public static final ai b = ai.a("multipart/alternative");
  public static final ai c = ai.a("multipart/digest");
  public static final ai d = ai.a("multipart/parallel");
  public static final ai e = ai.a("multipart/form-data");
  private static final byte[] f = { 58, 32 };
  private static final byte[] g = { 13, 10 };
  private static final byte[] h = { 45, 45 };
  private final k i;
  private final ai j;
  private final ai k;
  private final List<al> l;
  private long m = -1L;

  public aj(k paramk, ai paramai, List<al> paramList)
  {
    this.i = paramk;
    this.j = paramai;
    this.k = ai.a(paramai + "; boundary=" + paramk.a());
    this.l = o.a(paramList);
  }

  private long a(i parami, boolean paramBoolean)
    throws IOException
  {
    long l1 = 0L;
    if (paramBoolean)
      parami = new f();
    for (i locali = parami; ; locali = null)
    {
      int i2 = this.l.size();
      int n = 0;
      Object localObject2;
      if (n < i2)
      {
        localObject2 = (al)this.l.get(n);
        Object localObject1 = al.a((al)localObject2);
        localObject2 = al.b((al)localObject2);
        parami.b(h);
        parami.b(this.i);
        parami.b(g);
        if (localObject1 != null)
        {
          int i1 = 0;
          int i3 = ((ab)localObject1).a.length / 2;
          while (i1 < i3)
          {
            parami.b(((ab)localObject1).a(i1)).b(f).b(((ab)localObject1).b(i1)).b(g);
            i1 += 1;
          }
        }
        localObject1 = ((av)localObject2).contentType();
        if (localObject1 != null)
          parami.b("Content-Type: ").b(((ai)localObject1).toString()).b(g);
        l2 = ((av)localObject2).contentLength();
        if (l2 != -1L)
          parami.b("Content-Length: ").j(l2).b(g);
        while (!paramBoolean)
        {
          parami.b(g);
          if (!paramBoolean)
            break label307;
          l1 += l2;
          parami.b(g);
          n += 1;
          break;
        }
        locali.p();
        l2 = -1L;
      }
      label307: 
      do
      {
        return l2;
        ((av)localObject2).writeTo(parami);
        break;
        parami.b(h);
        parami.b(this.i);
        parami.b(h);
        parami.b(g);
        l2 = l1;
      }
      while (!paramBoolean);
      long l2 = locali.b;
      locali.p();
      return l1 + l2;
    }
  }

  static StringBuilder a(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    int n = 0;
    int i1 = paramString.length();
    if (n < i1)
    {
      char c1 = paramString.charAt(n);
      switch (c1)
      {
      default:
        paramStringBuilder.append(c1);
      case '\n':
      case '\r':
      case '"':
      }
      while (true)
      {
        n += 1;
        break;
        paramStringBuilder.append("%0A");
        continue;
        paramStringBuilder.append("%0D");
        continue;
        paramStringBuilder.append("%22");
      }
    }
    paramStringBuilder.append('"');
    return paramStringBuilder;
  }

  public final long contentLength()
    throws IOException
  {
    long l1 = this.m;
    if (l1 != -1L)
      return l1;
    l1 = a(null, true);
    this.m = l1;
    return l1;
  }

  public final ai contentType()
  {
    return this.k;
  }

  public final void writeTo(i parami)
    throws IOException
  {
    a(parami, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.aj
 * JD-Core Version:    0.6.2
 */