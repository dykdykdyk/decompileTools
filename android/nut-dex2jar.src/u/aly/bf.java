package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bf
  implements Serializable, Cloneable, cw<bf, bk>
{
  public static final Map<bk, de> d;
  private static final du e = new du("IdTracking");
  private static final dn f = new dn("snapshots", (byte)13, (short)1);
  private static final dn g = new dn("journals", (byte)15, (short)2);
  private static final dn h = new dn("checksum", (byte)11, (short)3);
  private static final Map<Class<? extends dw>, dx> i;
  public Map<String, az> a;
  public List<at> b;
  public String c;
  private bk[] j = { bk.b, bk.c };

  static
  {
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(dy.class, new bh((byte)0));
    i.put(dz.class, new bj((byte)0));
    localObject = new EnumMap(bk.class);
    ((Map)localObject).put(bk.a, new de("snapshots", (byte)1, new dh(new df((byte)11), new di(az.class))));
    ((Map)localObject).put(bk.b, new de("journals", (byte)2, new dg(new di(at.class))));
    ((Map)localObject).put(bk.c, new de("checksum", (byte)2, new df((byte)11)));
    d = Collections.unmodifiableMap((Map)localObject);
    de.a(bf.class, d);
  }

  public final void a(dq paramdq)
    throws bv
  {
    ((dx)i.get(paramdq.s())).a().b(paramdq, this);
  }

  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public final boolean a()
  {
    return this.b != null;
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)i.get(paramdq.s())).a().a(paramdq, this);
  }

  public final boolean b()
  {
    return this.c != null;
  }

  public final void c()
    throws bv
  {
    if (this.a == null)
      throw new cp("Required field 'snapshots' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdTracking(");
    localStringBuilder.append("snapshots:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("journals:");
        if (this.b != null)
          break label125;
        localStringBuilder.append("null");
      }
      label66: if (b())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("checksum:");
        if (this.c != null)
          break label137;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label125: localStringBuilder.append(this.b);
      break label66;
      label137: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.bf
 * JD-Core Version:    0.6.2
 */