package io.fabric.sdk.android.services.b;

import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

 enum n
{
  private static final Map<String, n> k;

  static
  {
    HashMap localHashMap = new HashMap(4);
    k = localHashMap;
    localHashMap.put("armeabi-v7a", g);
    k.put("armeabi", f);
    k.put("x86", a);
  }

  static n a()
  {
    Object localObject = Build.CPU_ABI;
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      f.b().a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
      localObject = h;
    }
    n localn;
    do
    {
      return localObject;
      localObject = ((String)localObject).toLowerCase(Locale.US);
      localn = (n)k.get(localObject);
      localObject = localn;
    }
    while (localn != null);
    return h;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.n
 * JD-Core Version:    0.6.2
 */