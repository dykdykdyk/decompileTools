package com.baidu.android.pushservice.g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.baidu.android.pushservice.f.b;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.h;
import com.baidu.android.pushservice.util.m;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class f
{
  private static final String a = "baidu/pushservice" + File.separator + "lappicons";

  private static int a(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().densityDpi;
  }

  public static Bitmap a(Context paramContext, Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return paramBitmap;
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    int k = a(paramContext);
    int m = k / 40 + 9;
    paramContext = new BitmapDrawable(paramContext.getResources(), Bitmap.createScaledBitmap(paramBitmap, i, j, false));
    paramBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(paramBitmap);
    RectF localRectF = new RectF(0.0F, 0.0F, i, j);
    Paint localPaint = new Paint(1);
    localPaint.setColor(-7829368);
    localCanvas.drawRoundRect(localRectF, m, m, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    paramContext.setBounds(0, 0, i, j);
    localCanvas.saveLayer(localRectF, localPaint, 31);
    paramContext.draw(localCanvas);
    localCanvas.restore();
    switch (k)
    {
    default:
      j = 192;
      i = 192;
    case 120:
    case 160:
    case 240:
    case 320:
    case 480:
    }
    while (true)
    {
      return Bitmap.createScaledBitmap(paramBitmap, j, i, true);
      j = 36;
      i = 36;
      continue;
      j = 48;
      i = 48;
      continue;
      j = 72;
      i = 72;
      continue;
      j = 96;
      i = 96;
      continue;
      j = 144;
      i = 144;
    }
  }

  private static Bitmap a(Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    if (paramDrawable.getOpacity() != -1);
    for (Object localObject = Bitmap.Config.ARGB_8888; ; localObject = Bitmap.Config.RGB_565)
    {
      localObject = Bitmap.createBitmap(paramInt1, paramInt2, (Bitmap.Config)localObject);
      Canvas localCanvas = new Canvas((Bitmap)localObject);
      paramDrawable.setBounds(0, 0, paramInt1, paramInt2);
      paramDrawable.draw(localCanvas);
      return localObject;
    }
  }

  public static void a(Context paramContext, String paramString, c paramc)
  {
    Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntent2.putExtra("duplicate", false);
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramc.d());
    localIntent2.putExtra("android.intent.extra.shortcut.ICON", d(paramContext, paramc.a()));
    Intent localIntent1 = new Intent();
    Object localObject = d.a(paramContext).a(paramContext, paramString);
    paramString = (String)localObject;
    if (TextUtils.isEmpty((CharSequence)localObject))
      paramString = com.baidu.android.pushservice.message.a.f.a(paramContext, paramc.b(), -1);
    if ((paramString != null) && (!TextUtils.isEmpty(paramString)))
    {
      if ((paramString.startsWith("com.baidu.searchbox")) || (paramString.startsWith("com.baidu.voiceassistant")))
      {
        localIntent1.setAction("com.baidu.searchbox.action.aloader.VIEW");
        localIntent1.setPackage(paramString);
        localIntent1.setClassName(paramString, "com.baidu.searchbox.aloaderhost.ALoaderActivity");
        localIntent1.setFlags(67108864);
        localIntent1.putExtra("isBackToLauncher", true);
        localIntent1.putExtra("EXTRA_URL_NEW_WINDOW", true);
        localIntent1.putExtra("src", "launcher_icon");
        localObject = new JSONObject();
      }
      while (true)
      {
        try
        {
          ((JSONObject)localObject).put("appid", paramc.b());
          ((JSONObject)localObject).put("url", "http://m.baidu.com/lightapp/" + paramc.b());
          localIntent1.putExtra("pageId", ((JSONObject)localObject).toString());
          localIntent1.setComponent(new ComponentName(paramString, "com.baidu.searchbox.aloaderhost.ALoaderActivity"));
          a.c("ShortcutUtils", "open by searchbox: " + paramString);
          localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
          paramContext.sendBroadcast(localIntent2);
          d.a(paramContext).c(paramc.c(), paramString);
          return;
        }
        catch (JSONException localJSONException)
        {
          a.e("ShortcutUtils", "error " + localJSONException.getMessage());
          continue;
        }
        localIntent1.putExtra("_lightapp_url", "http://m.baidu.com/lightapp/" + paramc.b());
        localIntent1.setAction("android.intent.action.MAIN");
        localIntent1.addCategory("android.intent.category.LAUNCHER");
        localIntent1.putExtra("fromShortcut", true);
        localIntent1.putExtra("apikey", paramc.c());
        localIntent1.putExtra("appname", paramc.d());
        localIntent1.putExtra("_runtime_act_impl", "com.baidu.lappgui.LappHostActivity");
        localIntent1.setPackage(paramString);
        localObject = d.a(paramContext).f(paramString);
        if ((localObject != null) && (!TextUtils.isEmpty(((h)localObject).a)))
        {
          localIntent1.putExtra("host_appid", ((h)localObject).a);
          localIntent1.putExtra("host_version", ((h)localObject).b);
          localIntent1.setClassName(paramString, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity");
          localIntent1.setComponent(new ComponentName(paramString, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"));
        }
        a.c("ShortcutUtils", "open by runtime in: " + paramString + " apkey:" + paramc.c());
      }
    }
    localIntent1 = new Intent();
    localIntent1.setAction("android.intent.action.VIEW");
    if (m.c(paramContext, "com.baidu.browser.apps"))
    {
      paramString = "com.baidu.browser.apps";
      localIntent1.setPackage("com.baidu.browser.apps");
      localIntent1.setComponent(new ComponentName("com.baidu.browser.apps", "com.baidu.browser.framework.BdBrowserActivity"));
    }
    while (true)
    {
      localIntent1.addFlags(268435456);
      localIntent1.setData(Uri.parse("http://m.baidu.com/lightapp/" + paramc.b()));
      a.c("ShortcutUtils", "Open Host Not found,use browser: " + paramString);
      break;
      if (m.c(paramContext, "com.android.browser"))
      {
        paramString = "com.android.browser";
        localIntent1.setPackage("com.android.browser");
      }
      else
      {
        paramString = "browser";
      }
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      a.c("ShortcutUtils", "delShortcut Parameter can't be null ");
      return;
    }
    Intent localIntent = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent.putExtra("android.intent.extra.shortcut.NAME", paramString1);
    paramString1 = new Intent();
    if ((TextUtils.isEmpty(paramString2)) || (paramString2.equals("browser")))
    {
      paramString1.setAction("android.intent.action.VIEW");
      paramString1.addFlags(268435456);
      paramString1.setData(Uri.parse("http://m.baidu.com/lightapp/" + paramString3));
    }
    while (true)
    {
      localIntent.putExtra("android.intent.extra.shortcut.INTENT", paramString1);
      paramContext.sendBroadcast(localIntent);
      return;
      if ((paramString2.startsWith("com.baidu.searchbox")) || (paramString2.startsWith("com.baidu.voiceassistant")))
      {
        paramString1.setAction("com.baidu.searchbox.action.aloader.VIEW");
        paramString1.setPackage(paramString2);
        paramString1.setClassName(paramString2, "com.baidu.searchbox.aloaderhost.ALoaderActivity");
        paramString1.setFlags(67108864);
        paramString1.setComponent(new ComponentName(paramString2, "com.baidu.searchbox.aloaderhost.ALoaderActivity"));
      }
      else if (paramString2.equals("com.baidu.browser.apps"))
      {
        paramString1.setAction("android.intent.action.VIEW");
        paramString1.addFlags(268435456);
        paramString1.setData(Uri.parse("http://m.baidu.com/lightapp/" + paramString3));
        paramString1.setPackage("com.baidu.browser.apps");
        paramString1.setComponent(new ComponentName("com.baidu.browser.apps", "com.baidu.browser.framework.BdBrowserActivity"));
      }
      else if (paramString2.equals("com.android.browser"))
      {
        paramString1.setAction("android.intent.action.VIEW");
        paramString1.addFlags(268435456);
        paramString1.setData(Uri.parse("http://m.baidu.com/lightapp/" + paramString3));
        paramString1.setPackage("com.android.browser");
      }
      else
      {
        paramString3 = d.a(paramContext).f(paramString2);
        paramString1.setAction("android.intent.action.MAIN");
        paramString1.addCategory("android.intent.category.LAUNCHER");
        paramString1.setPackage(paramString2);
        if ((paramString3 != null) && (!TextUtils.isEmpty(paramString3.a)))
        {
          paramString1.setClassName(paramString2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity");
          paramString1.setComponent(new ComponentName(paramString2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"));
        }
      }
    }
  }

  public static void a(byte[] paramArrayOfByte, String paramString)
  {
    if (Environment.getExternalStorageState().equals("mounted"));
    try
    {
      String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + a;
      File localFile = new File(str);
      if (!localFile.exists())
        localFile.mkdirs();
      paramString = new FileOutputStream(new File(str + File.separator + paramString + ".bdi"));
      paramString.write(paramArrayOfByte);
      paramString.flush();
      paramString.close();
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      a.e("ShortcutUtils", "error " + paramArrayOfByte.getMessage());
    }
  }

  public static byte[] a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    Object localObject2 = null;
    InputStream localInputStream2 = null;
    paramContext = a(paramContext, paramBoolean, paramString1);
    if (paramContext != null);
    while (true)
    {
      return paramContext;
      Object localObject1 = paramContext;
      InputStream localInputStream1;
      if (!TextUtils.isEmpty(paramString2))
      {
        a.c("ShortcutUtils", "download Lightapp icon: " + paramString2);
        localInputStream1 = localInputStream2;
        localObject1 = localObject2;
      }
      try
      {
        b localb = com.baidu.android.pushservice.f.c.a(paramString2, "GET", null);
        localInputStream1 = localInputStream2;
        localObject1 = localObject2;
        localInputStream2 = localb.a();
        paramString2 = paramContext;
        localInputStream1 = localInputStream2;
        localObject1 = localInputStream2;
        if (localb.b() == 200)
        {
          paramString2 = paramContext;
          if (localInputStream2 != null)
          {
            localInputStream1 = localInputStream2;
            localObject1 = localInputStream2;
            paramString2 = a(localInputStream2);
          }
        }
        com.baidu.android.pushservice.f.c.a(new Closeable[] { localInputStream2 });
        localObject1 = paramString2;
        paramContext = (Context)localObject1;
        if (localObject1 != null)
        {
          a((byte[])localObject1, paramString1);
          return localObject1;
        }
      }
      catch (Exception paramString2)
      {
        while (true)
        {
          localObject1 = localInputStream1;
          a.e("ShortcutUtils", "error " + paramString2.getMessage());
          com.baidu.android.pushservice.f.c.a(new Closeable[] { localInputStream1 });
          localObject1 = paramContext;
        }
      }
      finally
      {
        com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject1 });
      }
    }
    throw paramContext;
  }

  public static byte[] a(Context paramContext, boolean paramBoolean, String paramString)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    Object localObject1 = localObject3;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      paramContext = localObject2;
      try
      {
        paramString = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + a + File.separator + paramString + ".bdi");
        paramContext = localObject2;
        localObject1 = localObject3;
        if (paramString.exists())
        {
          if (paramBoolean)
          {
            paramContext = localObject2;
            if (System.currentTimeMillis() - paramString.lastModified() > 604800000L)
              return null;
          }
          paramContext = localObject2;
          localObject1 = new FileInputStream(paramString);
          paramContext = localObject2;
          paramString = new byte[(int)paramString.length()];
          paramContext = paramString;
          ((InputStream)localObject1).read(paramString);
          paramContext = paramString;
          ((InputStream)localObject1).close();
          return paramString;
        }
      }
      catch (IOException paramString)
      {
        a.e("ShortcutUtils", "error " + paramString.getMessage());
        localObject1 = paramContext;
      }
    }
    return localObject1;
  }

  private static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null)
      return null;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    try
    {
      while (true)
      {
        i = paramInputStream.read(arrayOfByte, 0, 1024);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        a.e("ShortcutUtils", "error " + localIOException.getMessage());
        int i = 0;
      }
      paramInputStream = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
    }
    return paramInputStream;
  }

  public static Bitmap b(Context paramContext, Bitmap paramBitmap)
  {
    int j = 195;
    if (paramBitmap == null)
      return paramBitmap;
    paramBitmap.getWidth();
    paramBitmap.getHeight();
    int i;
    switch (a(paramContext))
    {
    default:
      i = 1080;
      j = 390;
    case 120:
    case 160:
    case 240:
    case 320:
    case 480:
    }
    while (true)
    {
      return Bitmap.createScaledBitmap(paramBitmap, i, j, true);
      i = 540;
      continue;
      i = 540;
      continue;
      j = 260;
      i = 720;
      continue;
      j = 260;
      i = 720;
      continue;
      i = 1080;
      j = 390;
    }
  }

  public static Bitmap c(Context paramContext, Bitmap paramBitmap)
  {
    int j = 26;
    int i = 20;
    if (paramBitmap == null)
      return paramBitmap;
    paramBitmap.getWidth();
    paramBitmap.getHeight();
    switch (a(paramContext))
    {
    default:
      i = 38;
      j = 38;
    case 120:
    case 160:
    case 240:
    case 320:
    case 480:
    }
    while (true)
    {
      return Bitmap.createScaledBitmap(paramBitmap, j, i, true);
      j = 20;
      continue;
      j = 20;
      continue;
      i = 26;
      continue;
      i = 26;
      continue;
      i = 38;
      j = 38;
    }
  }

  private static Bitmap d(Context paramContext, Bitmap paramBitmap)
  {
    try
    {
      paramBitmap = a(paramContext, paramBitmap);
      paramContext = a(paramContext, "lightapp_baidu_logo", "http://bs.baidu.com/lapp-runtime/picture/runtime_baidu.png", true);
      paramContext = BitmapFactory.decodeByteArray(paramContext, 0, paramContext.length);
      paramContext = a(new LayerDrawable(new Drawable[] { new BitmapDrawable(paramBitmap), new BitmapDrawable(paramContext) }), paramBitmap.getWidth(), paramBitmap.getHeight());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.a("ShortcutUtils", paramContext);
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.f
 * JD-Core Version:    0.6.2
 */