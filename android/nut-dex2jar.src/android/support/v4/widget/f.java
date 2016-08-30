package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

class f
  implements g
{
  public Drawable a(CompoundButton paramCompoundButton)
  {
    return i.a(paramCompoundButton);
  }

  public void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    if ((paramCompoundButton instanceof an))
      ((an)paramCompoundButton).setSupportButtonTintList(paramColorStateList);
  }

  public void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    if ((paramCompoundButton instanceof an))
      ((an)paramCompoundButton).setSupportButtonTintMode(paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.f
 * JD-Core Version:    0.6.2
 */