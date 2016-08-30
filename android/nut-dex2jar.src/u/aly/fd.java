package u.aly;

import android.content.Context;
import android.provider.Settings.Secure;

public final class fd extends fc
{
  private Context d;

  public fd(Context paramContext)
  {
    super("android_id");
    this.d = paramContext;
  }

  public final String a()
  {
    try
    {
      String str = Settings.Secure.getString(this.d.getContentResolver(), "android_id");
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fd
 * JD-Core Version:    0.6.2
 */