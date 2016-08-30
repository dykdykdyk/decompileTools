package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import com.baidu.android.pushservice.a.a.a.a;
import com.baidu.android.pushservice.g.f;
import com.baidu.android.pushservice.util.h;
import com.baidu.android.pushservice.util.m;

final class c$1
  implements a.a
{
  c$1(d paramd, Context paramContext, String paramString1, String paramString2, Intent[] paramArrayOfIntent, String paramString3)
  {
  }

  public final void a(Bitmap[] paramArrayOfBitmap)
  {
    Object localObject2 = this.a;
    Object localObject1;
    if ((paramArrayOfBitmap[2] == null) && (!(localObject2 instanceof g)))
    {
      localObject1 = c.a(c.a.a, this.b, this.c, this.d);
      ((d)localObject1).a(this.e[0]);
    }
    while (true)
    {
      localObject2 = f.a(this.b, paramArrayOfBitmap[0]);
      paramArrayOfBitmap = f.c(this.b, paramArrayOfBitmap[1]);
      ((d)localObject1).b((Bitmap)localObject2);
      ((d)localObject1).c(paramArrayOfBitmap);
      paramArrayOfBitmap = (NotificationManager)this.b.getSystemService("notification");
      localObject2 = ((d)localObject1).a();
      ((Notification)localObject2).flags |= 16;
      paramArrayOfBitmap.notify(this.f, 0, ((d)localObject1).a());
      this.e[0].putExtra("message_id", this.f);
      m.a(this.b, this.e[0], "11");
      if ((Build.VERSION.SDK_INT >= 19) && (!h.a(this.b)))
        com.baidu.android.pushservice.util.a.a(this.b, this.e[0].getStringExtra("click_url"), "12");
      com.baidu.android.pushservice.h.b.a("AdvertiseNotificationManager", "notify advanced advertise  notification, msgid = " + this.f, this.b.getApplicationContext());
      if (com.baidu.android.pushservice.a.b() > 0)
        m.a("pushadvertise: mNotificationManager  show advertise notification  first ", this.b);
      return;
      Bitmap localBitmap = f.b(this.b, paramArrayOfBitmap[2]);
      if ((localObject2 instanceof b))
      {
        ((b)localObject2).a(localBitmap);
        localObject1 = localObject2;
      }
      else
      {
        localObject1 = localObject2;
        if ((localObject2 instanceof a))
        {
          ((a)localObject2).a(localBitmap);
          localObject1 = localObject2;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.c.1
 * JD-Core Version:    0.6.2
 */