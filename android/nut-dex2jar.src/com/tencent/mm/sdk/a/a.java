package com.tencent.mm.sdk.a;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.a.a.b;
import com.tencent.mm.sdk.b.e;

public final class a
{
  public static boolean a(Context paramContext, a.a parama)
  {
    if ((paramContext == null) || (parama == null))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
      return false;
    }
    if (e.j(parama.k))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + parama.k);
      return false;
    }
    if (e.j(parama.l))
      parama.l = (parama.k + ".wxapi.WXEntryActivity");
    com.tencent.mm.sdk.b.a.d("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + parama.k + ", targetClassName = " + parama.l);
    Intent localIntent = new Intent();
    localIntent.setClassName(parama.k, parama.l);
    if (parama.n != null)
      localIntent.putExtras(parama.n);
    String str = paramContext.getPackageName();
    localIntent.putExtra("_mmessage_sdkVersion", 570490883);
    localIntent.putExtra("_mmessage_appPackage", str);
    localIntent.putExtra("_mmessage_content", parama.m);
    localIntent.putExtra("_mmessage_checksum", b.a(parama.m, 570490883, str));
    if (parama.flags == -1)
      localIntent.addFlags(268435456).addFlags(134217728);
    try
    {
      while (true)
      {
        paramContext.startActivity(localIntent);
        com.tencent.mm.sdk.b.a.d("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + localIntent);
        return true;
        localIntent.setFlags(parama.flags);
      }
    }
    catch (Exception paramContext)
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", new Object[] { paramContext.getMessage() });
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.a.a
 * JD-Core Version:    0.6.2
 */