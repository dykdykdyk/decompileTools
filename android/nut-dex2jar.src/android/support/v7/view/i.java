package android.support.v7.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.n;
import android.support.v7.b.l;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class i extends MenuInflater
{
  private static final Class<?>[] a = arrayOfClass;
  private static final Class<?>[] b = arrayOfClass;
  private final Object[] c;
  private final Object[] d;
  private Context e;
  private Object f;

  static
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Context.class;
  }

  public i(Context paramContext)
  {
    super(paramContext);
    this.e = paramContext;
    this.c = new Object[] { paramContext };
    this.d = this.c;
  }

  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
    throws XmlPullParserException, IOException
  {
    k localk = new k(this, paramMenu);
    int i = paramXmlPullParser.getEventType();
    int j = 0;
    paramMenu = null;
    Object localObject;
    int k;
    if (i == 2)
    {
      localObject = paramXmlPullParser.getName();
      if (((String)localObject).equals("menu"))
      {
        k = paramXmlPullParser.next();
        label56: i = 0;
        label59: if (i != 0)
          return;
      }
    }
    switch (k)
    {
    default:
    case 2:
    case 3:
      while (true)
      {
        k = paramXmlPullParser.next();
        break label59;
        throw new RuntimeException("Expecting menu, got " + (String)localObject);
        k = paramXmlPullParser.next();
        i = k;
        if (k != 1)
          break;
        break label56;
        if (j == 0)
        {
          localObject = paramXmlPullParser.getName();
          if (((String)localObject).equals("group"))
          {
            localObject = localk.z.e.obtainStyledAttributes(paramAttributeSet, l.MenuGroup);
            localk.b = ((TypedArray)localObject).getResourceId(l.MenuGroup_android_id, 0);
            localk.c = ((TypedArray)localObject).getInt(l.MenuGroup_android_menuCategory, 0);
            localk.d = ((TypedArray)localObject).getInt(l.MenuGroup_android_orderInCategory, 0);
            localk.e = ((TypedArray)localObject).getInt(l.MenuGroup_android_checkableBehavior, 0);
            localk.f = ((TypedArray)localObject).getBoolean(l.MenuGroup_android_visible, true);
            localk.g = ((TypedArray)localObject).getBoolean(l.MenuGroup_android_enabled, true);
            ((TypedArray)localObject).recycle();
          }
          else
          {
            if (((String)localObject).equals("item"))
            {
              localObject = localk.z.e.obtainStyledAttributes(paramAttributeSet, l.MenuItem);
              localk.i = ((TypedArray)localObject).getResourceId(l.MenuItem_android_id, 0);
              localk.j = (((TypedArray)localObject).getInt(l.MenuItem_android_menuCategory, localk.c) & 0xFFFF0000 | ((TypedArray)localObject).getInt(l.MenuItem_android_orderInCategory, localk.d) & 0xFFFF);
              localk.k = ((TypedArray)localObject).getText(l.MenuItem_android_title);
              localk.l = ((TypedArray)localObject).getText(l.MenuItem_android_titleCondensed);
              localk.m = ((TypedArray)localObject).getResourceId(l.MenuItem_android_icon, 0);
              localk.n = k.a(((TypedArray)localObject).getString(l.MenuItem_android_alphabeticShortcut));
              localk.o = k.a(((TypedArray)localObject).getString(l.MenuItem_android_numericShortcut));
              if (((TypedArray)localObject).hasValue(l.MenuItem_android_checkable))
                if (((TypedArray)localObject).getBoolean(l.MenuItem_android_checkable, false))
                {
                  k = 1;
                  label458: localk.p = k;
                  label465: localk.q = ((TypedArray)localObject).getBoolean(l.MenuItem_android_checked, false);
                  localk.r = ((TypedArray)localObject).getBoolean(l.MenuItem_android_visible, localk.f);
                  localk.s = ((TypedArray)localObject).getBoolean(l.MenuItem_android_enabled, localk.g);
                  localk.t = ((TypedArray)localObject).getInt(l.MenuItem_showAsAction, -1);
                  localk.x = ((TypedArray)localObject).getString(l.MenuItem_android_onClick);
                  localk.u = ((TypedArray)localObject).getResourceId(l.MenuItem_actionLayout, 0);
                  localk.v = ((TypedArray)localObject).getString(l.MenuItem_actionViewClass);
                  localk.w = ((TypedArray)localObject).getString(l.MenuItem_actionProviderClass);
                  if (localk.w == null)
                    break label676;
                  k = 1;
                  label593: if ((k == 0) || (localk.u != 0) || (localk.v != null))
                    break label682;
                }
              for (localk.y = ((n)localk.a(localk.w, b, localk.z.d)); ; localk.y = null)
              {
                ((TypedArray)localObject).recycle();
                localk.h = false;
                break;
                k = 0;
                break label458;
                localk.p = localk.e;
                break label465;
                label676: k = 0;
                break label593;
                label682: if (k != 0)
                  Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
              }
            }
            if (((String)localObject).equals("menu"))
            {
              a(paramXmlPullParser, paramAttributeSet, localk.b());
            }
            else
            {
              j = 1;
              paramMenu = (Menu)localObject;
              continue;
              localObject = paramXmlPullParser.getName();
              if ((j != 0) && (((String)localObject).equals(paramMenu)))
              {
                j = 0;
                paramMenu = null;
              }
              else if (((String)localObject).equals("group"))
              {
                localk.a();
              }
              else if (((String)localObject).equals("item"))
              {
                if (!localk.h)
                  if ((localk.y != null) && (localk.y.e()))
                  {
                    localk.b();
                  }
                  else
                  {
                    localk.h = true;
                    localk.a(localk.a.add(localk.b, localk.i, localk.j, localk.k));
                  }
              }
              else if (((String)localObject).equals("menu"))
              {
                i = 1;
              }
            }
          }
        }
      }
    case 1:
    }
    throw new RuntimeException("Unexpected end of document");
  }

  // ERROR //
  public final void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 339
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 341	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 5
    //   19: aconst_null
    //   20: astore 4
    //   22: aload_0
    //   23: getfield 32	android/support/v7/view/i:e	Landroid/content/Context;
    //   26: invokevirtual 345	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 351	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 4
    //   39: aload 6
    //   41: astore_3
    //   42: aload 6
    //   44: astore 5
    //   46: aload_0
    //   47: aload 6
    //   49: aload 6
    //   51: invokestatic 357	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   54: aload_2
    //   55: invokespecial 302	android/support/v7/view/i:a	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   58: aload 6
    //   60: ifnull -47 -> 13
    //   63: aload 6
    //   65: invokeinterface 362 1 0
    //   70: return
    //   71: astore_2
    //   72: aload 4
    //   74: astore_3
    //   75: new 364	android/view/InflateException
    //   78: dup
    //   79: ldc_w 366
    //   82: aload_2
    //   83: invokespecial 369	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: athrow
    //   87: astore_2
    //   88: aload_3
    //   89: ifnull +9 -> 98
    //   92: aload_3
    //   93: invokeinterface 362 1 0
    //   98: aload_2
    //   99: athrow
    //   100: astore_2
    //   101: aload 5
    //   103: astore_3
    //   104: new 364	android/view/InflateException
    //   107: dup
    //   108: ldc_w 366
    //   111: aload_2
    //   112: invokespecial 369	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   115: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   22	35	71	org/xmlpull/v1/XmlPullParserException
    //   46	58	71	org/xmlpull/v1/XmlPullParserException
    //   22	35	87	finally
    //   46	58	87	finally
    //   75	87	87	finally
    //   104	116	87	finally
    //   22	35	100	java/io/IOException
    //   46	58	100	java/io/IOException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.i
 * JD-Core Version:    0.6.2
 */