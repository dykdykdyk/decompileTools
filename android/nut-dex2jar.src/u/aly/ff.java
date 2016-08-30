package u.aly;

import android.content.Context;

public final class ff extends fc
{
  private Context d;

  public ff(Context paramContext)
  {
    super("idfa");
    this.d = paramContext;
  }

  public final String a()
  {
    String str2 = cl.a(this.d);
    String str1 = str2;
    if (str2 == null)
      str1 = "";
    return str1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ff
 * JD-Core Version:    0.6.2
 */