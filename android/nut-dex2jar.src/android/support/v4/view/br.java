package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class br extends bp
{
  static Field b;
  static boolean c = false;

  public final void a(View paramView, a parama)
  {
    if (parama == null);
    for (parama = null; ; parama = parama.a)
    {
      paramView.setAccessibilityDelegate((View.AccessibilityDelegate)parama);
      return;
    }
  }

  public final boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }

  // ERROR //
  public final boolean b(View paramView)
  {
    // Byte code:
    //   0: getstatic 12	android/support/v4/view/br:c	Z
    //   3: ifeq +5 -> 8
    //   6: iconst_0
    //   7: ireturn
    //   8: getstatic 41	android/support/v4/view/br:b	Ljava/lang/reflect/Field;
    //   11: ifnonnull +20 -> 31
    //   14: ldc 22
    //   16: ldc 43
    //   18: invokevirtual 49	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   21: astore_2
    //   22: aload_2
    //   23: putstatic 41	android/support/v4/view/br:b	Ljava/lang/reflect/Field;
    //   26: aload_2
    //   27: iconst_1
    //   28: invokevirtual 55	java/lang/reflect/Field:setAccessible	(Z)V
    //   31: getstatic 41	android/support/v4/view/br:b	Ljava/lang/reflect/Field;
    //   34: aload_1
    //   35: invokevirtual 59	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   38: astore_1
    //   39: aload_1
    //   40: ifnull -34 -> 6
    //   43: iconst_1
    //   44: ireturn
    //   45: astore_1
    //   46: iconst_1
    //   47: putstatic 12	android/support/v4/view/br:c	Z
    //   50: iconst_0
    //   51: ireturn
    //   52: astore_1
    //   53: iconst_1
    //   54: putstatic 12	android/support/v4/view/br:c	Z
    //   57: iconst_0
    //   58: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   14	31	45	java/lang/Throwable
    //   31	39	52	java/lang/Throwable
  }

  public final boolean b(View paramView, int paramInt)
  {
    return paramView.canScrollVertically(paramInt);
  }

  public final dd p(View paramView)
  {
    if (this.a == null)
      this.a = new WeakHashMap();
    dd localdd2 = (dd)this.a.get(paramView);
    dd localdd1 = localdd2;
    if (localdd2 == null)
    {
      localdd1 = new dd(paramView);
      this.a.put(paramView, localdd1);
    }
    return localdd1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.br
 * JD-Core Version:    0.6.2
 */