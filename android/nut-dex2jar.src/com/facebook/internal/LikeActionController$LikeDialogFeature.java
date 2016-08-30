package com.facebook.internal;

import com.facebook.widget.FacebookDialog.DialogFeature;

 enum LikeActionController$LikeDialogFeature
  implements FacebookDialog.DialogFeature
{
  LIKE_DIALOG(20140701);

  private int minVersion;

  private LikeActionController$LikeDialogFeature(int paramInt)
  {
    this.minVersion = paramInt;
  }

  public final String getAction()
  {
    return "com.facebook.platform.action.request.LIKE_DIALOG";
  }

  public final int getMinVersion()
  {
    return this.minVersion;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.LikeDialogFeature
 * JD-Core Version:    0.6.2
 */