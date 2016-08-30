package u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class eh
  implements Serializable
{
  List<String> a = new ArrayList();
  List<String> b = new ArrayList();
  long c = 0L;
  long d = 0L;
  long e = 0L;
  String f = null;

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("[key: ").append(this.a).append("] [label: ").append(this.b).append("][ totalTimeStamp").append(this.f).append("][ value").append(this.d).append("][ count").append(this.e).append("][ timeWindowNum").append(this.f).append("]");
    return localStringBuffer.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.eh
 * JD-Core Version:    0.6.2
 */