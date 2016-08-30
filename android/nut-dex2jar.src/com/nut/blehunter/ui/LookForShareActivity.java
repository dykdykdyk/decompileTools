package com.nut.blehunter.ui;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Telephony.Sms;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;
import com.google.zxing.WriterException;
import com.nut.blehunter.d.c;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.rxApi.model.UpdateNutRequestBody;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.b.a.l;
import com.squareup.picasso.Target;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import rx.h;
import rx.schedulers.Schedulers;

public class LookForShareActivity extends b
  implements View.OnClickListener, com.nut.blehunter.ui.b.a.m
{
  Target m = new bg(this);
  private Nut n;
  private User o;
  private Bitmap p;
  private String q;

  private String a(Nut paramNut, String paramString)
  {
    if ((paramNut == null) || (TextUtils.isEmpty(paramString)))
      return "";
    return getString(2131099953, new Object[] { paramNut.c, paramString });
  }

  private Bitmap b(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.zxing.client.android.ENCODE");
    localIntent.putExtra("ENCODE_FORMAT", com.google.zxing.a.l.toString());
    localIntent.putExtra("ENCODE_TYPE", "TEXT_TYPE");
    localIntent.putExtra("ENCODE_DATA", paramString);
    paramString = ((WindowManager)getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    paramString.getSize(localPoint);
    int i = localPoint.x;
    int j = localPoint.y;
    if (i < j);
    while (true)
    {
      i = i * 7 / 8;
      try
      {
        paramString = new com.nut.blehunter.qrcode.b.g(this, localIntent, i).a();
        return paramString;
        i = j;
      }
      catch (WriterException paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }

  private static String c(String paramString)
  {
    int i = 0;
    try
    {
      Object localObject = MessageDigest.getInstance("SHA-1");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      while (i < paramString.length)
      {
        String str = Integer.toHexString(paramString[i] & 0xFF);
        if (str.length() < 2)
          ((StringBuffer)localObject).append(0);
        ((StringBuffer)localObject).append(str);
        i += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }

  private void g()
  {
    this.o = com.nut.blehunter.entity.m.a().b();
    Object localObject = this.n;
    User localUser = this.o;
    if ((localObject == null) || (localUser == null));
    StringBuilder localStringBuilder;
    for (localObject = ""; ; localObject = localStringBuilder.toString())
    {
      this.q = ((String)localObject);
      localObject = b(this.q);
      ((ImageView)findViewById(2131558602)).setImageBitmap((Bitmap)localObject);
      findViewById(2131558603).setOnClickListener(this);
      com.nut.blehunter.n.a(this, this.n, this.m);
      return;
      long l = c.a();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(com.nut.blehunter.a.j);
      localStringBuilder.append("/articleShare?articleUUID=");
      localStringBuilder.append(((Nut)localObject).f);
      localStringBuilder.append("&hmac=");
      localStringBuilder.append(c(localUser.a + ((Nut)localObject).f + l));
      localStringBuilder.append("&timestamp=");
      localStringBuilder.append(l);
    }
  }

  public final void d(int paramInt)
  {
    Object localObject4;
    Object localObject1;
    Object localObject3;
    switch (paramInt)
    {
    default:
      return;
    case 1:
      new com.nut.blehunter.c.b();
      localObject4 = com.nut.blehunter.c.b.a(this, 1);
      String str = this.q;
      localObject1 = this.n;
      if (localObject1 == null)
      {
        localObject1 = "";
        localObject3 = this.n;
        if (localObject3 != null)
          break label128;
      }
      for (localObject3 = ""; ; localObject3 = getString(2131099959, new Object[] { ((Nut)localObject3).c }))
      {
        ((com.nut.blehunter.c.g)localObject4).a(str, (String)localObject1, (String)localObject3, this.p, false);
        u.a("NTGroupControlEvent", "SHARE_VIA_LINK", "CHANNEL", "0");
        return;
        localObject1 = getString(2131099960, new Object[] { ((Nut)localObject1).c });
        break;
      }
    case 2:
      label128: localObject1 = a(this.n, this.q);
      if (!TextUtils.isEmpty((CharSequence)localObject1));
      try
      {
        if (Build.VERSION.SDK_INT >= 19)
        {
          localObject3 = Telephony.Sms.getDefaultSmsPackage(this);
          localObject4 = new Intent("android.intent.action.SEND");
          ((Intent)localObject4).setType("text/plain");
          ((Intent)localObject4).putExtra("android.intent.extra.TEXT", (String)localObject1);
          if (localObject3 != null)
            ((Intent)localObject4).setPackage((String)localObject3);
          startActivity((Intent)localObject4);
        }
        while (true)
        {
          u.a("NTGroupControlEvent", "SHARE_VIA_LINK", "CHANNEL", "1");
          return;
          localObject3 = new Intent("android.intent.action.VIEW");
          ((Intent)localObject3).setData(Uri.parse("sms:"));
          ((Intent)localObject3).putExtra("sms_body", (String)localObject1);
          startActivity((Intent)localObject3);
        }
      }
      catch (Exception localException1)
      {
        while (true)
          localException1.printStackTrace();
      }
    case 3:
    }
    Object localObject2 = this.n;
    if (localObject2 == null)
      localObject2 = "";
    while (true)
    {
      localObject3 = a(this.n, this.q);
      if (!TextUtils.isEmpty((CharSequence)localObject3));
      try
      {
        localObject4 = new Intent("android.intent.action.SEND");
        ((Intent)localObject4).setType("message/rfc822");
        ((Intent)localObject4).putExtra("android.intent.extra.SUBJECT", (String)localObject2);
        ((Intent)localObject4).putExtra("android.intent.extra.TEXT", (String)localObject3);
        try
        {
          startActivity(Intent.createChooser((Intent)localObject4, "Send mail..."));
          u.a("NTGroupControlEvent", "SHARE_VIA_LINK", "CHANNEL", "2");
          return;
          localObject2 = getString(2131099954, new Object[] { ((Nut)localObject2).c });
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          while (true)
            com.nut.blehunter.d.n.a(this, 0, "There are no email clients installed.");
        }
      }
      catch (Exception localException2)
      {
        while (true)
          localException2.printStackTrace();
      }
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558603:
    }
    l.a().show(getFragmentManager(), "look_for_share");
    com.umeng.analytics.b.a(this, "find_mode_share_link");
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    b(2131100089);
    paramBundle = getIntent();
    if (paramBundle != null)
      this.n = ((Nut)paramBundle.getParcelableExtra("nut"));
    if (!TextUtils.isEmpty(this.n.f))
      g();
    while (true)
    {
      return;
      Nut localNut = this.n;
      paramBundle = null;
      switch (localNut.J)
      {
      default:
      case 3:
      case 2:
      }
      while (paramBundle != null)
      {
        paramBundle.b(Schedulers.io()).a(rx.a.b.a.a()).a(new bj(this)).a(Schedulers.io()).a(new bi(this, localNut)).a(new bh(this, localNut));
        return;
        k.a(this);
        paramBundle = com.nut.blehunter.rxApi.a.c().bindNut("v2", "bind", new UpdateNutRequestBody(localNut));
        continue;
        k.a(this);
        paramBundle = com.nut.blehunter.rxApi.a.c().bindNut("v3", "update", new UpdateNutRequestBody(localNut));
      }
    }
  }

  protected void onDestroy()
  {
    if ((this.p != null) && (!this.p.isRecycled()))
      this.p.recycle();
    super.onDestroy();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.LookForShareActivity
 * JD-Core Version:    0.6.2
 */