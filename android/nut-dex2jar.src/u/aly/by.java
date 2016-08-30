package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum by
{
  private static final Map<String, by> d;
  private final short e;
  private final String f;

  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(by.class).iterator();
    while (localIterator.hasNext())
    {
      by localby = (by)localIterator.next();
      d.put(localby.f, localby);
    }
  }

  private by(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.by
 * JD-Core Version:    0.6.2
 */