package com.facebook.widget;

public enum FacebookDialog$MessageDialogFeature
  implements FacebookDialog.DialogFeature
{
  MESSAGE_DIALOG(20140204), PHOTOS(20140324), VIDEO(20141218);

  private int minVersion;

  private FacebookDialog$MessageDialogFeature(int paramInt)
  {
    this.minVersion = paramInt;
  }

  public final String getAction()
  {
    return "com.facebook.platform.action.request.MESSAGE_DIALOG";
  }

  public final int getMinVersion()
  {
    return this.minVersion;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.MessageDialogFeature
 * JD-Core Version:    0.6.2
 */