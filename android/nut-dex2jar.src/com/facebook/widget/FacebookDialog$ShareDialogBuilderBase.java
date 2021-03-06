package com.facebook.widget;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.List;

abstract class FacebookDialog$ShareDialogBuilderBase<CONCRETE extends ShareDialogBuilderBase<?>> extends FacebookDialog.Builder<CONCRETE>
{
  private String caption;
  private boolean dataErrorsFatal;
  private String description;
  private ArrayList<String> friends;
  protected String link;
  private String name;
  private String picture;
  private String place;
  private String ref;

  public FacebookDialog$ShareDialogBuilderBase(Activity paramActivity)
  {
    super(paramActivity);
  }

  protected Bundle getMethodArguments()
  {
    Bundle localBundle = new Bundle();
    putExtra(localBundle, "TITLE", this.name);
    putExtra(localBundle, "SUBTITLE", this.caption);
    putExtra(localBundle, "DESCRIPTION", this.description);
    putExtra(localBundle, "LINK", this.link);
    putExtra(localBundle, "IMAGE", this.picture);
    putExtra(localBundle, "PLACE", this.place);
    putExtra(localBundle, "REF", this.ref);
    localBundle.putBoolean("DATA_FAILURES_FATAL", this.dataErrorsFatal);
    if (!Utility.isNullOrEmpty(this.friends))
      localBundle.putStringArrayList("FRIENDS", this.friends);
    return localBundle;
  }

  protected Bundle setBundleExtras(Bundle paramBundle)
  {
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_NAME", this.applicationName);
    putExtra(paramBundle, "com.facebook.platform.extra.TITLE", this.name);
    putExtra(paramBundle, "com.facebook.platform.extra.SUBTITLE", this.caption);
    putExtra(paramBundle, "com.facebook.platform.extra.DESCRIPTION", this.description);
    putExtra(paramBundle, "com.facebook.platform.extra.LINK", this.link);
    putExtra(paramBundle, "com.facebook.platform.extra.IMAGE", this.picture);
    putExtra(paramBundle, "com.facebook.platform.extra.PLACE", this.place);
    putExtra(paramBundle, "com.facebook.platform.extra.REF", this.ref);
    paramBundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", this.dataErrorsFatal);
    if (!Utility.isNullOrEmpty(this.friends))
      paramBundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", this.friends);
    return paramBundle;
  }

  public CONCRETE setCaption(String paramString)
  {
    this.caption = paramString;
    return this;
  }

  public CONCRETE setDataErrorsFatal(boolean paramBoolean)
  {
    this.dataErrorsFatal = paramBoolean;
    return this;
  }

  public CONCRETE setDescription(String paramString)
  {
    this.description = paramString;
    return this;
  }

  public CONCRETE setFriends(List<String> paramList)
  {
    if (paramList == null);
    for (paramList = null; ; paramList = new ArrayList(paramList))
    {
      this.friends = paramList;
      return this;
    }
  }

  public CONCRETE setLink(String paramString)
  {
    this.link = paramString;
    return this;
  }

  public CONCRETE setName(String paramString)
  {
    this.name = paramString;
    return this;
  }

  public CONCRETE setPicture(String paramString)
  {
    this.picture = paramString;
    return this;
  }

  public CONCRETE setPlace(String paramString)
  {
    this.place = paramString;
    return this;
  }

  public CONCRETE setRef(String paramString)
  {
    this.ref = paramString;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.ShareDialogBuilderBase
 * JD-Core Version:    0.6.2
 */