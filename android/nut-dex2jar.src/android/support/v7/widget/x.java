package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class x extends DataSetObservable
{
  private static final String c = x.class.getSimpleName();
  private static final Object d = new Object();
  private static final Map<String, x> e = new HashMap();
  final Object a;
  final List<y> b;
  private final List<aa> f;
  private final Context g;
  private final String h;
  private Intent i;
  private z j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private ab p;

  private boolean e()
  {
    if ((this.j != null) && (this.i != null) && (!this.b.isEmpty()) && (!this.f.isEmpty()))
    {
      Collections.unmodifiableList(this.f);
      return true;
    }
    return false;
  }

  private void f()
  {
    int i2 = this.f.size() - this.k;
    if (i2 <= 0);
    while (true)
    {
      return;
      this.n = true;
      int i1 = 0;
      while (i1 < i2)
      {
        this.f.remove(0);
        i1 += 1;
      }
    }
  }

  // ERROR //
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	android/support/v7/widget/x:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 62	android/support/v7/widget/x:h	Ljava/lang/String;
    //   8: invokevirtual 109	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 115	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc 117
    //   20: invokeinterface 123 3 0
    //   25: iconst_0
    //   26: istore_1
    //   27: iload_1
    //   28: iconst_1
    //   29: if_icmpeq +18 -> 47
    //   32: iload_1
    //   33: iconst_2
    //   34: if_icmpeq +13 -> 47
    //   37: aload_3
    //   38: invokeinterface 126 1 0
    //   43: istore_1
    //   44: goto -17 -> 27
    //   47: ldc 128
    //   49: aload_3
    //   50: invokeinterface 131 1 0
    //   55: invokevirtual 137	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifne +50 -> 108
    //   61: new 101	org/xmlpull/v1/XmlPullParserException
    //   64: dup
    //   65: ldc 139
    //   67: invokespecial 142	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   70: athrow
    //   71: astore_3
    //   72: getstatic 43	android/support/v7/widget/x:c	Ljava/lang/String;
    //   75: new 144	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 146
    //   81: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 62	android/support/v7/widget/x:h	Ljava/lang/String;
    //   88: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: aload_3
    //   95: invokestatic 159	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   98: pop
    //   99: aload_2
    //   100: ifnull +7 -> 107
    //   103: aload_2
    //   104: invokevirtual 164	java/io/FileInputStream:close	()V
    //   107: return
    //   108: aload_0
    //   109: getfield 79	android/support/v7/widget/x:f	Ljava/util/List;
    //   112: astore 4
    //   114: aload 4
    //   116: invokeinterface 167 1 0
    //   121: aload_3
    //   122: invokeinterface 126 1 0
    //   127: istore_1
    //   128: iload_1
    //   129: iconst_1
    //   130: if_icmpeq +138 -> 268
    //   133: iload_1
    //   134: iconst_3
    //   135: if_icmpeq -14 -> 121
    //   138: iload_1
    //   139: iconst_4
    //   140: if_icmpeq -19 -> 121
    //   143: ldc 169
    //   145: aload_3
    //   146: invokeinterface 131 1 0
    //   151: invokevirtual 137	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   154: ifne +52 -> 206
    //   157: new 101	org/xmlpull/v1/XmlPullParserException
    //   160: dup
    //   161: ldc 171
    //   163: invokespecial 142	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   166: athrow
    //   167: astore_3
    //   168: getstatic 43	android/support/v7/widget/x:c	Ljava/lang/String;
    //   171: new 144	java/lang/StringBuilder
    //   174: dup
    //   175: ldc 146
    //   177: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: getfield 62	android/support/v7/widget/x:h	Ljava/lang/String;
    //   184: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: aload_3
    //   191: invokestatic 159	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   194: pop
    //   195: aload_2
    //   196: ifnull -89 -> 107
    //   199: aload_2
    //   200: invokevirtual 164	java/io/FileInputStream:close	()V
    //   203: return
    //   204: astore_2
    //   205: return
    //   206: aload 4
    //   208: new 173	android/support/v7/widget/aa
    //   211: dup
    //   212: aload_3
    //   213: aconst_null
    //   214: ldc 175
    //   216: invokeinterface 179 3 0
    //   221: aload_3
    //   222: aconst_null
    //   223: ldc 181
    //   225: invokeinterface 179 3 0
    //   230: invokestatic 187	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   233: aload_3
    //   234: aconst_null
    //   235: ldc 189
    //   237: invokeinterface 179 3 0
    //   242: invokestatic 195	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   245: invokespecial 198	android/support/v7/widget/aa:<init>	(Ljava/lang/String;JF)V
    //   248: invokeinterface 201 2 0
    //   253: pop
    //   254: goto -133 -> 121
    //   257: astore_3
    //   258: aload_2
    //   259: ifnull +7 -> 266
    //   262: aload_2
    //   263: invokevirtual 164	java/io/FileInputStream:close	()V
    //   266: aload_3
    //   267: athrow
    //   268: aload_2
    //   269: ifnull -162 -> 107
    //   272: aload_2
    //   273: invokevirtual 164	java/io/FileInputStream:close	()V
    //   276: return
    //   277: astore_2
    //   278: return
    //   279: astore_2
    //   280: return
    //   281: astore_2
    //   282: goto -16 -> 266
    //   285: astore_2
    //   286: return
    //
    // Exception table:
    //   from	to	target	type
    //   12	25	71	org/xmlpull/v1/XmlPullParserException
    //   37	44	71	org/xmlpull/v1/XmlPullParserException
    //   47	71	71	org/xmlpull/v1/XmlPullParserException
    //   108	121	71	org/xmlpull/v1/XmlPullParserException
    //   121	128	71	org/xmlpull/v1/XmlPullParserException
    //   143	167	71	org/xmlpull/v1/XmlPullParserException
    //   206	254	71	org/xmlpull/v1/XmlPullParserException
    //   12	25	167	java/io/IOException
    //   37	44	167	java/io/IOException
    //   47	71	167	java/io/IOException
    //   108	121	167	java/io/IOException
    //   121	128	167	java/io/IOException
    //   143	167	167	java/io/IOException
    //   206	254	167	java/io/IOException
    //   199	203	204	java/io/IOException
    //   12	25	257	finally
    //   37	44	257	finally
    //   47	71	257	finally
    //   72	99	257	finally
    //   108	121	257	finally
    //   121	128	257	finally
    //   143	167	257	finally
    //   168	195	257	finally
    //   206	254	257	finally
    //   272	276	277	java/io/IOException
    //   103	107	279	java/io/IOException
    //   262	266	281	java/io/IOException
    //   0	12	285	java/io/FileNotFoundException
  }

  public final int a()
  {
    synchronized (this.a)
    {
      c();
      int i1 = this.b.size();
      return i1;
    }
  }

  public final int a(ResolveInfo paramResolveInfo)
  {
    while (true)
    {
      int i1;
      synchronized (this.a)
      {
        c();
        List localList = this.b;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (((y)localList.get(i1)).a == paramResolveInfo)
            return i1;
        }
        else
          return -1;
      }
      i1 += 1;
    }
  }

  public final ResolveInfo a(int paramInt)
  {
    synchronized (this.a)
    {
      c();
      ResolveInfo localResolveInfo = ((y)this.b.get(paramInt)).a;
      return localResolveInfo;
    }
  }

  final boolean a(aa paramaa)
  {
    boolean bool = this.f.add(paramaa);
    Object[] arrayOfObject;
    if (bool)
    {
      this.n = true;
      f();
      if (!this.m)
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      if (this.n)
      {
        this.n = false;
        if (!TextUtils.isEmpty(this.h))
        {
          paramaa = new ac(this, (byte)0);
          arrayOfObject = new Object[2];
          arrayOfObject[0] = new ArrayList(this.f);
          arrayOfObject[1] = this.h;
          if (Build.VERSION.SDK_INT < 11)
            break label127;
          paramaa.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrayOfObject);
        }
      }
    }
    while (true)
    {
      e();
      notifyChanged();
      return bool;
      label127: paramaa.execute(arrayOfObject);
    }
  }

  public final Intent b(int paramInt)
  {
    synchronized (this.a)
    {
      if (this.i == null)
        return null;
      c();
      Object localObject2 = (y)this.b.get(paramInt);
      localObject2 = new ComponentName(((y)localObject2).a.activityInfo.packageName, ((y)localObject2).a.activityInfo.name);
      Intent localIntent = new Intent(this.i);
      localIntent.setComponent((ComponentName)localObject2);
      if (this.p != null)
      {
        new Intent(localIntent);
        if (this.p.a())
          return null;
      }
      a(new aa((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent;
    }
  }

  public final ResolveInfo b()
  {
    synchronized (this.a)
    {
      c();
      if (!this.b.isEmpty())
      {
        ResolveInfo localResolveInfo = ((y)this.b.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }

  final void c()
  {
    int i2 = 1;
    int i1;
    if ((this.o) && (this.i != null))
    {
      this.o = false;
      this.b.clear();
      List localList = this.g.getPackageManager().queryIntentActivities(this.i, 0);
      int i3 = localList.size();
      i1 = 0;
      while (i1 < i3)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
        this.b.add(new y(this, localResolveInfo));
        i1 += 1;
      }
      i1 = 1;
      if ((!this.l) || (!this.n) || (TextUtils.isEmpty(this.h)))
        break label167;
      this.l = false;
      this.m = true;
      g();
    }
    while (true)
    {
      f();
      if ((i1 | i2) != 0)
      {
        e();
        notifyChanged();
      }
      return;
      i1 = 0;
      break;
      label167: i2 = 0;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.x
 * JD-Core Version:    0.6.2
 */