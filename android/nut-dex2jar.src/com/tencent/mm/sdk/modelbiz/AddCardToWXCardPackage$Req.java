package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;
import java.util.Iterator;
import java.util.List;
import org.json.JSONStringer;

public class AddCardToWXCardPackage$Req extends BaseReq
{
  public List<AddCardToWXCardPackage.WXCardItem> cardArrary;

  public boolean checkArgs()
  {
    if ((this.cardArrary == null) || (this.cardArrary.size() == 0) || (this.cardArrary.size() > 40))
      return false;
    Iterator localIterator = this.cardArrary.iterator();
    while (localIterator.hasNext())
    {
      AddCardToWXCardPackage.WXCardItem localWXCardItem = (AddCardToWXCardPackage.WXCardItem)localIterator.next();
      if ((localWXCardItem == null) || (localWXCardItem.cardId == null) || (localWXCardItem.cardId.length() > 1024) || ((localWXCardItem.cardExtMsg != null) && (localWXCardItem.cardExtMsg.length() > 1024)))
        return false;
    }
    return true;
  }

  public int getType()
  {
    return 9;
  }

  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    JSONStringer localJSONStringer = new JSONStringer();
    try
    {
      localJSONStringer.object();
      localJSONStringer.key("card_list");
      localJSONStringer.array();
      Iterator localIterator = this.cardArrary.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          break label138;
        Object localObject = (AddCardToWXCardPackage.WXCardItem)localIterator.next();
        localJSONStringer.object();
        localJSONStringer.key("card_id");
        localJSONStringer.value(((AddCardToWXCardPackage.WXCardItem)localObject).cardId);
        localJSONStringer.key("card_ext");
        if (((AddCardToWXCardPackage.WXCardItem)localObject).cardExtMsg != null)
          break;
        localObject = "";
        localJSONStringer.value(localObject);
        localJSONStringer.endObject();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      paramBundle.putString("_wxapi_add_card_to_wx_card_list", localJSONStringer.toString());
      return;
      String str = localException.cardExtMsg;
      break;
      label138: localJSONStringer.endArray();
      localJSONStringer.endObject();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelbiz.AddCardToWXCardPackage.Req
 * JD-Core Version:    0.6.2
 */