package com.facebook.widget;

import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.ImageResponse;
import com.facebook.model.GraphUser;

class UserSettingsFragment$2
  implements ImageRequest.Callback
{
  UserSettingsFragment$2(UserSettingsFragment paramUserSettingsFragment)
  {
  }

  public void onCompleted(ImageResponse paramImageResponse)
  {
    UserSettingsFragment.access$300(this.this$0, UserSettingsFragment.access$000(this.this$0).getId(), paramImageResponse);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.UserSettingsFragment.2
 * JD-Core Version:    0.6.2
 */