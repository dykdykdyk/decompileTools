package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class fh
{
  Set<String> a = new HashSet();
  private Context b;

  public fh(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a()
  {
    if (!this.a.isEmpty())
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        localStringBuilder.append((String)localIterator.next());
        localStringBuilder.append(',');
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
      this.b.getSharedPreferences("umeng_general_config", 0).edit().putString("invld_id", localStringBuilder.toString()).commit();
    }
  }

  public final void b()
  {
    int i = 0;
    Object localObject = this.b.getSharedPreferences("umeng_general_config", 0).getString("invld_id", null);
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = ((String)localObject).split(",");
      if (localObject != null)
      {
        int j = localObject.length;
        while (i < j)
        {
          CharSequence localCharSequence = localObject[i];
          if (!TextUtils.isEmpty(localCharSequence))
            this.a.add(localCharSequence);
          i += 1;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fh
 * JD-Core Version:    0.6.2
 */