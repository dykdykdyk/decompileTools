package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;

public abstract interface bg
{
  public abstract ColorStateList getSupportBackgroundTintList();

  public abstract PorterDuff.Mode getSupportBackgroundTintMode();

  public abstract void setSupportBackgroundTintList(ColorStateList paramColorStateList);

  public abstract void setSupportBackgroundTintMode(PorterDuff.Mode paramMode);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bg
 * JD-Core Version:    0.6.2
 */