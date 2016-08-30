package com.tencent.connect.common;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.open.a.h;
import com.tencent.open.utils.s;
import com.tencent.tauth.b;
import org.json.JSONObject;

public class AssistActivity extends Activity
{
  protected Handler a = new a(this);
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object localObject1 = new StringBuilder("--onActivityResult--requestCode: ").append(paramInt1).append(" | resultCode: ").append(paramInt2).append("data = null ? ");
    if (paramIntent == null);
    for (boolean bool = true; ; bool = false)
    {
      h.c("openSDK_LOG.AssistActivity", bool);
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      if (paramInt1 != 0)
        break;
      return;
    }
    if (paramIntent != null)
      paramIntent.putExtra("key_action", "action_login");
    if (paramIntent == null)
    {
      h.d("openSDK_LOG.AssistActivity", "--setResultData--intent is null, setResult ACTIVITY_CANCEL");
      setResult(0, paramIntent);
    }
    while (true)
    {
      finish();
      return;
      try
      {
        localObject1 = paramIntent.getStringExtra("key_response");
        h.b("openSDK_LOG.AssistActivity", "--setResultDataForLogin-- " + (String)localObject1);
        if (TextUtils.isEmpty((CharSequence)localObject1))
          break label234;
        Object localObject2 = new JSONObject((String)localObject1);
        localObject1 = ((JSONObject)localObject2).optString("openid");
        localObject2 = ((JSONObject)localObject2).optString("access_token");
        if ((TextUtils.isEmpty((CharSequence)localObject1)) || (TextUtils.isEmpty((CharSequence)localObject2)))
          break label218;
        h.c("openSDK_LOG.AssistActivity", "--setResultData--openid and token not empty, setResult ACTIVITY_OK");
        setResult(-1, paramIntent);
      }
      catch (Exception paramIntent)
      {
        h.e("openSDK_LOG.AssistActivity", "--setResultData--parse response failed");
        paramIntent.printStackTrace();
      }
      continue;
      label218: h.d("openSDK_LOG.AssistActivity", "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL");
      setResult(0, paramIntent);
      continue;
      label234: h.d("openSDK_LOG.AssistActivity", "--setResultData--response is empty, setResult ACTIVITY_OK");
      setResult(-1, paramIntent);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setRequestedOrientation(3);
    h.b("openSDK_LOG.AssistActivity", "--onCreate--");
    if (getIntent() == null)
    {
      h.e("openSDK_LOG.AssistActivity", "-->onCreate--getIntent() returns null");
      finish();
    }
    Object localObject2 = (Intent)getIntent().getParcelableExtra("openSDK_LOG.AssistActivity.ExtraIntent");
    if (localObject2 == null);
    for (int i = 0; ; i = ((Intent)localObject2).getIntExtra("key_request_code", 0))
    {
      localObject1 = getIntent().getBundleExtra("h5_share_data");
      if (paramBundle != null)
        this.b = paramBundle.getBoolean("RESTART_FLAG");
      if (this.b)
        break label389;
      if (localObject1 != null)
        break label185;
      if (localObject2 == null)
        break label173;
      h.c("openSDK_LOG.AssistActivity", "--onCreate--activityIntent not null, will start activity, reqcode = " + i);
      if (((Intent)localObject2).getComponent() == null)
        break;
      this.c = false;
      startActivityForResult((Intent)localObject2, i);
      return;
    }
    this.c = true;
    this.d = false;
    startActivity((Intent)localObject2);
    return;
    label173: h.e("openSDK_LOG.AssistActivity", "--onCreate--activityIntent is null");
    finish();
    return;
    label185: h.d("openSDK_LOG.AssistActivity", "--onCreate--h5 bundle not null, will open browser");
    localObject2 = ((Bundle)localObject1).getString("viaShareType");
    Object localObject3 = ((Bundle)localObject1).getString("callbackAction");
    String str2 = ((Bundle)localObject1).getString("url");
    String str1 = ((Bundle)localObject1).getString("openId");
    String str3 = ((Bundle)localObject1).getString("appId");
    paramBundle = "";
    Object localObject1 = "";
    if ("shareToQQ".equals(localObject3))
    {
      paramBundle = "ANDROIDQQ.SHARETOQQ.XX";
      localObject1 = "10";
      if (s.a(this, str2))
        break label360;
      localObject3 = c.a().a((String)localObject3);
      if (localObject3 != null)
        ((b)localObject3).a(new com.tencent.tauth.d(-6, "打开浏览器失败!", null));
      com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(str1, str3, paramBundle, (String)localObject1, "3", "1", (String)localObject2, "0", "2", "0");
      finish();
    }
    while (true)
    {
      getIntent().removeExtra("shareH5");
      return;
      if (!"shareToQzone".equals(localObject3))
        break;
      paramBundle = "ANDROIDQQ.SHARETOQZ.XX";
      localObject1 = "11";
      break;
      label360: com.tencent.open.b.d.a();
      com.tencent.open.b.d.a(str1, str3, paramBundle, (String)localObject1, "3", "0", (String)localObject2, "0", "2", "0");
    }
    label389: h.b("openSDK_LOG.AssistActivity", "is restart");
  }

  protected void onDestroy()
  {
    h.b("openSDK_LOG.AssistActivity", "-->onDestroy");
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    h.c("openSDK_LOG.AssistActivity", "--onNewIntent");
    super.onNewIntent(paramIntent);
    paramIntent.putExtra("key_action", "action_share");
    setResult(-1, paramIntent);
    if (!isFinishing())
    {
      h.c("openSDK_LOG.AssistActivity", "--onNewIntent--activity not finished, finish now");
      finish();
    }
  }

  protected void onPause()
  {
    h.b("openSDK_LOG.AssistActivity", "-->onPause");
    if (this.c)
    {
      if (!this.d)
        break label35;
      this.a.removeMessages(0);
    }
    while (true)
    {
      super.onPause();
      return;
      label35: this.d = true;
    }
  }

  protected void onResume()
  {
    h.b("openSDK_LOG.AssistActivity", "-->onResume");
    super.onResume();
    Object localObject = getIntent();
    if (((Intent)localObject).getBooleanExtra("is_login", false));
    do
    {
      return;
      if ((!((Intent)localObject).getBooleanExtra("is_qq_mobile_share", false)) && (this.b) && (!isFinishing()))
        finish();
    }
    while ((!this.c) || (!this.d));
    localObject = this.a.obtainMessage(0);
    this.a.sendMessageDelayed((Message)localObject, 200L);
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    h.b("openSDK_LOG.AssistActivity", "--onSaveInstanceState--");
    paramBundle.putBoolean("RESTART_FLAG", true);
    super.onSaveInstanceState(paramBundle);
  }

  protected void onStart()
  {
    h.b("openSDK_LOG.AssistActivity", "-->onStart");
    super.onStart();
  }

  protected void onStop()
  {
    h.b("openSDK_LOG.AssistActivity", "-->onStop");
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.common.AssistActivity
 * JD-Core Version:    0.6.2
 */