package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.b.a;
import android.support.v4.view.bg;
import android.support.v7.b.b;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public final class bf extends Spinner
  implements bg
{
  private static final boolean a;
  private static final boolean b;
  private static final int[] c;
  private ao d;
  private aj e;
  private Context f;
  private cy g;
  private SpinnerAdapter h;
  private boolean i;
  private bi j;
  private int k;
  private final Rect l;

  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      bool = true;
      a = bool;
      if (Build.VERSION.SDK_INT < 16)
        break label45;
    }
    label45: for (boolean bool = true; ; bool = false)
    {
      b = bool;
      c = new int[] { 16843505 };
      return;
      bool = false;
      break;
    }
  }

  public bf(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.spinnerStyle);
  }

  public bf(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, (byte)0);
  }

  private bf(Context paramContext, AttributeSet paramAttributeSet, int paramInt, byte paramByte)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }

  // ERROR //
  private bf(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 62	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 64	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 66	android/graphics/Rect:<init>	()V
    //   15: putfield 68	android/support/v7/widget/bf:l	Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic 73	android/support/v7/b/l:Spinner	[I
    //   23: iload_3
    //   24: invokestatic 78	android/support/v7/widget/ft:a	(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/widget/ft;
    //   27: astore 10
    //   29: aload_0
    //   30: invokestatic 83	android/support/v7/widget/ao:a	()Landroid/support/v7/widget/ao;
    //   33: putfield 85	android/support/v7/widget/bf:d	Landroid/support/v7/widget/ao;
    //   36: aload_0
    //   37: new 87	android/support/v7/widget/aj
    //   40: dup
    //   41: aload_0
    //   42: aload_0
    //   43: getfield 85	android/support/v7/widget/bf:d	Landroid/support/v7/widget/ao;
    //   46: invokespecial 90	android/support/v7/widget/aj:<init>	(Landroid/view/View;Landroid/support/v7/widget/ao;)V
    //   49: putfield 92	android/support/v7/widget/bf:e	Landroid/support/v7/widget/aj;
    //   52: aload 10
    //   54: getstatic 95	android/support/v7/b/l:Spinner_popupTheme	I
    //   57: iconst_0
    //   58: invokevirtual 98	android/support/v7/widget/ft:e	(II)I
    //   61: istore 5
    //   63: iload 5
    //   65: ifeq +298 -> 363
    //   68: new 100	android/support/v7/view/e
    //   71: dup
    //   72: aload_1
    //   73: iload 5
    //   75: invokespecial 103	android/support/v7/view/e:<init>	(Landroid/content/Context;I)V
    //   78: astore 7
    //   80: aload_0
    //   81: aload 7
    //   83: putfield 105	android/support/v7/widget/bf:f	Landroid/content/Context;
    //   86: aload_0
    //   87: getfield 105	android/support/v7/widget/bf:f	Landroid/content/Context;
    //   90: ifnull +183 -> 273
    //   93: getstatic 35	android/os/Build$VERSION:SDK_INT	I
    //   96: bipush 11
    //   98: if_icmplt +339 -> 437
    //   101: aload_1
    //   102: aload_2
    //   103: getstatic 42	android/support/v7/widget/bf:c	[I
    //   106: iload_3
    //   107: iconst_0
    //   108: invokevirtual 111	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   111: astore 8
    //   113: iload 4
    //   115: istore 5
    //   117: aload 8
    //   119: astore 7
    //   121: aload 8
    //   123: iconst_0
    //   124: invokevirtual 117	android/content/res/TypedArray:hasValue	(I)Z
    //   127: ifeq +16 -> 143
    //   130: aload 8
    //   132: astore 7
    //   134: aload 8
    //   136: iconst_0
    //   137: iconst_0
    //   138: invokevirtual 120	android/content/res/TypedArray:getInt	(II)I
    //   141: istore 5
    //   143: iload 5
    //   145: istore 6
    //   147: aload 8
    //   149: ifnull +12 -> 161
    //   152: aload 8
    //   154: invokevirtual 123	android/content/res/TypedArray:recycle	()V
    //   157: iload 5
    //   159: istore 6
    //   161: iload 6
    //   163: iconst_1
    //   164: if_icmpne +109 -> 273
    //   167: new 125	android/support/v7/widget/bi
    //   170: dup
    //   171: aload_0
    //   172: aload_0
    //   173: getfield 105	android/support/v7/widget/bf:f	Landroid/content/Context;
    //   176: aload_2
    //   177: iload_3
    //   178: invokespecial 128	android/support/v7/widget/bi:<init>	(Landroid/support/v7/widget/bf;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   181: astore 7
    //   183: aload_0
    //   184: getfield 105	android/support/v7/widget/bf:f	Landroid/content/Context;
    //   187: aload_2
    //   188: getstatic 73	android/support/v7/b/l:Spinner	[I
    //   191: iload_3
    //   192: invokestatic 78	android/support/v7/widget/ft:a	(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/widget/ft;
    //   195: astore 8
    //   197: aload_0
    //   198: aload 8
    //   200: getstatic 131	android/support/v7/b/l:Spinner_android_dropDownWidth	I
    //   203: bipush 254
    //   205: invokevirtual 133	android/support/v7/widget/ft:d	(II)I
    //   208: putfield 135	android/support/v7/widget/bf:k	I
    //   211: aload 7
    //   213: aload 8
    //   215: getstatic 138	android/support/v7/b/l:Spinner_android_popupBackground	I
    //   218: invokevirtual 141	android/support/v7/widget/ft:a	(I)Landroid/graphics/drawable/Drawable;
    //   221: invokevirtual 144	android/support/v7/widget/bi:a	(Landroid/graphics/drawable/Drawable;)V
    //   224: getstatic 147	android/support/v7/b/l:Spinner_android_prompt	I
    //   227: istore 4
    //   229: aload 7
    //   231: aload 10
    //   233: getfield 150	android/support/v7/widget/ft:a	Landroid/content/res/TypedArray;
    //   236: iload 4
    //   238: invokevirtual 154	android/content/res/TypedArray:getString	(I)Ljava/lang/String;
    //   241: putfield 157	android/support/v7/widget/bi:a	Ljava/lang/CharSequence;
    //   244: aload 8
    //   246: getfield 150	android/support/v7/widget/ft:a	Landroid/content/res/TypedArray;
    //   249: invokevirtual 123	android/content/res/TypedArray:recycle	()V
    //   252: aload_0
    //   253: aload 7
    //   255: putfield 159	android/support/v7/widget/bf:j	Landroid/support/v7/widget/bi;
    //   258: aload_0
    //   259: new 161	android/support/v7/widget/bg
    //   262: dup
    //   263: aload_0
    //   264: aload_0
    //   265: aload 7
    //   267: invokespecial 164	android/support/v7/widget/bg:<init>	(Landroid/support/v7/widget/bf;Landroid/view/View;Landroid/support/v7/widget/bi;)V
    //   270: putfield 166	android/support/v7/widget/bf:g	Landroid/support/v7/widget/cy;
    //   273: getstatic 169	android/support/v7/b/l:Spinner_android_entries	I
    //   276: istore 4
    //   278: aload 10
    //   280: getfield 150	android/support/v7/widget/ft:a	Landroid/content/res/TypedArray;
    //   283: iload 4
    //   285: invokevirtual 173	android/content/res/TypedArray:getTextArray	(I)[Ljava/lang/CharSequence;
    //   288: astore 7
    //   290: aload 7
    //   292: ifnull +28 -> 320
    //   295: new 175	android/widget/ArrayAdapter
    //   298: dup
    //   299: aload_1
    //   300: ldc 176
    //   302: aload 7
    //   304: invokespecial 179	android/widget/ArrayAdapter:<init>	(Landroid/content/Context;I[Ljava/lang/Object;)V
    //   307: astore_1
    //   308: aload_1
    //   309: getstatic 184	android/support/v7/b/i:support_simple_spinner_dropdown_item	I
    //   312: invokevirtual 188	android/widget/ArrayAdapter:setDropDownViewResource	(I)V
    //   315: aload_0
    //   316: aload_1
    //   317: invokevirtual 192	android/support/v7/widget/bf:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   320: aload 10
    //   322: getfield 150	android/support/v7/widget/ft:a	Landroid/content/res/TypedArray;
    //   325: invokevirtual 123	android/content/res/TypedArray:recycle	()V
    //   328: aload_0
    //   329: iconst_1
    //   330: putfield 194	android/support/v7/widget/bf:i	Z
    //   333: aload_0
    //   334: getfield 196	android/support/v7/widget/bf:h	Landroid/widget/SpinnerAdapter;
    //   337: ifnull +16 -> 353
    //   340: aload_0
    //   341: aload_0
    //   342: getfield 196	android/support/v7/widget/bf:h	Landroid/widget/SpinnerAdapter;
    //   345: invokevirtual 192	android/support/v7/widget/bf:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   348: aload_0
    //   349: aconst_null
    //   350: putfield 196	android/support/v7/widget/bf:h	Landroid/widget/SpinnerAdapter;
    //   353: aload_0
    //   354: getfield 92	android/support/v7/widget/bf:e	Landroid/support/v7/widget/aj;
    //   357: aload_2
    //   358: iload_3
    //   359: invokevirtual 199	android/support/v7/widget/aj:a	(Landroid/util/AttributeSet;I)V
    //   362: return
    //   363: getstatic 37	android/support/v7/widget/bf:a	Z
    //   366: ifne +9 -> 375
    //   369: aload_1
    //   370: astore 7
    //   372: goto -292 -> 80
    //   375: aconst_null
    //   376: astore 7
    //   378: goto -298 -> 80
    //   381: astore 9
    //   383: aconst_null
    //   384: astore 8
    //   386: aload 8
    //   388: astore 7
    //   390: ldc 201
    //   392: ldc 203
    //   394: aload 9
    //   396: invokestatic 208	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   399: pop
    //   400: iload 4
    //   402: istore 6
    //   404: aload 8
    //   406: ifnull -245 -> 161
    //   409: aload 8
    //   411: invokevirtual 123	android/content/res/TypedArray:recycle	()V
    //   414: iload 4
    //   416: istore 6
    //   418: goto -257 -> 161
    //   421: astore_1
    //   422: aconst_null
    //   423: astore 7
    //   425: aload 7
    //   427: ifnull +8 -> 435
    //   430: aload 7
    //   432: invokevirtual 123	android/content/res/TypedArray:recycle	()V
    //   435: aload_1
    //   436: athrow
    //   437: iconst_1
    //   438: istore 6
    //   440: goto -279 -> 161
    //   443: astore_1
    //   444: goto -19 -> 425
    //   447: astore 9
    //   449: goto -63 -> 386
    //
    // Exception table:
    //   from	to	target	type
    //   101	113	381	java/lang/Exception
    //   101	113	421	finally
    //   121	130	443	finally
    //   134	143	443	finally
    //   390	400	443	finally
    //   121	130	447	java/lang/Exception
    //   134	143	447	java/lang/Exception
  }

  private int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null)
      return 0;
    int i3 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i4 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int m = Math.max(0, getSelectedItemPosition());
    int i5 = Math.min(paramSpinnerAdapter.getCount(), m + 15);
    int n = Math.max(0, m - (15 - (i5 - m)));
    View localView = null;
    int i1 = 0;
    m = 0;
    if (n < i5)
    {
      int i2 = paramSpinnerAdapter.getItemViewType(n);
      if (i2 == m)
        break label204;
      localView = null;
      m = i2;
    }
    label204: 
    while (true)
    {
      localView = paramSpinnerAdapter.getView(n, localView, this);
      if (localView.getLayoutParams() == null)
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localView.measure(i3, i4);
      i1 = Math.max(i1, localView.getMeasuredWidth());
      n += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(this.l);
        return this.l.left + this.l.right + i1;
      }
      return i1;
    }
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (this.e != null)
      this.e.c();
  }

  public final int getDropDownHorizontalOffset()
  {
    if (this.j != null)
      return this.j.f;
    if (b)
      return super.getDropDownHorizontalOffset();
    return 0;
  }

  public final int getDropDownVerticalOffset()
  {
    if (this.j != null)
    {
      localbi = this.j;
      if (localbi.h);
    }
    while (!b)
    {
      bi localbi;
      return 0;
      return localbi.g;
    }
    return super.getDropDownVerticalOffset();
  }

  public final int getDropDownWidth()
  {
    if (this.j != null)
      return this.k;
    if (b)
      return super.getDropDownWidth();
    return 0;
  }

  public final Drawable getPopupBackground()
  {
    if (this.j != null)
      return this.j.c.getBackground();
    if (b)
      return super.getPopupBackground();
    return null;
  }

  public final Context getPopupContext()
  {
    if (this.j != null)
      return this.f;
    if (a)
      return super.getPopupContext();
    return null;
  }

  public final CharSequence getPrompt()
  {
    if (this.j != null)
      return this.j.a;
    return super.getPrompt();
  }

  public final ColorStateList getSupportBackgroundTintList()
  {
    if (this.e != null)
      return this.e.a();
    return null;
  }

  public final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.e != null)
      return this.e.b();
    return null;
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.j != null) && (this.j.c.isShowing()))
      this.j.d();
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.j != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648))
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.g != null) && (this.g.onTouch(this, paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public final boolean performClick()
  {
    if (this.j != null)
    {
      if (!this.j.c.isShowing())
        this.j.b();
      return true;
    }
    return super.performClick();
  }

  public final void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!this.i)
      this.h = paramSpinnerAdapter;
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    }
    while (this.j == null);
    if (this.f == null);
    for (Context localContext = getContext(); ; localContext = this.f)
    {
      this.j.a(new bh(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (this.e != null)
      this.e.b(null);
  }

  public final void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (this.e != null)
      this.e.a(paramInt);
  }

  public final void setDropDownHorizontalOffset(int paramInt)
  {
    if (this.j != null)
      this.j.f = paramInt;
    while (!b)
      return;
    super.setDropDownHorizontalOffset(paramInt);
  }

  public final void setDropDownVerticalOffset(int paramInt)
  {
    if (this.j != null)
    {
      localbi = this.j;
      localbi.g = paramInt;
      localbi.h = true;
    }
    while (!b)
    {
      bi localbi;
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }

  public final void setDropDownWidth(int paramInt)
  {
    if (this.j != null)
      this.k = paramInt;
    while (!b)
      return;
    super.setDropDownWidth(paramInt);
  }

  public final void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (this.j != null)
      this.j.a(paramDrawable);
    while (!b)
      return;
    super.setPopupBackgroundDrawable(paramDrawable);
  }

  public final void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(a.a(getPopupContext(), paramInt));
  }

  public final void setPrompt(CharSequence paramCharSequence)
  {
    if (this.j != null)
    {
      this.j.a = paramCharSequence;
      return;
    }
    super.setPrompt(paramCharSequence);
  }

  public final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.e != null)
      this.e.a(paramColorStateList);
  }

  public final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.e != null)
      this.e.a(paramMode);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bf
 * JD-Core Version:    0.6.2
 */