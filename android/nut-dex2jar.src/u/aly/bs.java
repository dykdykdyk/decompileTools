package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bs
  implements Serializable, Cloneable, cw<bs, by>
{
  public static final Map<by, de> e;
  private static final du f = new du("ImprintValue");
  private static final dn g = new dn("value", (byte)11, (short)1);
  private static final dn h = new dn("ts", (byte)10, (short)2);
  private static final dn i = new dn("guid", (byte)11, (short)3);
  private static final Map<Class<? extends dw>, dx> j;
  public String a;
  public long b;
  public String c;
  byte d = 0;
  private by[] k = { by.a };

  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(dy.class, new bu((byte)0));
    j.put(dz.class, new bx((byte)0));
    localObject = new EnumMap(by.class);
    ((Map)localObject).put(by.a, new de("value", (byte)2, new df((byte)11)));
    ((Map)localObject).put(by.b, new de("ts", (byte)1, new df((byte)10)));
    ((Map)localObject).put(by.c, new de("guid", (byte)1, new df((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    de.a(bs.class, e);
  }

  public final void a(dq paramdq)
    throws bv
  {
    ((dx)j.get(paramdq.s())).a().b(paramdq, this);
  }

  public final boolean a()
  {
    return this.a != null;
  }

  public final void b()
  {
    this.d = ((byte)(this.d | 0x1));
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)j.get(paramdq.s())).a().a(paramdq, this);
  }

  public final void c()
    throws bv
  {
    if (this.c == null)
      throw new cp("Required field 'guid' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ImprintValue(");
    int m = 1;
    if (a())
    {
      localStringBuilder.append("value:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        m = 0;
      }
    }
    else
    {
      if (m == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.c != null)
        break label121;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label121: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.bs
 * JD-Core Version:    0.6.2
 */