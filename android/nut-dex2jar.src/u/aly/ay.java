package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ay
{
  private static final Map<String, ay> e;
  private final short f;
  private final String g;

  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(ay.class).iterator();
    while (localIterator.hasNext())
    {
      ay localay = (ay)localIterator.next();
      e.put(localay.g, localay);
    }
  }

  private ay(short paramShort, String paramString)
  {
    this.f = paramShort;
    this.g = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ay
 * JD-Core Version:    0.6.2
 */