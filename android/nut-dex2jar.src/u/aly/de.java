package u.aly;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class de
  implements Serializable
{
  private static Map<Class<? extends cw>, Map<? extends Object, de>> d = new HashMap();
  public final String a;
  public final byte b;
  public final df c;

  public de(String paramString, byte paramByte, df paramdf)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramdf;
  }

  public static void a(Class<? extends cw> paramClass, Map<? extends Object, de> paramMap)
  {
    d.put(paramClass, paramMap);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.de
 * JD-Core Version:    0.6.2
 */