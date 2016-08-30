package com.facebook;

import android.net.Uri;
import bolts.c;
import bolts.d;
import bolts.o;
import com.facebook.model.GraphObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class FacebookAppLinkResolver$2
  implements Request.Callback
{
  FacebookAppLinkResolver$2(FacebookAppLinkResolver paramFacebookAppLinkResolver, o paramo, Map paramMap, HashSet paramHashSet)
  {
  }

  public void onCompleted(Response paramResponse)
  {
    Object localObject1 = paramResponse.getError();
    if (localObject1 != null)
    {
      this.val$taskCompletionSource.a(((FacebookRequestError)localObject1).getException());
      return;
    }
    paramResponse = paramResponse.getGraphObject();
    if (paramResponse != null);
    for (paramResponse = paramResponse.getInnerJSONObject(); paramResponse == null; paramResponse = null)
    {
      this.val$taskCompletionSource.a(this.val$appLinkResults);
      return;
    }
    localObject1 = this.val$urisToRequest.iterator();
    Uri localUri;
    do
    {
      if (!((Iterator)localObject1).hasNext())
        break;
      localUri = (Uri)((Iterator)localObject1).next();
    }
    while (!paramResponse.has(localUri.toString()));
    while (true)
    {
      int i;
      try
      {
        while (true)
        {
          ??? = paramResponse.getJSONObject(localUri.toString()).getJSONObject("app_links");
          Object localObject4 = ((JSONObject)???).getJSONArray("android");
          int j = ((JSONArray)localObject4).length();
          ArrayList localArrayList = new ArrayList(j);
          i = 0;
          if (i < j)
          {
            d locald = FacebookAppLinkResolver.access$000(((JSONArray)localObject4).getJSONObject(i));
            if (locald == null)
              break;
            localArrayList.add(locald);
            break;
          }
          localObject4 = new c(localUri, localArrayList, FacebookAppLinkResolver.access$100(localUri, (JSONObject)???));
          this.val$appLinkResults.put(localUri, localObject4);
          synchronized (FacebookAppLinkResolver.access$200(this.this$0))
          {
            FacebookAppLinkResolver.access$200(this.this$0).put(localUri, localObject4);
          }
        }
      }
      catch (JSONException localJSONException)
      {
      }
      break;
      this.val$taskCompletionSource.a(this.val$appLinkResults);
      return;
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.2
 * JD-Core Version:    0.6.2
 */