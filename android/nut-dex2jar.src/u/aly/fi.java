package u.aly;

import android.content.Context;
import android.telephony.TelephonyManager;

public final class fi extends fc
{
  private Context d;

  public fi(Context paramContext)
  {
    super("imei");
    this.d = paramContext;
  }

  public final String a()
  {
    Object localObject = (TelephonyManager)this.d.getSystemService("phone");
    try
    {
      if (cr.a(this.d, "android.permission.READ_PHONE_STATE"))
      {
        localObject = ((TelephonyManager)localObject).getDeviceId();
        return localObject;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fi
 * JD-Core Version:    0.6.2
 */