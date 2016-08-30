package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseResp;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

public class AddCardToWXCardPackage$Resp extends BaseResp
{
  public List<AddCardToWXCardPackage.WXCardItem> cardArrary;

  public AddCardToWXCardPackage$Resp()
  {
  }

  public AddCardToWXCardPackage$Resp(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }

  public boolean checkArgs()
  {
    return (this.cardArrary != null) && (this.cardArrary.size() != 0);
  }

  public void fromBundle(Bundle paramBundle)
  {
    super.fromBundle(paramBundle);
    if (this.cardArrary == null)
      this.cardArrary = new LinkedList();
    paramBundle = paramBundle.getString("_wxapi_add_card_to_wx_card_list");
    if ((paramBundle != null) && (paramBundle.length() > 0))
      try
      {
        paramBundle = ((JSONObject)new JSONTokener(paramBundle).nextValue()).getJSONArray("card_list");
        int i = 0;
        while (i < paramBundle.length())
        {
          JSONObject localJSONObject = paramBundle.getJSONObject(i);
          AddCardToWXCardPackage.WXCardItem localWXCardItem = new AddCardToWXCardPackage.WXCardItem();
          localWXCardItem.cardId = localJSONObject.optString("card_id");
          localWXCardItem.cardExtMsg = localJSONObject.optString("card_ext");
          localWXCardItem.cardState = localJSONObject.optInt("is_succ");
          this.cardArrary.add(localWXCardItem);
          i += 1;
        }
      }
      catch (Exception paramBundle)
      {
      }
  }

  public int getType()
  {
    return 9;
  }

  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    JSONStringer localJSONStringer = new JSONStringer();
    AddCardToWXCardPackage.WXCardItem localWXCardItem;
    try
    {
      localJSONStringer.object();
      localJSONStringer.key("card_list");
      localJSONStringer.array();
      Iterator localIterator = this.cardArrary.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          break label160;
        localWXCardItem = (AddCardToWXCardPackage.WXCardItem)localIterator.next();
        localJSONStringer.object();
        localJSONStringer.key("card_id");
        localJSONStringer.value(localWXCardItem.cardId);
        localJSONStringer.key("card_ext");
        if (localWXCardItem.cardExtMsg != null)
          break;
        String str1 = "";
        localJSONStringer.value(str1);
        localJSONStringer.key("is_succ");
        localJSONStringer.value(localWXCardItem.cardState);
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
      String str2 = localWXCardItem.cardExtMsg;
      break;
      label160: localJSONStringer.endArray();
      localJSONStringer.endObject();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelbiz.AddCardToWXCardPackage.Resp
 * JD-Core Version:    0.6.2
 */