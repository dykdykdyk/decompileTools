package com.nut.blehunter.entity;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.nut.blehunter.d.c;
import com.nut.blehunter.provider.k;
import com.nut.blehunter.service.NutTrackerService;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public final class m
{
  private static m a;
  private volatile User b;

  public static m a()
  {
    try
    {
      if (a == null)
        a = new m();
      m localm = a;
      return localm;
    }
    finally
    {
    }
  }

  private static boolean a(int paramInt)
  {
    return (paramInt >> b(Calendar.getInstance().get(7)) & 0x1) == 1;
  }

  private static int b(int paramInt)
  {
    switch (paramInt)
    {
    case 2:
    default:
      return 0;
    case 1:
      return 6;
    case 3:
      return 1;
    case 4:
      return 2;
    case 5:
      return 3;
    case 6:
      return 4;
    case 7:
    }
    return 5;
  }

  public final void a(Context paramContext, User paramUser)
  {
    try
    {
      paramUser.k = ((int)c.a());
      a(paramUser);
      if (paramContext != null)
      {
        paramUser = new Intent(paramContext, NutTrackerService.class);
        paramUser.setAction("com.nutspace.action.execute.user.api");
        paramContext.startService(paramUser);
      }
      return;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a(Context paramContext, boolean paramBoolean)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      try
      {
        paramContext = paramContext.getApplicationContext().getSharedPreferences("foreign_user_status", 0).edit();
        paramContext.putBoolean("foreign_user", paramBoolean);
        paramContext.commit();
      }
      finally
      {
      }
    }
  }

  public final void a(User paramUser)
  {
    try
    {
      if ((paramUser.m == 0) || (paramUser.m == 2))
        paramUser.m = 3;
      if (paramUser.m > 30)
        paramUser.m = 30;
      if (!paramUser.f())
        paramUser.d();
      this.b = paramUser;
      k.b().a(paramUser);
      return;
    }
    finally
    {
    }
    throw paramUser;
  }

  public final boolean a(Context paramContext)
  {
    User localUser = b();
    return (paramContext != null) && (localUser != null) && (paramContext.getString(2131100178).equals(localUser.b));
  }

  public final User b()
  {
    try
    {
      if (this.b == null)
        this.b = k.b().c();
      User localUser = this.b;
      return localUser;
    }
    finally
    {
    }
  }

  public final boolean b(Context paramContext)
  {
    try
    {
      boolean bool = paramContext.getApplicationContext().getSharedPreferences("foreign_user_status", 0).getBoolean("foreign_user", false);
      return bool;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  public final boolean c()
  {
    User localUser = b();
    return (localUser != null) && (!TextUtils.isEmpty(localUser.a));
  }

  public final void d()
  {
    this.b = null;
    k.b().d();
  }

  public final boolean e()
  {
    Object localObject1 = b();
    if ((((User)localObject1).r == null) || (((User)localObject1).r.a == 0) || (((User)localObject1).r.b == null) || (((User)localObject1).r.b.isEmpty()))
    {
      break label67;
      break label67;
      label50: return false;
    }
    else
    {
      localObject1 = this.b.r.b.iterator();
    }
    while (true)
    {
      label67: if (!((Iterator)localObject1).hasNext())
        break label50;
      Object localObject2 = (Silence)((Iterator)localObject1).next();
      if (((Silence)localObject2).d.isEmpty())
        break;
      RepeatTime localRepeatTime = (RepeatTime)((Silence)localObject2).d.get(0);
      if (localRepeatTime == null)
        break;
      int i = localRepeatTime.b;
      int j = ((Silence)localObject2).b;
      int k = ((Silence)localObject2).c;
      localObject2 = Calendar.getInstance();
      int m = ((Calendar)localObject2).get(11) * 3600 + ((Calendar)localObject2).get(12) * 60 + ((Calendar)localObject2).get(13);
      boolean bool;
      if ((m < 0) || (j < 0) || (k < 0))
        bool = false;
      while (bool)
      {
        return true;
        if (k < j)
        {
          if (m >= j)
          {
            bool = a(i);
          }
          else if (m <= k)
          {
            ((Calendar)localObject2).setTimeInMillis(((Calendar)localObject2).getTimeInMillis() - 86400000L);
            if ((i >> b(((Calendar)localObject2).get(7)) & 0x1) == 1)
            {
              bool = true;
              continue;
            }
            bool = false;
          }
        }
        else if ((a(i)) && (m > j) && (m < k))
        {
          bool = true;
        }
        else
        {
          bool = false;
          continue;
          bool = false;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.m
 * JD-Core Version:    0.6.2
 */