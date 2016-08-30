package com.sina.weibo.sdk.b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.m;
import com.sina.weibo.sdk.d.n;
import java.util.List;

final class f extends Handler
{
  public f(e parame, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject2 = null;
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    Context localContext = this.a.a;
    d locald = (d)paramMessage.obj;
    n localn = new n();
    localn.c = locald.e;
    paramMessage = locald.b;
    String str = locald.c;
    Object localObject1 = locald.a;
    if ((!TextUtils.isEmpty(paramMessage)) && (Uri.parse(paramMessage).isHierarchical()))
    {
      Uri localUri = Uri.parse(paramMessage);
      paramMessage = new Intent();
      paramMessage.setAction("android.intent.action.VIEW");
      paramMessage.setData(localUri);
      paramMessage.setPackage((String)localObject1);
      if (paramMessage == null)
        break label302;
      localObject1 = localContext.getPackageManager().queryIntentActivities(paramMessage, 65536);
      if ((localObject1 == null) || (((List)localObject1).isEmpty()))
        break label302;
    }
    label297: label302: for (localObject1 = paramMessage; ; localObject1 = null)
    {
      paramMessage = (Message)localObject1;
      if (localObject1 == null)
      {
        if (TextUtils.isEmpty(str))
          break label297;
        localObject1 = Uri.parse(str);
        paramMessage = ((Uri)localObject1).getScheme();
        if ((!paramMessage.equalsIgnoreCase("http")) && (!paramMessage.equalsIgnoreCase("https")))
          break label297;
        paramMessage = new Intent();
        paramMessage.setAction("android.intent.action.VIEW");
        paramMessage.setData((Uri)localObject1);
      }
      while (true)
      {
        localObject1 = localObject2;
        if (paramMessage != null)
        {
          paramMessage.setFlags(268435456);
          localObject1 = PendingIntent.getActivity(localContext, 0, paramMessage, 134217728);
        }
        localn.d = ((PendingIntent)localObject1);
        localn.b = locald.f;
        localn.a = locald.e;
        localn.a(localContext).a(2);
        return;
        paramMessage = null;
        break;
        paramMessage = null;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.f
 * JD-Core Version:    0.6.2
 */