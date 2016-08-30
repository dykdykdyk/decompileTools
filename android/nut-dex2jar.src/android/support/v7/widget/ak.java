package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bg;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

public final class ak extends Button
  implements bg
{
  private final ao a = ao.a();
  private final aj b = new aj(this, this.a);
  private final bm c;

  public ak(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.buttonStyle);
  }

  private ak(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(fq.a(paramContext), paramAttributeSet, paramInt);
    this.b.a(paramAttributeSet, paramInt);
    this.c = bm.a(this);
    this.c.a(paramAttributeSet, paramInt);
    this.c.a();
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.b != null)
      this.b.c();
    if (this.c != null)
      this.c.a();
  }

  public final ColorStateList getSupportBackgroundTintList()
  {
    if (this.b != null)
      return this.b.a();
    return null;
  }

  public final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.b != null)
      return this.b.b();
    return null;
  }

  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(Button.class.getName());
  }

  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(Button.class.getName());
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.b != null)
      this.b.b(null);
  }

  public final void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.b != null)
      this.b.a(paramInt);
  }

  public final void setSupportAllCaps(boolean paramBoolean)
  {
    if (this.c != null)
      this.c.a(paramBoolean);
  }

  public final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.b != null)
      this.b.a(paramColorStateList);
  }

  public final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.b != null)
      this.b.a(paramMode);
  }

  public final void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.c != null)
      this.c.a(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ak
 * JD-Core Version:    0.6.2
 */