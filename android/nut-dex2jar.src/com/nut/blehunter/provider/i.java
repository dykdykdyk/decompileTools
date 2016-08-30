package com.nut.blehunter.provider;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.nut.blehunter.d.c;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.LosingRecord;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.NutConfig;
import com.nut.blehunter.entity.PositionRecord;
import com.nut.blehunter.entity.ShareUserInfo;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.WechatIdentifier;
import com.nut.blehunter.service.NutTrackerService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class i extends a
{
  public static final String[] b = { "_id", "device_id", "create_time", "description", "devicePwLsb", "devicePwMsb", "product_id", "latitude", "longitude", "mode", "name", "pic_url", "sync_server_state", "status", "tag_id", "two_way_anti_lost", "update_time", "user_id", "uuid", "lastLosingRecord", "lost_start_size", "lost_success_size", "wechat_identifier", "position_record", "new_hardware_version", "new_firmware_version", "manufacture_name", "disconnect_remind", "reconnection_remind", "remind_time", "is_mine", "shared_user", "disconnect_ringtone", "user", "battery_level" };
  private static i c;

  public static Nut a(Cursor paramCursor)
  {
    Nut localNut = new Nut();
    localNut.I = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    localNut.a = paramCursor.getLong(paramCursor.getColumnIndex("create_time"));
    localNut.b = paramCursor.getLong(paramCursor.getColumnIndex("update_time"));
    localNut.c = paramCursor.getString(paramCursor.getColumnIndex("name"));
    localNut.d = paramCursor.getString(paramCursor.getColumnIndex("devicePwMsb"));
    localNut.e = paramCursor.getString(paramCursor.getColumnIndex("devicePwLsb"));
    localNut.f = paramCursor.getString(paramCursor.getColumnIndex("uuid"));
    localNut.J = paramCursor.getInt(paramCursor.getColumnIndex("sync_server_state"));
    localNut.g = paramCursor.getDouble(paramCursor.getColumnIndex("longitude"));
    localNut.h = paramCursor.getDouble(paramCursor.getColumnIndex("latitude"));
    localNut.i = paramCursor.getString(paramCursor.getColumnIndex("pic_url"));
    localNut.j = paramCursor.getString(paramCursor.getColumnIndex("device_id"));
    localNut.y = paramCursor.getInt(paramCursor.getColumnIndex("mode"));
    localNut.l = paramCursor.getString(paramCursor.getColumnIndex("description"));
    localNut.p = paramCursor.getInt(paramCursor.getColumnIndex("product_id"));
    localNut.K = paramCursor.getInt(paramCursor.getColumnIndex("status"));
    localNut.n = paramCursor.getInt(paramCursor.getColumnIndex("two_way_anti_lost"));
    localNut.H = paramCursor.getString(paramCursor.getColumnIndex("user_id"));
    localNut.k = paramCursor.getString(paramCursor.getColumnIndex("tag_id"));
    localNut.o = ((LosingRecord)e.a(paramCursor.getString(paramCursor.getColumnIndex("lastLosingRecord")), LosingRecord.class));
    localNut.F = paramCursor.getInt(paramCursor.getColumnIndex("lost_start_size"));
    localNut.G = paramCursor.getInt(paramCursor.getColumnIndex("lost_success_size"));
    localNut.q = ((WechatIdentifier)e.a(paramCursor.getString(paramCursor.getColumnIndex("wechat_identifier")), WechatIdentifier.class));
    localNut.w = paramCursor.getString(paramCursor.getColumnIndex("new_hardware_version"));
    localNut.v = paramCursor.getString(paramCursor.getColumnIndex("new_firmware_version"));
    localNut.x = paramCursor.getString(paramCursor.getColumnIndex("manufacture_name"));
    localNut.s = paramCursor.getInt(paramCursor.getColumnIndex("disconnect_remind"));
    localNut.t = paramCursor.getInt(paramCursor.getColumnIndex("reconnection_remind"));
    localNut.u = paramCursor.getInt(paramCursor.getColumnIndex("remind_time"));
    boolean bool;
    if (paramCursor.getInt(paramCursor.getColumnIndex("is_mine")) == 1)
    {
      bool = true;
      localNut.E = bool;
      localNut.r = ((PositionRecord)e.a(paramCursor.getString(paramCursor.getColumnIndex("position_record")), PositionRecord.class));
      if (localNut.r != null)
        break label738;
      localNut.r = new PositionRecord();
      localNut.r.b = localNut.b;
      localNut.r.e = localNut.h;
      localNut.r.d = localNut.g;
    }
    while (true)
    {
      localNut.A = e.b(paramCursor.getString(paramCursor.getColumnIndex("shared_user")));
      localNut.D = paramCursor.getInt(paramCursor.getColumnIndex("disconnect_ringtone"));
      localNut.B = ((User)e.a(paramCursor.getString(paramCursor.getColumnIndex("user")), User.class));
      localNut.C = paramCursor.getInt(paramCursor.getColumnIndex("battery_level"));
      return localNut;
      bool = false;
      break;
      label738: if (!localNut.r.a())
      {
        localNut.r.b = localNut.b;
        localNut.r.e = localNut.h;
        localNut.r.d = localNut.g;
      }
    }
  }

  public static void a(Nut paramNut, String paramString, boolean paramBoolean)
  {
    paramNut.E = paramBoolean;
    paramNut.H = paramString;
    if (("BINDING".equals(paramNut.m)) || ("UNLOSING".equals(paramNut.m)))
    {
      paramNut.m = "DISCONNECT";
      paramNut.K = 0;
    }
    paramString = paramNut.m;
    int i = -1;
    switch (paramString.hashCode())
    {
    default:
      switch (i)
      {
      default:
        paramNut.K = 0;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
      break;
    case 1015497884:
    case 609761893:
    case -2043648366:
    case 572152427:
    case -135190679:
    case 67603:
    }
    while (true)
    {
      if (!paramNut.E)
        paramNut.y = 1;
      if ((paramNut.E) && (paramNut.z != null) && (!paramNut.z.isEmpty()))
      {
        paramString = paramNut.z.iterator();
        while (paramString.hasNext())
        {
          NutConfig localNutConfig = (NutConfig)paramString.next();
          if (localNutConfig.a == 0)
          {
            paramNut.s = localNutConfig.c;
            paramNut.u = localNutConfig.e;
            paramNut.t = localNutConfig.d;
            paramNut.n = localNutConfig.b;
            paramNut.D = localNutConfig.f;
          }
        }
      }
      return;
      if (!paramString.equals("DISCONNECT"))
        break;
      i = 0;
      break;
      if (!paramString.equals("BINDING"))
        break;
      i = 1;
      break;
      if (!paramString.equals("LOSING"))
        break;
      i = 2;
      break;
      if (!paramString.equals("UNLOSING"))
        break;
      i = 3;
      break;
      if (!paramString.equals("FINDING"))
        break;
      i = 4;
      break;
      if (!paramString.equals("DFU"))
        break;
      i = 5;
      break;
      paramNut.K = 0;
      continue;
      paramNut.K = 1;
      continue;
      paramNut.K = 2;
      continue;
      paramNut.K = 3;
      continue;
      paramNut.K = 6;
      continue;
      paramNut.K = 7;
    }
  }

  public static i b()
  {
    try
    {
      if (c == null)
        c = new i();
      i locali = c;
      return locali;
    }
    finally
    {
    }
  }

  public static void b(Nut paramNut)
  {
    switch (paramNut.K)
    {
    case 4:
    case 5:
    default:
      paramNut.m = "DISCONNECT";
      return;
    case 0:
      paramNut.m = "DISCONNECT";
      return;
    case 1:
      paramNut.m = "BINDING";
      return;
    case 2:
      paramNut.m = "LOSING";
      return;
    case 3:
      paramNut.m = "UNLOSING";
      return;
    case 6:
      paramNut.m = "FINDING";
      return;
    case 7:
    }
    paramNut.m = "DFU";
  }

  private void e(Nut paramNut)
  {
    Intent localIntent = new Intent(this.a, NutTrackerService.class);
    localIntent.setAction("com.nutspace.action.execute.nut.api");
    localIntent.putExtra("nut", paramNut);
    this.a.startService(localIntent);
  }

  private static ContentValues f(Nut paramNut)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("create_time", Long.valueOf(paramNut.a));
    localContentValues.put("update_time", Long.valueOf(paramNut.b));
    localContentValues.put("device_id", paramNut.j);
    localContentValues.put("devicePwLsb", paramNut.e);
    localContentValues.put("devicePwMsb", paramNut.d);
    localContentValues.put("mode", Integer.valueOf(paramNut.y));
    localContentValues.put("name", paramNut.c);
    localContentValues.put("latitude", Double.valueOf(paramNut.h));
    localContentValues.put("longitude", Double.valueOf(paramNut.g));
    localContentValues.put("pic_url", paramNut.i);
    localContentValues.put("sync_server_state", Integer.valueOf(paramNut.J));
    localContentValues.put("uuid", paramNut.f);
    localContentValues.put("description", paramNut.l);
    localContentValues.put("product_id", Integer.valueOf(paramNut.p));
    localContentValues.put("status", Integer.valueOf(paramNut.K));
    localContentValues.put("two_way_anti_lost", Integer.valueOf(paramNut.n));
    localContentValues.put("user_id", paramNut.H);
    localContentValues.put("tag_id", paramNut.k);
    localContentValues.put("lastLosingRecord", e.a().toJson(paramNut.o));
    localContentValues.put("lost_start_size", Integer.valueOf(paramNut.F));
    localContentValues.put("lost_success_size", Integer.valueOf(paramNut.G));
    localContentValues.put("wechat_identifier", e.a().toJson(paramNut.q));
    localContentValues.put("position_record", e.a().toJson(paramNut.r));
    if (!TextUtils.isEmpty(paramNut.w))
      localContentValues.put("new_hardware_version", paramNut.w);
    if (!TextUtils.isEmpty(paramNut.v))
      localContentValues.put("new_firmware_version", paramNut.v);
    if (!TextUtils.isEmpty(paramNut.x))
      localContentValues.put("manufacture_name", paramNut.x);
    localContentValues.put("disconnect_remind", Integer.valueOf(paramNut.s));
    localContentValues.put("reconnection_remind", Integer.valueOf(paramNut.t));
    localContentValues.put("remind_time", Integer.valueOf(paramNut.u));
    if (paramNut.E);
    for (int i = 1; ; i = 0)
    {
      localContentValues.put("is_mine", Integer.valueOf(i));
      localContentValues.put("shared_user", e.a().toJson(paramNut.A));
      localContentValues.put("disconnect_ringtone", Integer.valueOf(paramNut.D));
      localContentValues.put("user", e.a().toJson(paramNut.B));
      localContentValues.put("battery_level", Integer.valueOf(paramNut.C));
      return localContentValues;
    }
  }

  protected final Uri a()
  {
    return d.a;
  }

  public final void a(Nut paramNut)
  {
    if (!a(paramNut.j))
    {
      c(paramNut);
      e(paramNut);
    }
  }

  public final void a(Nut paramNut, boolean paramBoolean)
  {
    if (a(paramNut.j))
    {
      paramNut.b = ((int)c.a());
      if ((paramBoolean) && (paramNut.J == 0))
        paramNut.J = 2;
      if (paramNut.u == 0)
      {
        paramNut.u = 5;
        paramNut.s = 1;
      }
      d(paramNut);
      if (paramBoolean)
        e(paramNut);
    }
  }

  public final void a(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("sync_server_state", Integer.valueOf(paramInt));
    a(localContentValues, "device_id = ? AND sync_server_state != ? ", new String[] { paramString, "1" });
  }

  public final void a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("pic_url", paramString2);
    a(localContentValues, "device_id = ? ", new String[] { paramString1 });
  }

  public final void a(String paramString, List<ShareUserInfo> paramList)
  {
    String str2 = "";
    String str1 = str2;
    if (paramList != null)
    {
      str1 = str2;
      if (paramList.size() > 0)
        str1 = e.a().toJson(paramList);
    }
    paramList = new ContentValues();
    paramList.put("shared_user", str1);
    a(paramList, "device_id = ? AND sync_server_state != ? ", new String[] { paramString, "1" });
  }

  public final void a(List<Nut> paramList, boolean paramBoolean)
  {
    if ((paramList == null) || (paramList.size() == 0));
    do
    {
      do
      {
        return;
        localObject = k.b().c();
      }
      while (localObject == null);
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        a((Nut)localIterator.next(), ((User)localObject).a, paramBoolean);
    }
    while ((paramList == null) || (paramList.size() == 0));
    Object localObject = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
      ((List)localObject).add(f((Nut)paramList.next()));
    a((ContentValues[])((List)localObject).toArray(new ContentValues[((List)localObject).size()]));
  }

  public final boolean a(int paramInt, String paramString1, String paramString2)
  {
    Object localObject = k.b().c();
    if (localObject == null);
    do
    {
      return true;
      paramString1 = a(b, "sync_server_state != ? AND user_id = ? AND product_id = ? AND device_id != ?", new String[] { "1", ((User)localObject).a, String.valueOf(paramInt), paramString1 }, "update_time DESC");
    }
    while (paramString1 == null);
    try
    {
      if (paramString1.getCount() > 0)
        while (paramString1.moveToNext())
        {
          localObject = paramString1.getString(paramString1.getColumnIndex("new_firmware_version"));
          paramInt = Integer.parseInt(paramString2);
          int i = Integer.parseInt((String)localObject);
          if (paramInt > i)
            return false;
        }
      return true;
    }
    catch (NumberFormatException paramString2)
    {
      paramString2.printStackTrace();
      return true;
    }
    finally
    {
      paramString1.close();
    }
    throw paramString2;
  }

  public final boolean a(String paramString)
  {
    boolean bool = true;
    if (TextUtils.isEmpty(paramString));
    do
    {
      return false;
      localObject1 = k.b().c();
    }
    while (localObject1 == null);
    Object localObject1 = ((User)localObject1).a;
    paramString = a(new String[] { "_id" }, "device_id = ? AND sync_server_state != ? AND user_id = ?", new String[] { paramString, "1", localObject1 }, null);
    if (paramString != null);
    while (true)
      try
      {
        int i = paramString.getCount();
        if (i > 0)
          return bool;
        bool = false;
      }
      finally
      {
        paramString.close();
      }
  }

  public final void b(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("disconnect_ringtone", Integer.valueOf(paramInt));
    a(localContentValues, "device_id = ? ", new String[] { paramString });
  }

  public final boolean b(String paramString)
  {
    Object localObject = h();
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Nut localNut = (Nut)((Iterator)localObject).next();
        if ((!TextUtils.isEmpty(localNut.c)) && (localNut.c.equals(paramString)))
          return true;
      }
    }
    return false;
  }

  public final Nut c(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = k.b().c();
    if ((TextUtils.isEmpty(paramString)) || (localObject2 == null));
    do
    {
      return null;
      localObject2 = a(b, "device_id = ? AND sync_server_state != ? AND user_id = ?", new String[] { paramString, "1", ((User)localObject2).a }, null);
    }
    while (localObject2 == null);
    paramString = localObject1;
    try
    {
      if (((Cursor)localObject2).getCount() > 0)
      {
        paramString = localObject1;
        if (((Cursor)localObject2).moveToFirst())
          paramString = a((Cursor)localObject2);
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
    throw paramString;
  }

  public final void c(Nut paramNut)
  {
    a(f(paramNut));
  }

  public final boolean c()
  {
    boolean bool = true;
    Object localObject1 = k.b().c();
    if (localObject1 == null)
      return false;
    localObject1 = a(b, "sync_server_state != ? AND user_id = ? AND status = ? AND mode = ?", new String[] { "1", ((User)localObject1).a, "0", "0" }, null);
    if (localObject1 != null);
    while (true)
      try
      {
        int i = ((Cursor)localObject1).getCount();
        if (i > 0)
          return bool;
        bool = false;
      }
      finally
      {
        ((Cursor)localObject1).close();
      }
  }

  public final Nut d(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = k.b().c();
    if ((TextUtils.isEmpty(paramString)) || (localObject2 == null));
    do
    {
      return null;
      localObject2 = a(b, "tag_id = ? AND sync_server_state != ? AND user_id = ?", new String[] { paramString, "1", ((User)localObject2).a }, null);
    }
    while (localObject2 == null);
    paramString = localObject1;
    try
    {
      if (((Cursor)localObject2).getCount() > 0)
      {
        paramString = localObject1;
        if (((Cursor)localObject2).moveToFirst())
          paramString = a((Cursor)localObject2);
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
    throw paramString;
  }

  public final List<Nut> d()
  {
    Object localObject = k.b().c();
    if (localObject == null);
    do
    {
      return null;
      localObject = a(b, "sync_server_state != ? AND user_id = ?", new String[] { "0", ((User)localObject).a }, null);
    }
    while (localObject == null);
    try
    {
      if (((Cursor)localObject).getCount() <= 0)
        break label101;
      ArrayList localArrayList = new ArrayList();
      while (((Cursor)localObject).moveToNext())
        localArrayList.add(a((Cursor)localObject));
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    ((Cursor)localObject).close();
    return localList;
    label101: ((Cursor)localObject).close();
    return null;
  }

  public final void d(Nut paramNut)
  {
    a(f(paramNut), "device_id = ? AND sync_server_state != ? ", new String[] { paramNut.j, "1" });
  }

  public final Nut e(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = k.b().c();
    if ((TextUtils.isEmpty(paramString)) || (localObject2 == null));
    do
    {
      return null;
      localObject2 = a(b, "uuid = ? AND sync_server_state != ? AND user_id = ?", new String[] { paramString, "1", ((User)localObject2).a }, null);
    }
    while (localObject2 == null);
    paramString = localObject1;
    try
    {
      if (((Cursor)localObject2).getCount() > 0)
      {
        paramString = localObject1;
        if (((Cursor)localObject2).moveToFirst())
          paramString = a((Cursor)localObject2);
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
    throw paramString;
  }

  public final List<Nut> e()
  {
    Object localObject = k.b().c();
    if (localObject == null);
    do
    {
      return null;
      localObject = a(b, "(status = ? OR status = ? ) AND user_id = ?", new String[] { "6", "2", ((User)localObject).a }, null);
    }
    while (localObject == null);
    try
    {
      if (((Cursor)localObject).getCount() <= 0)
        break label107;
      ArrayList localArrayList = new ArrayList();
      while (((Cursor)localObject).moveToNext())
        localArrayList.add(a((Cursor)localObject));
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    ((Cursor)localObject).close();
    return localList;
    label107: ((Cursor)localObject).close();
    return null;
  }

  public final String f()
  {
    Object localObject3 = null;
    Object localObject1 = k.b().c();
    if (localObject1 == null);
    Cursor localCursor;
    do
    {
      return localObject3;
      localCursor = a(b, "sync_server_state != ? AND user_id = ?", new String[] { "0", ((User)localObject1).a }, null);
      localObject1 = "";
      localObject3 = localObject1;
    }
    while (localCursor == null);
    localObject3 = localObject1;
    try
    {
      if (localCursor.getCount() > 0)
        while (true)
        {
          localObject3 = localObject1;
          if (!localCursor.moveToNext())
            break;
          localObject3 = a(localCursor);
          if (localCursor.isLast())
            localObject1 = (String)localObject1 + "\"" + ((Nut)localObject3).c + "\"";
          else
            localObject1 = (String)localObject1 + "\"" + ((Nut)localObject3).c + "\",";
        }
      return localObject3;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final List<ShareUserInfo> f(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = k.b().c();
    if (localObject2 == null);
    do
    {
      return null;
      localObject2 = ((User)localObject2).a;
      localObject2 = a(new String[] { "shared_user" }, "device_id = ? AND sync_server_state != ? AND user_id = ?", new String[] { paramString, "1", localObject2 }, null);
    }
    while (localObject2 == null);
    paramString = localObject1;
    try
    {
      if (((Cursor)localObject2).getCount() > 0)
      {
        paramString = localObject1;
        if (((Cursor)localObject2).moveToFirst())
          paramString = e.b(((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("shared_user")));
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
    throw paramString;
  }

  public final void g()
  {
    a(null, null);
  }

  public final void g(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(0));
    a(localContentValues, "device_id = ? AND status = ? AND sync_server_state != ? ", new String[] { paramString, "1", "1" });
  }

  public final List<Nut> h()
  {
    Object localObject = k.b().c();
    if (localObject == null);
    do
    {
      return null;
      localObject = a(b, "sync_server_state != ? AND user_id = ?", new String[] { "1", ((User)localObject).a }, "update_time DESC");
    }
    while (localObject == null);
    try
    {
      if (((Cursor)localObject).getCount() <= 0)
        break label103;
      ArrayList localArrayList = new ArrayList();
      while (((Cursor)localObject).moveToNext())
        localArrayList.add(a((Cursor)localObject));
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    ((Cursor)localObject).close();
    return localList;
    label103: ((Cursor)localObject).close();
    return null;
  }

  public final void h(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(7));
    a(localContentValues, "device_id = ? AND sync_server_state != ? ", new String[] { paramString, "1" });
  }

  public final List<Nut> i()
  {
    Object localObject = k.b().c();
    if (localObject == null);
    do
    {
      return null;
      localObject = a(b, "sync_server_state != ? AND user_id = ? AND mode = ?", new String[] { "1", ((User)localObject).a, "1" }, "update_time DESC");
    }
    while (localObject == null);
    try
    {
      if (((Cursor)localObject).getCount() <= 0)
        break label109;
      ArrayList localArrayList = new ArrayList();
      while (((Cursor)localObject).moveToNext())
        localArrayList.add(a((Cursor)localObject));
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    ((Cursor)localObject).close();
    return localList;
    label109: ((Cursor)localObject).close();
    return null;
  }

  public final void i(String paramString)
  {
    a("device_id = ?", new String[] { paramString });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.provider.i
 * JD-Core Version:    0.6.2
 */