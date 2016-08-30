package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class fc
{
  final String a;
  List<at> b;
  az c;
  private final int d = 10;
  private final int e = 20;

  public fc(String paramString)
  {
    this.a = paramString;
  }

  public abstract String a();

  public final void a(bf parambf)
  {
    this.c = ((az)parambf.a.get(this.a));
    parambf = parambf.b;
    if ((parambf != null) && (parambf.size() > 0))
    {
      if (this.b == null)
        this.b = new ArrayList();
      parambf = parambf.iterator();
      while (parambf.hasNext())
      {
        at localat = (at)parambf.next();
        if (this.a.equals(localat.a))
          this.b.add(localat);
      }
    }
  }

  public final boolean b()
  {
    return (this.c == null) || (this.c.c <= 20);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fc
 * JD-Core Version:    0.6.2
 */