package com.tencent.connect.b;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.tencent.tauth.b;
import java.lang.ref.WeakReference;

final class e extends h
{
  e(d paramd, Dialog paramDialog, b paramb, Object paramObject)
  {
    super(paramd, paramDialog);
  }

  public final void onClick(View paramView)
  {
    Object localObject = this.c;
    paramView = a.g(((d)localObject).b);
    Activity localActivity = (Activity)a.e(((d)localObject).b).get();
    if (localActivity != null)
    {
      localObject = a.h(((d)localObject).b);
      com.tencent.open.a.h.a("openSDK_LOG.HttpUtils", "OpenApi requestAsync");
      new com.tencent.open.utils.h((v)localObject, localActivity, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi", paramView, "POST").start();
    }
    if ((this.d != null) && (this.d.isShowing()))
      this.d.dismiss();
    if (this.a != null)
      this.a.a(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.e
 * JD-Core Version:    0.6.2
 */