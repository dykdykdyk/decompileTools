package com.nut.blehunter.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.b.j;
import b.a.a;
import com.nut.blehunter.d.n;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth.Resp;
import com.tencent.mm.sdk.modelmsg.SendMessageToWX.Resp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

public class WXEntryActivity extends Activity
  implements IWXAPIEventHandler
{
  private IWXAPI a;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903103);
    this.a = WXAPIFactory.createWXAPI(this, getString(2131100174), false);
    this.a.registerApp(getString(2131100174));
    this.a.handleIntent(getIntent(), this);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.a.handleIntent(paramIntent, this);
  }

  public void onReq(BaseReq paramBaseReq)
  {
    paramBaseReq.getType();
  }

  public void onResp(BaseResp paramBaseResp)
  {
    a.d("onResp=" + paramBaseResp.getType(), new Object[0]);
    switch (paramBaseResp.getType())
    {
    default:
      return;
    case 1:
      paramBaseResp = (SendAuth.Resp)paramBaseResp;
      switch (paramBaseResp.errCode)
      {
      default:
      case 0:
      }
      while (true)
      {
        finish();
        return;
        new StringBuilder("获取微信Code成功code=").append(paramBaseResp.code);
        Intent localIntent = new Intent("com.nutspace.action.share_auth");
        localIntent.putExtra("code", paramBaseResp.code);
        j.a(this).a(localIntent);
      }
    case 2:
    }
    switch (((SendMessageToWX.Resp)paramBaseResp).errCode)
    {
    default:
    case 0:
    case -4:
    }
    while (true)
    {
      finish();
      return;
      n.a(this, 2131100051);
      continue;
      n.b(this, 2131100050);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.wxapi.WXEntryActivity
 * JD-Core Version:    0.6.2
 */