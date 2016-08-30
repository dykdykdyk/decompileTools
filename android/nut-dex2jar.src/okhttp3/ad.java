package okhttp3;

import a.f;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.o;

public final class ad
{
  private static final char[] f = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  public final String a;
  public final String b;
  public final int c;
  public final List<String> d;
  public final List<String> e;
  private final String g;
  private final String h;
  private final String i;
  private final String j;

  private ad(ae paramae)
  {
    this.a = paramae.a;
    this.g = a(paramae.b, false);
    this.h = a(paramae.c, false);
    this.b = paramae.d;
    this.c = paramae.a();
    this.d = a(paramae.f, false);
    if (paramae.g != null);
    for (Object localObject1 = a(paramae.g, true); ; localObject1 = null)
    {
      this.e = ((List)localObject1);
      localObject1 = localObject2;
      if (paramae.h != null)
        localObject1 = a(paramae.h, false);
      this.i = ((String)localObject1);
      this.j = paramae.toString();
      return;
    }
  }

  static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'))
      return paramChar - '0';
    if ((paramChar >= 'a') && (paramChar <= 'f'))
      return paramChar - 'a' + 10;
    if ((paramChar >= 'A') && (paramChar <= 'F'))
      return paramChar - 'A' + 10;
    return -1;
  }

  public static int a(String paramString)
  {
    if (paramString.equals("http"))
      return 80;
    if (paramString.equals("https"))
      return 443;
    return -1;
  }

  static String a(String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      int m = paramString1.codePointAt(k);
      if ((m < 32) || (m == 127) || ((m >= 128) && (paramBoolean4)) || (paramString2.indexOf(m) != -1) || ((m == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!a(paramString1, k, paramInt2))))) || ((m == 43) && (paramBoolean3)))
      {
        f localf = new f();
        localf.a(paramString1, paramInt1, k);
        paramInt1 = k;
        Object localObject1 = null;
        if (paramInt1 < paramInt2)
        {
          k = paramString1.codePointAt(paramInt1);
          Object localObject3;
          Object localObject2;
          if (paramBoolean1)
          {
            localObject3 = localObject1;
            if (k != 9)
            {
              localObject3 = localObject1;
              if (k != 10)
              {
                localObject3 = localObject1;
                if (k != 12)
                {
                  localObject3 = localObject1;
                  if (k == 13);
                }
              }
            }
          }
          else
          {
            if ((k != 43) || (!paramBoolean3))
              break label234;
            if (!paramBoolean1)
              break label227;
            localObject2 = "+";
            label200: localf.a((String)localObject2);
            localObject3 = localObject1;
          }
          while (true)
          {
            paramInt1 = Character.charCount(k) + paramInt1;
            localObject1 = localObject3;
            break;
            label227: localObject2 = "%2B";
            break label200;
            label234: if ((k < 32) || (k == 127) || ((k >= 128) && (paramBoolean4)) || (paramString2.indexOf(k) != -1) || ((k == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!a(paramString1, paramInt1, paramInt2))))))
            {
              localObject2 = localObject1;
              if (localObject1 == null)
                localObject2 = new f();
              ((f)localObject2).a(k);
              while (true)
              {
                localObject3 = localObject2;
                if (((f)localObject2).c())
                  break;
                m = ((f)localObject2).f() & 0xFF;
                localf.b(37);
                localf.b(f[(m >> 4 & 0xF)]);
                localf.b(f[(m & 0xF)]);
              }
            }
            localf.a(k);
            localObject3 = localObject1;
          }
        }
        return localf.m();
      }
      k += Character.charCount(m);
    }
    return paramString1.substring(paramInt1, paramInt2);
  }

  static String a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      int m = paramString.charAt(k);
      if ((m == 37) || ((m == 43) && (paramBoolean)))
      {
        f localf = new f();
        localf.a(paramString, paramInt1, k);
        paramInt1 = k;
        if (paramInt1 < paramInt2)
        {
          k = paramString.codePointAt(paramInt1);
          if ((k == 37) && (paramInt1 + 2 < paramInt2))
          {
            m = a(paramString.charAt(paramInt1 + 1));
            int n = a(paramString.charAt(paramInt1 + 2));
            if ((m == -1) || (n == -1))
              break label169;
            localf.b((m << 4) + n);
            paramInt1 += 2;
          }
          while (true)
          {
            paramInt1 += Character.charCount(k);
            break;
            if ((k == 43) && (paramBoolean))
              localf.b(32);
            else
              label169: localf.a(k);
          }
        }
        return localf.m();
      }
      k += 1;
    }
    return paramString.substring(paramInt1, paramInt2);
  }

  public static String a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    return a(paramString1, 0, paramString1.length(), paramString2, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
  }

  private static String a(String paramString, boolean paramBoolean)
  {
    return a(paramString, 0, paramString.length(), paramBoolean);
  }

  private static List<String> a(List<String> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      if (paramList != null);
      for (paramList = a(paramList, paramBoolean); ; paramList = null)
      {
        localArrayList.add(paramList);
        break;
      }
    }
    return Collections.unmodifiableList(localArrayList);
  }

  static void a(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      paramStringBuilder.append('/');
      paramStringBuilder.append((String)paramList.get(k));
      k += 1;
    }
  }

  private static boolean a(String paramString, int paramInt1, int paramInt2)
  {
    return (paramInt1 + 2 < paramInt2) && (paramString.charAt(paramInt1) == '%') && (a(paramString.charAt(paramInt1 + 1)) != -1) && (a(paramString.charAt(paramInt1 + 2)) != -1);
  }

  static List<String> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    if (k <= paramString.length())
    {
      int n = paramString.indexOf('&', k);
      int m = n;
      if (n == -1)
        m = paramString.length();
      n = paramString.indexOf('=', k);
      if ((n == -1) || (n > m))
      {
        localArrayList.add(paramString.substring(k, m));
        localArrayList.add(null);
      }
      while (true)
      {
        k = m + 1;
        break;
        localArrayList.add(paramString.substring(k, n));
        localArrayList.add(paramString.substring(n + 1, m));
      }
    }
    return localArrayList;
  }

  public static void b(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      String str1 = (String)paramList.get(k);
      String str2 = (String)paramList.get(k + 1);
      if (k > 0)
        paramStringBuilder.append('&');
      paramStringBuilder.append(str1);
      if (str2 != null)
      {
        paramStringBuilder.append('=');
        paramStringBuilder.append(str2);
      }
      k += 2;
    }
  }

  public static ad e(String paramString)
  {
    ad localad = null;
    ae localae = new ae();
    if (localae.a(null, paramString) == af.a)
      localad = localae.b();
    return localad;
  }

  public final URI a()
  {
    Object localObject2 = new ae();
    ((ae)localObject2).a = this.a;
    ((ae)localObject2).b = b();
    ((ae)localObject2).c = c();
    ((ae)localObject2).d = this.b;
    int k;
    if (this.c != a(this.a))
    {
      k = this.c;
      ((ae)localObject2).e = k;
      ((ae)localObject2).f.clear();
      ((ae)localObject2).f.addAll(e());
      ((ae)localObject2).a(f());
      if (this.i != null)
        break label188;
    }
    int m;
    for (Object localObject1 = null; ; localObject1 = this.j.substring(k + 1))
    {
      ((ae)localObject2).h = ((String)localObject1);
      m = ((ae)localObject2).f.size();
      k = 0;
      while (k < m)
      {
        localObject1 = (String)((ae)localObject2).f.get(k);
        ((ae)localObject2).f.set(k, a((String)localObject1, "[]", true, true, false, true));
        k += 1;
      }
      k = -1;
      break;
      label188: k = this.j.indexOf('#');
    }
    if (((ae)localObject2).g != null)
    {
      m = ((ae)localObject2).g.size();
      k = 0;
      while (k < m)
      {
        localObject1 = (String)((ae)localObject2).g.get(k);
        if (localObject1 != null)
          ((ae)localObject2).g.set(k, a((String)localObject1, "\\^`{|}", true, true, true, true));
        k += 1;
      }
    }
    if (((ae)localObject2).h != null)
      ((ae)localObject2).h = a(((ae)localObject2).h, " \"#<>\\^`{|}", true, true, false, false);
    localObject2 = ((ae)localObject2).toString();
    try
    {
      localObject1 = new URI((String)localObject2);
      return localObject1;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      try
      {
        localObject2 = URI.create(((String)localObject2).replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
        return localObject2;
      }
      catch (Exception localException)
      {
      }
      throw new RuntimeException(localURISyntaxException);
    }
  }

  public final String b()
  {
    if (this.g.isEmpty())
      return "";
    int k = this.a.length() + 3;
    int m = o.a(this.j, k, this.j.length(), ":@");
    return this.j.substring(k, m);
  }

  public final String c()
  {
    if (this.h.isEmpty())
      return "";
    int k = this.j.indexOf(':', this.a.length() + 3);
    int m = this.j.indexOf('@');
    return this.j.substring(k + 1, m);
  }

  public final ad c(String paramString)
  {
    paramString = d(paramString);
    if (paramString != null)
      return paramString.b();
    return null;
  }

  public final String d()
  {
    int k = this.j.indexOf('/', this.a.length() + 3);
    int m = o.a(this.j, k, this.j.length(), "?#");
    return this.j.substring(k, m);
  }

  public final ae d(String paramString)
  {
    ae localae = new ae();
    if (localae.a(this, paramString) == af.a)
      return localae;
    return null;
  }

  public final List<String> e()
  {
    int k = this.j.indexOf('/', this.a.length() + 3);
    int m = o.a(this.j, k, this.j.length(), "?#");
    ArrayList localArrayList = new ArrayList();
    while (k < m)
    {
      int n = k + 1;
      k = o.a(this.j, n, m, '/');
      localArrayList.add(this.j.substring(n, k));
    }
    return localArrayList;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ad)) && (((ad)paramObject).j.equals(this.j));
  }

  public final String f()
  {
    if (this.e == null)
      return null;
    int k = this.j.indexOf('?') + 1;
    int m = o.a(this.j, k + 1, this.j.length(), '#');
    return this.j.substring(k, m);
  }

  public final int hashCode()
  {
    return this.j.hashCode();
  }

  public final String toString()
  {
    return this.j;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ad
 * JD-Core Version:    0.6.2
 */