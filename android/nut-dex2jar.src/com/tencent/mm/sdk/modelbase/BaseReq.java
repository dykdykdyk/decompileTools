package com.tencent.mm.sdk.modelbase;

import android.os.Bundle;

public abstract class BaseReq
{
  public String openId;
  public String transaction;

  public abstract boolean checkArgs();

  public void fromBundle(Bundle paramBundle)
  {
    this.transaction = paramBundle.getString("_wxapi_basereq_transaction");
    this.openId = paramBundle.getString("_wxapi_basereq_openid");
  }

  public abstract int getType();

  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putString("_wxapi_basereq_transaction", this.transaction);
    paramBundle.putString("_wxapi_basereq_openid", this.openId);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelbase.BaseReq
 * JD-Core Version:    0.6.2
 */