package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bz
  implements Serializable, Cloneable, cw<bz, ce>
{
  public static final Map<ce, de> e;
  private static final du f = new du("Response");
  private static final dn g = new dn("resp_code", (byte)8, (short)1);
  private static final dn h = new dn("msg", (byte)11, (short)2);
  private static final dn i = new dn("imprint", (byte)12, (short)3);
  private static final Map<Class<? extends dw>, dx> j;
  public int a;
  public String b;
  public bl c;
  byte d = 0;
  private ce[] k = { ce.b, ce.c };

  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(dy.class, new cb((byte)0));
    j.put(dz.class, new cd((byte)0));
    localObject = new EnumMap(ce.class);
    ((Map)localObject).put(ce.a, new de("resp_code", (byte)1, new df((byte)8)));
    ((Map)localObject).put(ce.b, new de("msg", (byte)2, new df((byte)11)));
    ((Map)localObject).put(ce.c, new de("imprint", (byte)2, new di(bl.class)));
    e = Collections.unmodifiableMap((Map)localObject);
    de.a(bz.class, e);
  }

  public final void a()
  {
    this.d = ((byte)(this.d | 0x1));
  }

  public final void a(dq paramdq)
    throws bv
  {
    ((dx)j.get(paramdq.s())).a().b(paramdq, this);
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)j.get(paramdq.s())).a().a(paramdq, this);
  }

  public final boolean b()
  {
    return this.b != null;
  }

  public final boolean c()
  {
    return this.c != null;
  }

  public final void d()
    throws bv
  {
    if (this.c != null)
      this.c.c();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    localStringBuilder.append("resp_code:");
    localStringBuilder.append(this.a);
    if (b())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("msg:");
      if (this.b == null)
        localStringBuilder.append("null");
    }
    else if (c())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("imprint:");
      if (this.c != null)
        break label120;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label120: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.bz
 * JD-Core Version:    0.6.2
 */