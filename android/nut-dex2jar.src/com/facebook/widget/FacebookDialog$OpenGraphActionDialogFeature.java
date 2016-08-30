package com.facebook.widget;

public enum FacebookDialog$OpenGraphActionDialogFeature
  implements FacebookDialog.DialogFeature
{
  OG_ACTION_DIALOG(20130618);

  private int minVersion;

  private FacebookDialog$OpenGraphActionDialogFeature(int paramInt)
  {
    this.minVersion = paramInt;
  }

  public final String getAction()
  {
    return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
  }

  public final int getMinVersion()
  {
    return this.minVersion;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.OpenGraphActionDialogFeature
 * JD-Core Version:    0.6.2
 */