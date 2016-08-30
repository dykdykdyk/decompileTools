package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class ShowMessageFromWX$Resp extends BaseResp
{
  public ShowMessageFromWX$Resp()
  {
  }

  public ShowMessageFromWX$Resp(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }

  public boolean checkArgs()
  {
    return true;
  }

  public int getType()
  {
    return 4;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.ShowMessageFromWX.Resp
 * JD-Core Version:    0.6.2
 */