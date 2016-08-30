package com.tencent.mm.sdk.modelpay;

import android.os.Bundle;

public class PayReq$Options
{
  public static final int INVALID_FLAGS = -1;
  public String callbackClassName;
  public int callbackFlags = -1;

  public void fromBundle(Bundle paramBundle)
  {
    this.callbackClassName = paramBundle.getString("_wxapi_payoptions_callback_classname");
    this.callbackFlags = paramBundle.getInt("_wxapi_payoptions_callback_flags", -1);
  }

  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putString("_wxapi_payoptions_callback_classname", this.callbackClassName);
    paramBundle.putInt("_wxapi_payoptions_callback_flags", this.callbackFlags);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelpay.PayReq.Options
 * JD-Core Version:    0.6.2
 */