package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ce
{
  private static final Map<String, ce> d;
  private final short e;
  private final String f;

  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(ce.class).iterator();
    while (localIterator.hasNext())
    {
      ce localce = (ce)localIterator.next();
      d.put(localce.f, localce);
    }
  }

  private ce(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ce
 * JD-Core Version:    0.6.2
 */