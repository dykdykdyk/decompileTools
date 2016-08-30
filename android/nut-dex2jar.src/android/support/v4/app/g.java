package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;

final class g extends h
{
  private g()
  {
    super((byte)0);
  }

  public final int a(Context paramContext, String paramString1, String paramString2)
  {
    return ((AppOpsManager)paramContext.getSystemService(AppOpsManager.class)).noteProxyOp(paramString1, paramString2);
  }

  public final String a(String paramString)
  {
    return AppOpsManager.permissionToOp(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.g
 * JD-Core Version:    0.6.2
 */