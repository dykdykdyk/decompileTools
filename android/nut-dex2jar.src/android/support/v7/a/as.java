package android.support.v7.a;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.reflect.Method;

final class as
  implements View.OnClickListener
{
  private final View a;
  private final String b;
  private Method c;
  private Context d;

  public as(View paramView, String paramString)
  {
    this.a = paramView;
    this.b = paramString;
  }

  // ERROR //
  public final void onClick(View paramView)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	android/support/v7/a/as:c	Ljava/lang/reflect/Method;
    //   4: ifnonnull +60 -> 64
    //   7: aload_0
    //   8: getfield 21	android/support/v7/a/as:a	Landroid/view/View;
    //   11: invokevirtual 40	android/view/View:getContext	()Landroid/content/Context;
    //   14: astore_3
    //   15: aload_3
    //   16: ifnull +94 -> 110
    //   19: aload_3
    //   20: invokevirtual 46	android/content/Context:isRestricted	()Z
    //   23: ifne +64 -> 87
    //   26: aload_3
    //   27: invokevirtual 50	java/lang/Object:getClass	()Ljava/lang/Class;
    //   30: aload_0
    //   31: getfield 23	android/support/v7/a/as:b	Ljava/lang/String;
    //   34: iconst_1
    //   35: anewarray 52	java/lang/Class
    //   38: dup
    //   39: iconst_0
    //   40: ldc 36
    //   42: aastore
    //   43: invokevirtual 56	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   46: astore 4
    //   48: aload 4
    //   50: ifnull +37 -> 87
    //   53: aload_0
    //   54: aload 4
    //   56: putfield 34	android/support/v7/a/as:c	Ljava/lang/reflect/Method;
    //   59: aload_0
    //   60: aload_3
    //   61: putfield 58	android/support/v7/a/as:d	Landroid/content/Context;
    //   64: aload_0
    //   65: getfield 34	android/support/v7/a/as:c	Ljava/lang/reflect/Method;
    //   68: aload_0
    //   69: getfield 58	android/support/v7/a/as:d	Landroid/content/Context;
    //   72: iconst_1
    //   73: anewarray 4	java/lang/Object
    //   76: dup
    //   77: iconst_0
    //   78: aload_1
    //   79: aastore
    //   80: invokevirtual 64	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   83: pop
    //   84: return
    //   85: astore 4
    //   87: aload_3
    //   88: instanceof 66
    //   91: ifeq +14 -> 105
    //   94: aload_3
    //   95: checkcast 66	android/content/ContextWrapper
    //   98: invokevirtual 69	android/content/ContextWrapper:getBaseContext	()Landroid/content/Context;
    //   101: astore_3
    //   102: goto -87 -> 15
    //   105: aconst_null
    //   106: astore_3
    //   107: goto -92 -> 15
    //   110: aload_0
    //   111: getfield 21	android/support/v7/a/as:a	Landroid/view/View;
    //   114: invokevirtual 73	android/view/View:getId	()I
    //   117: istore_2
    //   118: iload_2
    //   119: iconst_m1
    //   120: if_icmpne +52 -> 172
    //   123: ldc 75
    //   125: astore_1
    //   126: new 77	java/lang/IllegalStateException
    //   129: dup
    //   130: new 79	java/lang/StringBuilder
    //   133: dup
    //   134: ldc 81
    //   136: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload_0
    //   140: getfield 23	android/support/v7/a/as:b	Ljava/lang/String;
    //   143: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc 90
    //   148: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_0
    //   152: getfield 21	android/support/v7/a/as:a	Landroid/view/View;
    //   155: invokevirtual 50	java/lang/Object:getClass	()Ljava/lang/Class;
    //   158: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   161: aload_1
    //   162: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokespecial 98	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   171: athrow
    //   172: new 79	java/lang/StringBuilder
    //   175: dup
    //   176: ldc 100
    //   178: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: aload_0
    //   182: getfield 21	android/support/v7/a/as:a	Landroid/view/View;
    //   185: invokevirtual 40	android/view/View:getContext	()Landroid/content/Context;
    //   188: invokevirtual 104	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   191: iload_2
    //   192: invokevirtual 110	android/content/res/Resources:getResourceEntryName	(I)Ljava/lang/String;
    //   195: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc 112
    //   200: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: astore_1
    //   207: goto -81 -> 126
    //   210: astore_1
    //   211: new 77	java/lang/IllegalStateException
    //   214: dup
    //   215: ldc 114
    //   217: aload_1
    //   218: invokespecial 117	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   221: athrow
    //   222: astore_1
    //   223: new 77	java/lang/IllegalStateException
    //   226: dup
    //   227: ldc 119
    //   229: aload_1
    //   230: invokespecial 117	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   233: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   19	48	85	java/lang/NoSuchMethodException
    //   53	64	85	java/lang/NoSuchMethodException
    //   64	84	210	java/lang/IllegalAccessException
    //   64	84	222	java/lang/reflect/InvocationTargetException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.as
 * JD-Core Version:    0.6.2
 */