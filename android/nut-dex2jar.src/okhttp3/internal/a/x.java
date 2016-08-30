package okhttp3.internal.a;

import a.k;

public final class x
{
  public static final k a = k.a(":status");
  public static final k b = k.a(":method");
  public static final k c = k.a(":path");
  public static final k d = k.a(":scheme");
  public static final k e = k.a(":authority");
  public static final k f = k.a(":host");
  public static final k g = k.a(":version");
  public final k h;
  public final k i;
  final int j;

  public x(k paramk1, k paramk2)
  {
    this.h = paramk1;
    this.i = paramk2;
    this.j = (paramk1.c.length + 32 + paramk2.c.length);
  }

  public x(k paramk, String paramString)
  {
    this(paramk, k.a(paramString));
  }

  public x(String paramString1, String paramString2)
  {
    this(k.a(paramString1), k.a(paramString2));
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof x))
    {
      paramObject = (x)paramObject;
      bool1 = bool2;
      if (this.h.equals(paramObject.h))
      {
        bool1 = bool2;
        if (this.i.equals(paramObject.i))
          bool1 = true;
      }
    }
    return bool1;
  }

  public final int hashCode()
  {
    return (this.h.hashCode() + 527) * 31 + this.i.hashCode();
  }

  public final String toString()
  {
    return String.format("%s: %s", new Object[] { this.h.a(), this.i.a() });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.x
 * JD-Core Version:    0.6.2
 */