package u.aly;

import android.os.Build;
import android.os.Build.VERSION;

public final class fm extends fc
{
  public fm()
  {
    super("serial");
  }

  public final String a()
  {
    if (Build.VERSION.SDK_INT >= 9)
      return Build.SERIAL;
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fm
 * JD-Core Version:    0.6.2
 */