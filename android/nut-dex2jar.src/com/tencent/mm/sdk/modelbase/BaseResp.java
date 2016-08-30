package com.tencent.mm.sdk.modelbase;

import android.os.Bundle;

public abstract class BaseResp
{
  public int errCode;
  public String errStr;
  public String openId;
  public String transaction;

  public abstract boolean checkArgs();

  public void fromBundle(Bundle paramBundle)
  {
    this.errCode = paramBundle.getInt("_wxapi_baseresp_errcode");
    this.errStr = paramBundle.getString("_wxapi_baseresp_errstr");
    this.transaction = paramBundle.getString("_wxapi_baseresp_transaction");
    this.openId = paramBundle.getString("_wxapi_baseresp_openId");
  }

  public abstract int getType();

  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putInt("_wxapi_baseresp_errcode", this.errCode);
    paramBundle.putString("_wxapi_baseresp_errstr", this.errStr);
    paramBundle.putString("_wxapi_baseresp_transaction", this.transaction);
    paramBundle.putString("_wxapi_baseresp_openId", this.openId);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelbase.BaseResp
 * JD-Core Version:    0.6.2
 */