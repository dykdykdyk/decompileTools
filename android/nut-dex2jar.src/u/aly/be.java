package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum be
{
  private static final Map<String, be> d;
  private final short e;
  private final String f;

  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(be.class).iterator();
    while (localIterator.hasNext())
    {
      be localbe = (be)localIterator.next();
      d.put(localbe.f, localbe);
    }
  }

  private be(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.be
 * JD-Core Version:    0.6.2
 */