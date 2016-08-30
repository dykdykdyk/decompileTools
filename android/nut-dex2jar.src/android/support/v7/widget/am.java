package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public final class am extends CheckedTextView
{
  private static final int[] a = { 16843016 };
  private ao b;
  private bm c = bm.a(this);

  public am(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, (byte)0);
  }

  private am(Context paramContext, AttributeSet paramAttributeSet, byte paramByte)
  {
    super(fq.a(paramContext), paramAttributeSet, 16843720);
    this.c.a(paramAttributeSet, 16843720);
    this.c.a();
    this.b = ao.a();
    paramContext = ft.a(getContext(), paramAttributeSet, a, 16843720);
    setCheckMarkDrawable(paramContext.a(0));
    paramContext.a.recycle();
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.c != null)
      this.c.a();
  }

  public final void setCheckMarkDrawable(int paramInt)
  {
    if (this.b != null)
    {
      setCheckMarkDrawable(this.b.a(getContext(), paramInt, false));
      return;
    }
    super.setCheckMarkDrawable(paramInt);
  }

  public final void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (this.c != null)
      this.c.a(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.am
 * JD-Core Version:    0.6.2
 */