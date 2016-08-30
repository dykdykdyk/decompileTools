package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.y;

public final class k extends a
{
  static final ComponentName c = new ComponentName("com.twitter.android", "com.twitter.android.SingleSignOnActivity");

  public k(TwitterAuthConfig paramTwitterAuthConfig, f<y> paramf, int paramInt)
  {
    super(paramTwitterAuthConfig, paramf, paramInt);
  }

  public static boolean a(Context paramContext)
  {
    return a(paramContext.getPackageManager());
  }

  private static boolean a(PackageManager paramPackageManager)
  {
    boolean bool2 = false;
    try
    {
      paramPackageManager = paramPackageManager.getPackageInfo("com.twitter.android", 64);
      paramPackageManager = paramPackageManager.signatures;
      int j = paramPackageManager.length;
      int i = 0;
      while (true)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if ("3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b".equals(paramPackageManager[i].toCharsString()))
            bool1 = true;
        }
        else
          return bool1;
        i += 1;
      }
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
    }
    return false;
  }

  // ERROR //
  private boolean b(Activity paramActivity)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 72	android/app/Activity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_2
    //   5: aload_2
    //   6: invokestatic 37	com/twitter/sdk/android/core/identity/k:a	(Landroid/content/pm/PackageManager;)Z
    //   9: ifne +18 -> 27
    //   12: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   15: ldc 79
    //   17: ldc 81
    //   19: aconst_null
    //   20: invokeinterface 86 4 0
    //   25: iconst_0
    //   26: ireturn
    //   27: aload_2
    //   28: getstatic 20	com/twitter/sdk/android/core/identity/k:c	Landroid/content/ComponentName;
    //   31: iconst_0
    //   32: invokevirtual 90	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   35: pop
    //   36: aload_0
    //   37: getfield 93	com/twitter/sdk/android/core/identity/a:b	Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    //   40: astore_2
    //   41: new 95	android/content/Intent
    //   44: dup
    //   45: invokespecial 97	android/content/Intent:<init>	()V
    //   48: getstatic 20	com/twitter/sdk/android/core/identity/k:c	Landroid/content/ComponentName;
    //   51: invokevirtual 101	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   54: astore_3
    //   55: aload_3
    //   56: ldc 103
    //   58: aload_2
    //   59: getfield 108	com/twitter/sdk/android/core/TwitterAuthConfig:a	Ljava/lang/String;
    //   62: invokevirtual 112	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   65: ldc 114
    //   67: aload_2
    //   68: getfield 116	com/twitter/sdk/android/core/TwitterAuthConfig:b	Ljava/lang/String;
    //   71: invokevirtual 112	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   74: pop
    //   75: aload_1
    //   76: aload_3
    //   77: aload_0
    //   78: getfield 119	com/twitter/sdk/android/core/identity/k:a	I
    //   81: invokevirtual 123	android/app/Activity:startActivityForResult	(Landroid/content/Intent;I)V
    //   84: iconst_1
    //   85: ireturn
    //   86: astore_1
    //   87: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   90: ldc 79
    //   92: ldc 125
    //   94: aconst_null
    //   95: invokeinterface 86 4 0
    //   100: iconst_0
    //   101: ireturn
    //   102: astore_1
    //   103: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   106: ldc 79
    //   108: ldc 127
    //   110: aload_1
    //   111: invokeinterface 86 4 0
    //   116: iconst_0
    //   117: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   27	36	86	android/content/pm/PackageManager$NameNotFoundException
    //   75	84	102	java/lang/Exception
  }

  public final boolean a(Activity paramActivity)
  {
    return b(paramActivity);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.k
 * JD-Core Version:    0.6.2
 */