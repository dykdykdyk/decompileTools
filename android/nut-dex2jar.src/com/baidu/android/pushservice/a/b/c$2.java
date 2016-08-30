package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import com.baidu.android.pushservice.a.a.a.a;
import com.baidu.android.pushservice.g.f;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.util.h;
import com.baidu.android.pushservice.util.m;

final class c$2
  implements a.a
{
  c$2(Context paramContext, d paramd, String paramString, Intent paramIntent)
  {
  }

  public final void a(Bitmap[] paramArrayOfBitmap)
  {
    Object localObject = f.a(this.a, paramArrayOfBitmap[0]);
    paramArrayOfBitmap = f.c(this.a, paramArrayOfBitmap[1]);
    this.b.b((Bitmap)localObject);
    this.b.c(paramArrayOfBitmap);
    paramArrayOfBitmap = (NotificationManager)this.a.getSystemService("notification");
    localObject = this.b.a();
    ((Notification)localObject).flags |= 16;
    paramArrayOfBitmap.notify(this.c, 0, this.b.a());
    this.d.putExtra("message_id", this.c);
    m.a(this.a, this.d, "11");
    if ((Build.VERSION.SDK_INT >= 19) && (!h.a(this.a)))
      com.baidu.android.pushservice.util.a.a(this.a, this.d.getStringExtra("click_url"), "12");
    b.a("AdvertiseNotificationManager", "notify normal advertise  notification, msgid = " + this.c, this.a.getApplicationContext());
    if (com.baidu.android.pushservice.a.b() > 0)
      m.a("pushadvertise: mNotificationManager  show advertise notification  second", this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.c.2
 * JD-Core Version:    0.6.2
 */