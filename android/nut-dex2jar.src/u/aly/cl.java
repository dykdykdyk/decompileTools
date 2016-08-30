package u.aly;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

public final class cl
{
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = b(paramContext).a;
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return null;
  }

  private static cm b(Context paramContext)
    throws Exception
  {
    cn localcn;
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      localcn = new cn((byte)0);
      Intent localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
      localIntent.setPackage("com.google.android.gms");
      if (!paramContext.bindService(localIntent, localcn, 1))
        break label122;
      try
      {
        if (localcn.a)
          throw new IllegalStateException();
      }
      catch (Exception localException)
      {
        throw localException;
      }
      finally
      {
        paramContext.unbindService(localcn);
      }
    }
    catch (Exception paramContext)
    {
      throw paramContext;
    }
    localcn.a = true;
    Object localObject2 = new co((IBinder)localcn.b.take());
    localObject2 = new cm(((co)localObject2).a(), ((co)localObject2).b());
    paramContext.unbindService(localcn);
    return localObject2;
    label122: throw new IOException("Google Play connection failed");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cl
 * JD-Core Version:    0.6.2
 */