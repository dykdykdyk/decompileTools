package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bl
  implements Serializable, Cloneable, cw<bl, br>
{
  public static final Map<br, de> e;
  private static final du f = new du("Imprint");
  private static final dn g = new dn("property", (byte)13, (short)1);
  private static final dn h = new dn("version", (byte)8, (short)2);
  private static final dn i = new dn("checksum", (byte)11, (short)3);
  private static final Map<Class<? extends dw>, dx> j;
  public Map<String, bs> a;
  public int b;
  public String c;
  byte d = 0;

  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(dy.class, new bn((byte)0));
    j.put(dz.class, new bq((byte)0));
    localObject = new EnumMap(br.class);
    ((Map)localObject).put(br.a, new de("property", (byte)1, new dh(new df((byte)11), new di(bs.class))));
    ((Map)localObject).put(br.b, new de("version", (byte)1, new df((byte)8)));
    ((Map)localObject).put(br.c, new de("checksum", (byte)1, new df((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    de.a(bl.class, e);
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
    if (this.a == null)
      throw new cp("Required field 'property' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cp("Required field 'checksum' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Imprint(");
    localStringBuilder.append("property:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.c != null)
        break label106;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label106: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.bl
 * JD-Core Version:    0.6.2
 */