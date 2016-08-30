package u.aly;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class cf
  implements Serializable, Cloneable, cw<cf, ck>
{
  public static final Map<ck, de> l;
  private static final du m = new du("UMEnvelope");
  private static final dn n = new dn("version", (byte)11, (short)1);
  private static final dn o = new dn("address", (byte)11, (short)2);
  private static final dn p = new dn("signature", (byte)11, (short)3);
  private static final dn q = new dn("serial_num", (byte)8, (short)4);
  private static final dn r = new dn("ts_secs", (byte)8, (short)5);
  private static final dn s = new dn("length", (byte)8, (short)6);
  private static final dn t = new dn("entity", (byte)11, (short)7);
  private static final dn u = new dn("guid", (byte)11, (short)8);
  private static final dn v = new dn("checksum", (byte)11, (short)9);
  private static final dn w = new dn("codex", (byte)8, (short)10);
  private static final Map<Class<? extends dw>, dx> x;
  public String a;
  public String b;
  public String c;
  public int d;
  public int e;
  public int f;
  public ByteBuffer g;
  public String h;
  public String i;
  public int j;
  byte k = 0;
  private ck[] y = { ck.j };

  static
  {
    Object localObject = new HashMap();
    x = (Map)localObject;
    ((Map)localObject).put(dy.class, new ch((byte)0));
    x.put(dz.class, new cj((byte)0));
    localObject = new EnumMap(ck.class);
    ((Map)localObject).put(ck.a, new de("version", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ck.b, new de("address", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ck.c, new de("signature", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ck.d, new de("serial_num", (byte)1, new df((byte)8)));
    ((Map)localObject).put(ck.e, new de("ts_secs", (byte)1, new df((byte)8)));
    ((Map)localObject).put(ck.f, new de("length", (byte)1, new df((byte)8)));
    ((Map)localObject).put(ck.g, new de("entity", (byte)1, new df((byte)11, true)));
    ((Map)localObject).put(ck.h, new de("guid", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ck.i, new de("checksum", (byte)1, new df((byte)11)));
    ((Map)localObject).put(ck.j, new de("codex", (byte)2, new df((byte)8)));
    l = Collections.unmodifiableMap((Map)localObject);
    de.a(cf.class, l);
  }

  public final void a()
  {
    this.k = ((byte)(this.k | 0x1));
  }

  public final void a(dq paramdq)
    throws bv
  {
    ((dx)x.get(paramdq.s())).a().b(paramdq, this);
  }

  public final void b()
  {
    this.k = ((byte)(this.k | 0x2));
  }

  public final void b(dq paramdq)
    throws bv
  {
    ((dx)x.get(paramdq.s())).a().a(paramdq, this);
  }

  public final void c()
  {
    this.k = ((byte)(this.k | 0x4));
  }

  public final boolean d()
  {
    return cu.a(this.k, 3);
  }

  public final void e()
  {
    this.k = ((byte)(this.k | 0x8));
  }

  public final void f()
    throws bv
  {
    if (this.a == null)
      throw new cp("Required field 'version' was not present! Struct: " + toString());
    if (this.b == null)
      throw new cp("Required field 'address' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cp("Required field 'signature' was not present! Struct: " + toString());
    if (this.g == null)
      throw new cp("Required field 'entity' was not present! Struct: " + toString());
    if (this.h == null)
      throw new cp("Required field 'guid' was not present! Struct: " + toString());
    if (this.i == null)
      throw new cp("Required field 'checksum' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("UMEnvelope(");
    localStringBuilder.append("version:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("address:");
      if (this.b != null)
        break label321;
      localStringBuilder.append("null");
      label65: localStringBuilder.append(", ");
      localStringBuilder.append("signature:");
      if (this.c != null)
        break label333;
      localStringBuilder.append("null");
      label96: localStringBuilder.append(", ");
      localStringBuilder.append("serial_num:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", ");
      localStringBuilder.append("ts_secs:");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", ");
      localStringBuilder.append("length:");
      localStringBuilder.append(this.f);
      localStringBuilder.append(", ");
      localStringBuilder.append("entity:");
      if (this.g != null)
        break label345;
      localStringBuilder.append("null");
      label202: localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.h != null)
        break label356;
      localStringBuilder.append("null");
      label233: localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.i != null)
        break label368;
      localStringBuilder.append("null");
    }
    while (true)
    {
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("codex:");
        localStringBuilder.append(this.j);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label321: localStringBuilder.append(this.b);
      break label65;
      label333: localStringBuilder.append(this.c);
      break label96;
      label345: cx.a(this.g, localStringBuilder);
      break label202;
      label356: localStringBuilder.append(this.h);
      break label233;
      label368: localStringBuilder.append(this.i);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cf
 * JD-Core Version:    0.6.2
 */