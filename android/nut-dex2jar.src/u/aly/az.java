package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class az
  implements Serializable, Cloneable, cw<az, be>
{
  public static final Map<be, de> e;
  private static final du f = new du("IdSnapshot");
  private static final dn g = new dn("identity", (byte)11, (short)1);
  private static final dn h = new dn("ts", (byte)10, (short)2);
  private static final dn i = new dn("version", (byte)8, (short)3);
  private static final Map<Class<? extends dw>, dx> j;
  public String a;
  public long b;
  public int c;
  byte d = 0;

  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(dy.class, new bb((byte)0));
    j.put(dz.class, new bd((byte)0));
    localObject = new EnumMap(be.class);
    ((Map)localObject).put(be.a, new de("identity", (byte)1, new df((byte)11)));
    ((Map)localObject).put(be.b, new de("ts", (byte)1, new df((byte)10)));
    ((Map)localObject).put(be.c, new de("version", (byte)1, new df((byte)8)));
    e = Collections.unmodifiableMap((Map)localObject);
    de.a(az.class, e);
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

  public final void b()
  {
    this.d = ((byte)(this.d | 0x2));
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)j.get(paramdq.s())).a().a(paramdq, this);
  }

  public final void c()
    throws bv
  {
    if (this.a == null)
      throw new cp("Required field 'identity' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdSnapshot(");
    localStringBuilder.append("identity:");
    if (this.a == null)
      localStringBuilder.append("null");
    while (true)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.az
 * JD-Core Version:    0.6.2
 */