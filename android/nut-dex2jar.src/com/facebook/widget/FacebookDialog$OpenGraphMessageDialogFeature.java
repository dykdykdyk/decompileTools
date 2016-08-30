package com.facebook.widget;

public enum FacebookDialog$OpenGraphMessageDialogFeature
  implements FacebookDialog.DialogFeature
{
  OG_MESSAGE_DIALOG(20140204);

  private int minVersion;

  private FacebookDialog$OpenGraphMessageDialogFeature(int paramInt)
  {
    this.minVersion = paramInt;
  }

  public final String getAction()
  {
    return "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
  }

  public final int getMinVersion()
  {
    return this.minVersion;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.widget.FacebookDialog.OpenGraphMessageDialogFeature
 * JD-Core Version:    0.6.2
 */