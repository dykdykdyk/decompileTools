package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bg;
import android.util.AttributeSet;
import android.widget.TextView;

public class bo extends TextView
  implements bg
{
  private ao a = ao.a();
  private aj b = new aj(this, this.a);
  private bm c;

  public bo(Context paramContext)
  {
    this(paramContext, null);
  }

  public bo(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842884);
  }

  public bo(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    this.b.a(paramAttributeSet, paramInt);
    this.c = bm.a(this);
    this.c.a(paramAttributeSet, paramInt);
    this.c.a();
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.b != null)
      this.b.c();
    if (this.c != null)
      this.c.a();
  }

  public ColorStateList getSupportBackgroundTintList()
  {
    if (this.b != null)
      return this.b.a();
    return null;
  }

  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.b != null)
      return this.b.b();
    return null;
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.b != null)
      this.b.b(null);
  }

  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.b != null)
      this.b.a(paramInt);
  }

  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.b != null)
      this.b.a(paramColorStateList);
  }

  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.b != null)
      this.b.a(paramMode);
  }

  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.c != null)
      this.c.a(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bo
 * JD-Core Version:    0.6.2
 */