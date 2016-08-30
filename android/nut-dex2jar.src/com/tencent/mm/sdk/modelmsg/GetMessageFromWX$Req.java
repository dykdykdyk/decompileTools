package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;

public class GetMessageFromWX$Req extends BaseReq
{
  public String country;
  public String lang;
  public String username;

  public GetMessageFromWX$Req()
  {
  }

  public GetMessageFromWX$Req(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }

  public boolean checkArgs()
  {
    return true;
  }

  public void fromBundle(Bundle paramBundle)
  {
    super.fromBundle(paramBundle);
    this.lang = paramBundle.getString("_wxapi_getmessage_req_lang");
    this.country = paramBundle.getString("_wxapi_getmessage_req_country");
  }

  public int getType()
  {
    return 3;
  }

  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    paramBundle.putString("_wxapi_getmessage_req_lang", this.lang);
    paramBundle.putString("_wxapi_getmessage_req_country", this.country);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.GetMessageFromWX.Req
 * JD-Core Version:    0.6.2
 */