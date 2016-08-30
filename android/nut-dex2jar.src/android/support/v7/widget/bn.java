package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

final class bn extends bm
{
  private static final int[] b = { 16843666, 16843667 };
  private fr c;
  private fr d;

  bn(TextView paramTextView)
  {
    super(paramTextView);
  }

  final void a()
  {
    super.a();
    if ((this.c != null) || (this.d != null))
    {
      Drawable[] arrayOfDrawable = this.a.getCompoundDrawablesRelative();
      a(arrayOfDrawable[0], this.c);
      a(arrayOfDrawable[2], this.d);
    }
  }

  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    Context localContext = this.a.getContext();
    ao localao = ao.a();
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, b, paramInt, 0);
    if (paramAttributeSet.hasValue(0))
      this.c = a(localContext, localao, paramAttributeSet.getResourceId(0, 0));
    if (paramAttributeSet.hasValue(1))
      this.d = a(localContext, localao, paramAttributeSet.getResourceId(1, 0));
    paramAttributeSet.recycle();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bn
 * JD-Core Version:    0.6.2
 */