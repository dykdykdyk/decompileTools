package com.tencent.connect.c;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.b.v;
import com.tencent.connect.common.AssistActivity;
import com.tencent.connect.common.c;
import com.tencent.open.a.h;
import com.tencent.open.b.d;
import com.tencent.open.utils.g;
import com.tencent.open.utils.o;
import com.tencent.open.utils.s;

public final class a extends com.tencent.connect.common.b
{
  public String a = "";

  public a(v paramv)
  {
    super(paramv, (byte)0);
  }

  public final void a(Activity paramActivity, Bundle paramBundle, com.tencent.tauth.b paramb)
  {
    h.c("openSDK_LOG.QQShare", "doShareToQQ() -- start");
    StringBuffer localStringBuffer = new StringBuffer("mqqapi://share/to_fri?src_type=app&version=1&file_type=news");
    String str5 = paramBundle.getString("imageUrl");
    String str6 = paramBundle.getString("title");
    String str7 = paramBundle.getString("summary");
    String str8 = paramBundle.getString("targetUrl");
    String str3 = paramBundle.getString("audio_url");
    int i = paramBundle.getInt("req_type", 1);
    int j = paramBundle.getInt("cflag", 0);
    String str4 = paramBundle.getString("share_qq_ext_str");
    String str2 = s.b(paramActivity);
    String str1 = str2;
    if (str2 == null)
      str1 = paramBundle.getString("appName");
    paramBundle = paramBundle.getString("imageLocalUrl");
    String str9 = this.f.a;
    str2 = this.f.c;
    h.a("openSDK_LOG.QQShare", "doShareToQQ -- openid: " + str2);
    if (!TextUtils.isEmpty(str5))
      localStringBuffer.append("&image_url=" + Base64.encodeToString(s.h(str5), 2));
    if (!TextUtils.isEmpty(paramBundle))
      localStringBuffer.append("&file_data=" + Base64.encodeToString(s.h(paramBundle), 2));
    if (!TextUtils.isEmpty(str6))
      localStringBuffer.append("&title=" + Base64.encodeToString(s.h(str6), 2));
    if (!TextUtils.isEmpty(str7))
      localStringBuffer.append("&description=" + Base64.encodeToString(s.h(str7), 2));
    if (!TextUtils.isEmpty(str9))
      localStringBuffer.append("&share_id=" + str9);
    if (!TextUtils.isEmpty(str8))
      localStringBuffer.append("&url=" + Base64.encodeToString(s.h(str8), 2));
    if (!TextUtils.isEmpty(str1))
    {
      paramBundle = str1;
      if (str1.length() > 20)
        paramBundle = str1.substring(0, 20) + "...";
      localStringBuffer.append("&app_name=" + Base64.encodeToString(s.h(paramBundle), 2));
    }
    if (!TextUtils.isEmpty(str2))
      localStringBuffer.append("&open_id=" + Base64.encodeToString(s.h(str2), 2));
    if (!TextUtils.isEmpty(str3))
      localStringBuffer.append("&audioUrl=" + Base64.encodeToString(s.h(str3), 2));
    localStringBuffer.append("&req_type=" + Base64.encodeToString(s.h(String.valueOf(i)), 2));
    if (!TextUtils.isEmpty(str4))
      localStringBuffer.append("&share_qq_ext_str=" + Base64.encodeToString(s.h(str4), 2));
    localStringBuffer.append("&cflag=" + Base64.encodeToString(s.h(String.valueOf(j)), 2));
    h.a("openSDK_LOG.QQShare", "doShareToQQ -- url: " + localStringBuffer.toString());
    com.tencent.connect.a.a.a(g.a(), this.f, "requireApi", new String[] { "shareToNativeQQ" });
    paramBundle = new Intent("android.intent.action.VIEW");
    paramBundle.setData(Uri.parse(localStringBuffer.toString()));
    paramBundle.putExtra("pkg_name", paramActivity.getPackageName());
    if (o.c(paramActivity, "4.6.0") < 0)
    {
      h.c("openSDK_LOG.QQShare", "doShareToQQ, qqver below 4.6.");
      if (o.a(g.a(), paramBundle))
      {
        c.a().a(11103, paramb);
        a(paramActivity, paramBundle, 11103);
      }
      if (!o.a(g.a(), paramBundle))
        break label925;
      d.a();
      d.a(this.f.c, this.f.a, "ANDROIDQQ.SHARETOQQ.XX", "10", "3", "0", this.a, "0", "1", "0");
      d.a();
      d.a(0, "SHARE_CHECK_SDK", "1000", this.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "");
    }
    while (true)
    {
      h.c("openSDK_LOG.QQShare", "doShareToQQ() --end");
      return;
      h.c("openSDK_LOG.QQShare", "doShareToQQ, qqver greater than 4.6.");
      if (c.a().a("shareToQQ", paramb) != null)
        h.c("openSDK_LOG.QQShare", "doShareToQQ, last listener is not null, cancel it.");
      if (!o.a(g.a(), paramBundle))
        break;
      paramb = new Intent(paramActivity.getApplicationContext(), AssistActivity.class);
      paramb.putExtra("is_qq_mobile_share", true);
      paramb.putExtra("openSDK_LOG.AssistActivity.ExtraIntent", paramBundle);
      paramActivity.startActivityForResult(paramb, 10103);
      break;
      label925: d.a();
      d.a(this.f.c, this.f.a, "ANDROIDQQ.SHARETOQQ.XX", "10", "3", "1", this.a, "0", "1", "0");
      d.a();
      d.a(1, "SHARE_CHECK_SDK", "1000", this.f.a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "hasActivityForIntent fail");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.c.a
 * JD-Core Version:    0.6.2
 */