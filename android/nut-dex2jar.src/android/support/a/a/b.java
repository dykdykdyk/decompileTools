package android.support.a.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(21)
public final class b extends j
  implements Animatable
{
  private d b;
  private Context c;
  private ArgbEvaluator d = null;
  private final Drawable.Callback e = new c(this);

  private b()
  {
    this(null, (byte)0);
  }

  private b(Context paramContext)
  {
    this(paramContext, (byte)0);
  }

  private b(Context paramContext, byte paramByte)
  {
    this.c = paramContext;
    this.b = new d();
  }

  public static b a(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    paramContext = new b(paramContext);
    paramContext.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return paramContext;
  }

  private void a(Animator paramAnimator)
  {
    Object localObject;
    if ((paramAnimator instanceof AnimatorSet))
    {
      localObject = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (localObject != null)
      {
        int i = 0;
        while (i < ((List)localObject).size())
        {
          a((Animator)((List)localObject).get(i));
          i += 1;
        }
      }
    }
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      localObject = paramAnimator.getPropertyName();
      if (("fillColor".equals(localObject)) || ("strokeColor".equals(localObject)))
      {
        if (this.d == null)
          this.d = new ArgbEvaluator();
        paramAnimator.setEvaluator(this.d);
      }
    }
  }

  private boolean a()
  {
    ArrayList localArrayList = this.b.c;
    if (localArrayList == null)
      return false;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning())
        return true;
      i += 1;
    }
    return false;
  }

  public final void applyTheme(Resources.Theme paramTheme)
  {
    if (this.a != null)
      android.support.v4.c.a.a.a(this.a, paramTheme);
  }

  public final boolean canApplyTheme()
  {
    if (this.a != null)
      return android.support.v4.c.a.a.d(this.a);
    return false;
  }

  public final void draw(Canvas paramCanvas)
  {
    if (this.a != null)
      this.a.draw(paramCanvas);
    do
    {
      return;
      this.b.b.draw(paramCanvas);
    }
    while (!a());
    invalidateSelf();
  }

  public final int getAlpha()
  {
    if (this.a != null)
      return android.support.v4.c.a.a.c(this.a);
    return this.b.b.getAlpha();
  }

  public final int getChangingConfigurations()
  {
    if (this.a != null)
      return this.a.getChangingConfigurations();
    return super.getChangingConfigurations() | this.b.a;
  }

  public final Drawable.ConstantState getConstantState()
  {
    if (this.a != null)
      return new e(this.a.getConstantState());
    return null;
  }

  public final int getIntrinsicHeight()
  {
    if (this.a != null)
      return this.a.getIntrinsicHeight();
    return this.b.b.getIntrinsicHeight();
  }

  public final int getIntrinsicWidth()
  {
    if (this.a != null)
      return this.a.getIntrinsicWidth();
    return this.b.b.getIntrinsicWidth();
  }

  public final int getOpacity()
  {
    if (this.a != null)
      return this.a.getOpacity();
    return this.b.b.getOpacity();
  }

  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }

  public final void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    int i = paramXmlPullParser.getEventType();
    label28: Object localObject1;
    label77: Object localObject2;
    if (i != 1)
      if (i == 2)
      {
        localObject1 = paramXmlPullParser.getName();
        if (!"animated-vector".equals(localObject1))
          break label177;
        localObject1 = a.e;
        if (paramTheme != null)
          break label162;
        localObject1 = paramResources.obtainAttributes(paramAttributeSet, (int[])localObject1);
        i = ((TypedArray)localObject1).getResourceId(0, 0);
        if (i != 0)
        {
          localObject2 = k.a(paramResources, i, paramTheme);
          ((k)localObject2).d = false;
          ((k)localObject2).setCallback(this.e);
          if (this.b.b != null)
            this.b.b.setCallback(null);
          this.b.b = ((k)localObject2);
        }
        ((TypedArray)localObject1).recycle();
      }
    while (true)
    {
      i = paramXmlPullParser.next();
      break label28;
      break;
      label162: localObject1 = paramTheme.obtainStyledAttributes(paramAttributeSet, (int[])localObject1, 0, 0);
      break label77;
      label177: if ("target".equals(localObject1))
      {
        localObject1 = paramResources.obtainAttributes(paramAttributeSet, a.f);
        localObject2 = ((TypedArray)localObject1).getString(0);
        i = ((TypedArray)localObject1).getResourceId(1, 0);
        if (i != 0)
        {
          if (this.c == null)
            break label352;
          Animator localAnimator = AnimatorInflater.loadAnimator(this.c, i);
          localAnimator.setTarget(this.b.b.c.b.g.get(localObject2));
          if (Build.VERSION.SDK_INT < 21)
            a(localAnimator);
          if (this.b.c == null)
          {
            this.b.c = new ArrayList();
            this.b.d = new android.support.v4.f.a();
          }
          this.b.c.add(localAnimator);
          this.b.d.put(localAnimator, localObject2);
        }
        ((TypedArray)localObject1).recycle();
      }
    }
    label352: throw new IllegalStateException("Context can't be null when inflating animators");
  }

  public final boolean isRunning()
  {
    if (this.a != null)
      return ((AnimatedVectorDrawable)this.a).isRunning();
    ArrayList localArrayList = this.b.c;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning())
        return true;
      i += 1;
    }
    return false;
  }

  public final boolean isStateful()
  {
    if (this.a != null)
      return this.a.isStateful();
    return this.b.b.isStateful();
  }

  public final Drawable mutate()
  {
    if (this.a != null)
    {
      this.a.mutate();
      return this;
    }
    throw new IllegalStateException("Mutate() is not supported for older platform");
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    if (this.a != null)
    {
      this.a.setBounds(paramRect);
      return;
    }
    this.b.b.setBounds(paramRect);
  }

  protected final boolean onLevelChange(int paramInt)
  {
    if (this.a != null)
      return this.a.setLevel(paramInt);
    return this.b.b.setLevel(paramInt);
  }

  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    if (this.a != null)
      return this.a.setState(paramArrayOfInt);
    return this.b.b.setState(paramArrayOfInt);
  }

  public final void setAlpha(int paramInt)
  {
    if (this.a != null)
    {
      this.a.setAlpha(paramInt);
      return;
    }
    this.b.b.setAlpha(paramInt);
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.a != null)
    {
      this.a.setColorFilter(paramColorFilter);
      return;
    }
    this.b.b.setColorFilter(paramColorFilter);
  }

  public final void setTint(int paramInt)
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramInt);
      return;
    }
    this.b.b.setTint(paramInt);
  }

  public final void setTintList(ColorStateList paramColorStateList)
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramColorStateList);
      return;
    }
    this.b.b.setTintList(paramColorStateList);
  }

  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    if (this.a != null)
    {
      android.support.v4.c.a.a.a(this.a, paramMode);
      return;
    }
    this.b.b.setTintMode(paramMode);
  }

  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.a != null)
      return this.a.setVisible(paramBoolean1, paramBoolean2);
    this.b.b.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }

  public final void start()
  {
    if (this.a != null)
      ((AnimatedVectorDrawable)this.a).start();
    while (a())
      return;
    ArrayList localArrayList = this.b.c;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      ((Animator)localArrayList.get(i)).start();
      i += 1;
    }
    invalidateSelf();
  }

  public final void stop()
  {
    if (this.a != null)
      ((AnimatedVectorDrawable)this.a).stop();
    while (true)
    {
      return;
      ArrayList localArrayList = this.b.c;
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((Animator)localArrayList.get(i)).end();
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.a.a.b
 * JD-Core Version:    0.6.2
 */