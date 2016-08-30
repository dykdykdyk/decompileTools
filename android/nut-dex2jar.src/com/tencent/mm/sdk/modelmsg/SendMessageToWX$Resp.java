package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class SendMessageToWX$Resp extends BaseResp
{
  public SendMessageToWX$Resp()
  {
  }

  public SendMessageToWX$Resp(Bundle paramBundle)
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
  }

  public int getType()
  {
    return 2;
  }

  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.SendMessageToWX.Resp
 * JD-Core Version:    0.6.2
 */