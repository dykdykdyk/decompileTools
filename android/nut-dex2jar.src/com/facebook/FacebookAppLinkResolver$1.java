package com.facebook;

import android.net.Uri;
import bolts.c;
import bolts.g;
import bolts.h;
import java.util.Map;

class FacebookAppLinkResolver$1
  implements g<Map<Uri, c>, c>
{
  FacebookAppLinkResolver$1(FacebookAppLinkResolver paramFacebookAppLinkResolver, Uri paramUri)
  {
  }

  public c then(h<Map<Uri, c>> paramh)
    throws Exception
  {
    return (c)((Map)paramh.d()).get(this.val$uri);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.1
 * JD-Core Version:    0.6.2
 */