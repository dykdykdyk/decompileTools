package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class at
  implements Serializable, Cloneable, cw<at, ay>
{
  public static final Map<ay, de> f;
  private static final du g = new du("IdJournal");
  private static final dn h = new dn("domain", (byte)11, (short)1);
  private static final dn i = new dn("old_id", (byte)11, (short)2);
  private static final dn j = new dn("new_id", (byte)11, (short)3);
  private static final dn k = new dn("ts", (byte)10, (short)4);
  private static final Map<Class<? extends dw>, dx> l;
  public String a;
  public String b;
  public String c;
  public long d;
  byte e = 0;
  private ay[] m = { ay.b };

  static
  {
    Object localObject = new HashMap();
    l = (Map)localObject;
    ((Map)localObject).put(dy.class, new av((byte)0));
    l.put(dz.class, new ax((byte)0));
    localObject = new EnumMap(ay.class);
    ((Map)localObject).put(ay.a, new de("domain", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ay.b, new de("old_id", (byte)2, new df((byte)11)));
    ((Map)localObject).put(ay.c, new de("new_id", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ay.d, new de("ts", (byte)1, new df((byte)10)));
    f = Collections.unmodifiableMap((Map)localObject);
    de.a(at.class, f);
  }

  public final void a(dq paramdq)
    throws bv
  {
    ((dx)l.get(paramdq.s())).a().b(paramdq, this);
  }

  public final boolean a()
  {
    return this.b != null;
  }

  public final void b()
  {
    this.e = ((byte)(this.e | 0x1));
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)l.get(paramdq.s())).a().a(paramdq, this);
  }

  public final void c()
    throws bv
  {
    if (this.a == null)
      throw new cp("Required field 'domain' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cp("Required field 'new_id' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdJournal(");
    localStringBuilder.append("domain:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("old_id:");
        if (this.b != null)
          break label141;
        localStringBuilder.append("null");
      }
      label66: localStringBuilder.append(", ");
      localStringBuilder.append("new_id:");
      if (this.c != null)
        break label153;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label141: localStringBuilder.append(this.b);
      break label66;
      label153: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.at
 * JD-Core Version:    0.6.2
 */