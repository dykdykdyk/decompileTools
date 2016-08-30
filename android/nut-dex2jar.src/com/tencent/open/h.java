package com.tencent.open;

import java.lang.reflect.Method;
import java.util.List;

public class h
{
  public final void a(String paramString, List<String> paramList, g paramg)
  {
    Method[] arrayOfMethod = getClass().getDeclaredMethods();
    Object localObject2 = null;
    int j = arrayOfMethod.length;
    int i = 0;
    while (true)
    {
      Object localObject1 = localObject2;
      if (i < j)
      {
        localObject1 = arrayOfMethod[i];
        if ((!((Method)localObject1).getName().equals(paramString)) || (((Method)localObject1).getParameterTypes().length != paramList.size()));
      }
      else
      {
        if (localObject1 != null);
        while (true)
        {
          try
          {
            switch (paramList.size())
            {
            case 0:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0), paramList.get(1), paramList.get(2), paramList.get(3), paramList.get(4), paramList.get(5) });
              paramList = ((Method)localObject1).getReturnType();
              com.tencent.open.a.h.b("openSDK_LOG.JsBridge", "-->call, result: " + paramString + " | ReturnType: " + paramList.getName());
              if (("void".equals(paramList.getName())) || (paramList == Void.class))
              {
                if (paramg == null)
                  break label564;
                paramg.a();
                return;
                paramString = ((Method)localObject1).invoke(this, new Object[0]);
              }
              break;
            case 1:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0) });
              break;
            case 2:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0), paramList.get(1) });
              break;
            case 3:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0), paramList.get(1), paramList.get(2) });
              break;
            case 4:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0), paramList.get(1), paramList.get(2), paramList.get(3) });
              break;
            case 5:
              paramString = ((Method)localObject1).invoke(this, new Object[] { paramList.get(0), paramList.get(1), paramList.get(2), paramList.get(3), paramList.get(4) });
              continue;
              if ((paramg == null) || (!a()))
                break label564;
              if (paramString == null)
                break label547;
              paramString = paramString.toString();
              paramg.a(paramString);
              return;
            }
          }
          catch (Exception paramString)
          {
            com.tencent.open.a.h.b("openSDK_LOG.JsBridge", "-->handler call mehtod ex. targetMethod: " + localObject1, paramString);
            if (paramg == null)
              break;
          }
          paramg.b();
          return;
          label547: paramString = null;
          continue;
          if (paramg == null)
            break;
          paramg.b();
          return;
        }
        label564: return;
      }
      i += 1;
    }
  }

  public boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.h
 * JD-Core Version:    0.6.2
 */