package com.baidu.android.pushservice;

import android.net.Uri;
import android.widget.Toast;

class PushServiceReceiver$a$2
  implements Runnable
{
  PushServiceReceiver$a$2(PushServiceReceiver.a parama, String paramString)
  {
  }

  public void run()
  {
    Toast localToast = Toast.makeText(this.b.a, "下载富媒体" + Uri.parse(this.a).getAuthority() + "失败", 1);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver.a.2
 * JD-Core Version:    0.6.2
 */