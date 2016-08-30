package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum br
{
  private static final Map<String, br> d;
  private final short e;
  private final String f;

  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(br.class).iterator();
    while (localIterator.hasNext())
    {
      br localbr = (br)localIterator.next();
      d.put(localbr.f, localbr);
    }
  }

  private br(short paramShort, String paramString)
  {
    this.e = paramShort;
    this.f = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.br
 * JD-Core Version:    0.6.2
 */