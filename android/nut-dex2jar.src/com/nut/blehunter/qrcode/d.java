package com.nut.blehunter.qrcode;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.v;
import android.text.TextUtils;
import android.util.Log;
import com.google.zxing.m;
import com.nut.blehunter.qrcode.a.f;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.ui.b.a.aa;
import java.util.Collection;
import java.util.Map;
import rx.h;
import rx.schedulers.Schedulers;

public final class d extends Handler
{
  private static final String d = d.class.getSimpleName();
  final j a;
  int b;
  final f c;
  private final CaptureActivity e;

  d(CaptureActivity paramCaptureActivity, Collection<com.google.zxing.a> paramCollection, Map<com.google.zxing.d, ?> paramMap, String paramString, f paramf)
  {
    this.e = paramCaptureActivity;
    this.a = new j(paramCaptureActivity, paramCollection, paramMap, paramString, new o(paramCaptureActivity.p));
    this.a.start();
    this.b = e.b;
    this.c = paramf;
    paramf.c();
    a();
  }

  private void a()
  {
    if (this.b == e.b)
    {
      this.b = e.a;
      this.c.a(this.a.a());
      this.e.h();
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject1 = null;
    switch (paramMessage.what)
    {
    case 2131558407:
    case 2131558408:
    case 2131558410:
    case 2131558411:
    case 2131558412:
    default:
      return;
    case 2131558413:
      a();
      return;
    case 2131558406:
      this.b = e.b;
      localObject1 = paramMessage.getData();
      if (localObject1 != null)
      {
        localObject2 = ((Bundle)localObject1).getByteArray("barcode_bitmap");
        if (localObject2 != null)
          BitmapFactory.decodeByteArray((byte[])localObject2, 0, localObject2.length, null).copy(Bitmap.Config.ARGB_8888, true);
        ((Bundle)localObject1).getFloat("barcode_scaled_factor");
      }
      localObject1 = this.e;
      paramMessage = (m)paramMessage.obj;
      ((CaptureActivity)localObject1).o.a();
      if (TextUtils.isEmpty(paramMessage.toString()))
      {
        ((CaptureActivity)localObject1).g();
        return;
      }
      localObject2 = ((CaptureActivity)localObject1).p;
      ((ScanOverlayView)localObject2).b = false;
      ((ScanOverlayView)localObject2).a = 0;
      ((ScanOverlayView)localObject2).invalidate();
      ((CaptureActivity)localObject1).n.sendEmptyMessage(2131558412);
      paramMessage = paramMessage.toString();
      aa.a((v)localObject1, ((CaptureActivity)localObject1).getString(2131099950), false);
      com.nut.blehunter.rxApi.a.b().acceptSharedNut(com.nut.blehunter.rxApi.a.a("shareUrl", paramMessage)).b(Schedulers.io()).a(new c((CaptureActivity)localObject1)).a(rx.a.b.a.a()).a(new b((CaptureActivity)localObject1));
      return;
    case 2131558405:
      this.b = e.a;
      this.c.a(this.a.a());
      return;
    case 2131558414:
      this.e.setResult(-1, (Intent)paramMessage.obj);
      this.e.finish();
      return;
    case 2131558409:
    }
    Object localObject2 = (String)paramMessage.obj;
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(524288);
    localIntent.setData(Uri.parse((String)localObject2));
    ResolveInfo localResolveInfo = this.e.getPackageManager().resolveActivity(localIntent, 65536);
    paramMessage = (Message)localObject1;
    if (localResolveInfo != null)
    {
      paramMessage = (Message)localObject1;
      if (localResolveInfo.activityInfo != null)
      {
        paramMessage = localResolveInfo.activityInfo.packageName;
        Log.d(d, "Using browser in package " + paramMessage);
      }
    }
    if (("com.android.browser".equals(paramMessage)) || ("com.android.chrome".equals(paramMessage)))
    {
      localIntent.setPackage(paramMessage);
      localIntent.addFlags(268435456);
      localIntent.putExtra("com.android.browser.application_id", paramMessage);
    }
    try
    {
      this.e.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException paramMessage)
    {
      Log.w(d, "Can't find anything to handle VIEW of URI " + (String)localObject2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.d
 * JD-Core Version:    0.6.2
 */