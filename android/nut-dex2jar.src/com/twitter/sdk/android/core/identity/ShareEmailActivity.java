package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.widget.TextView;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.v;
import com.twitter.sdk.android.core.y;

public class ShareEmailActivity extends Activity
{
  l a;
  private y b;

  public void onBackPressed()
  {
    this.a.a();
    super.onBackPressed();
  }

  public void onClickAllow(View paramView)
  {
    Object localObject = this.a;
    paramView = ((l)localObject).a;
    localObject = new m((l)localObject);
    ((ShareEmailClient.EmailService)paramView.a(ShareEmailClient.EmailService.class)).verifyCredentials(Boolean.valueOf(true), Boolean.valueOf(true), (com.twitter.sdk.android.core.f)localObject);
    finish();
  }

  public void onClickNotNow(View paramView)
  {
    this.a.a();
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(com.twitter.sdk.android.core.m.tw__activity_share_email);
    try
    {
      localObject = getIntent();
      paramBundle = (ResultReceiver)((Intent)localObject).getParcelableExtra("result_receiver");
      if (paramBundle == null)
        throw new IllegalArgumentException("ResultReceiver must not be null. This activity should not be started directly.");
    }
    catch (IllegalArgumentException paramBundle)
    {
      io.fabric.sdk.android.f.b().c("Twitter", "Failed to create ShareEmailActivity.", paramBundle);
      finish();
      return;
    }
    long l = ((Intent)localObject).getLongExtra("session_id", -1L);
    Object localObject = v.e();
    v.g();
    localObject = (y)((v)localObject).a.a(l);
    if (localObject == null)
      throw new IllegalArgumentException("No TwitterSession for id:" + l);
    this.b = ((y)localObject);
    this.a = new l(new ShareEmailClient(this.b), paramBundle);
    paramBundle = (TextView)findViewById(com.twitter.sdk.android.core.l.tw__share_email_desc);
    localObject = getPackageManager();
    paramBundle.setText(getResources().getString(o.tw__share_email_desc, new Object[] { ((PackageManager)localObject).getApplicationLabel(getApplicationInfo()), this.b.c }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.ShareEmailActivity
 * JD-Core Version:    0.6.2
 */