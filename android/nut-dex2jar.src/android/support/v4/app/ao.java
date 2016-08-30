package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class ao
{
  static Rect a(View paramView)
  {
    Rect localRect = new Rect();
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    localRect.set(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight());
    return localRect;
  }

  public static Object a(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null)
      localObject = ((Transition)paramObject).clone();
    return localObject;
  }

  public static void a(Object paramObject, View paramView)
  {
    ((Transition)paramObject).setEpicenterCallback(new ap(a(paramView)));
  }

  public static void a(Object paramObject, View paramView, Map<String, View> paramMap, ArrayList<View> paramArrayList)
  {
    paramObject = (TransitionSet)paramObject;
    paramArrayList.clear();
    paramArrayList.addAll(paramMap.values());
    paramMap = paramObject.getTargets();
    paramMap.clear();
    int n = paramArrayList.size();
    int i = 0;
    while (i < n)
    {
      Object localObject = (View)paramArrayList.get(i);
      int m = paramMap.size();
      if (!a(paramMap, (View)localObject, m))
      {
        paramMap.add(localObject);
        int j = m;
        while (j < paramMap.size())
        {
          localObject = (View)paramMap.get(j);
          if ((localObject instanceof ViewGroup))
          {
            localObject = (ViewGroup)localObject;
            int i1 = ((ViewGroup)localObject).getChildCount();
            int k = 0;
            while (k < i1)
            {
              View localView = ((ViewGroup)localObject).getChildAt(k);
              if (!a(paramMap, localView, m))
                paramMap.add(localView);
              k += 1;
            }
          }
          j += 1;
        }
      }
      i += 1;
    }
    paramArrayList.add(paramView);
    b(paramObject, paramArrayList);
  }

  public static void a(Object paramObject, View paramView, boolean paramBoolean)
  {
    ((Transition)paramObject).excludeTarget(paramView, paramBoolean);
  }

  public static void a(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int i;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      int j = paramObject.getTransitionCount();
      i = 0;
      while (i < j)
      {
        a(paramObject.getTransitionAt(i), paramArrayList);
        i += 1;
      }
    }
    if (!a(paramObject))
    {
      List localList = paramObject.getTargets();
      if ((localList != null) && (localList.size() == paramArrayList.size()) && (localList.containsAll(paramArrayList)))
      {
        i = paramArrayList.size() - 1;
        while (i >= 0)
        {
          paramObject.removeTarget((View)paramArrayList.get(i));
          i -= 1;
        }
      }
    }
  }

  static void a(ArrayList<View> paramArrayList, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      if (!(paramView instanceof ViewGroup))
        break label61;
      paramView = (ViewGroup)paramView;
      if (!paramView.isTransitionGroup())
        break label33;
      paramArrayList.add(paramView);
    }
    while (true)
    {
      return;
      label33: int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        a(paramArrayList, paramView.getChildAt(i));
        i += 1;
      }
    }
    label61: paramArrayList.add(paramView);
  }

  public static void a(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = paramView.getTransitionName();
      if (str != null)
        paramMap.put(str, paramView);
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        int i = 0;
        while (i < j)
        {
          a(paramMap, paramView.getChildAt(i));
          i += 1;
        }
      }
    }
  }

  private static boolean a(Transition paramTransition)
  {
    return (!a(paramTransition.getTargetIds())) || (!a(paramTransition.getTargetNames())) || (!a(paramTransition.getTargetTypes()));
  }

  private static boolean a(List paramList)
  {
    return (paramList == null) || (paramList.isEmpty());
  }

  private static boolean a(List<View> paramList, View paramView, int paramInt)
  {
    boolean bool2 = false;
    int i = 0;
    while (true)
    {
      boolean bool1 = bool2;
      if (i < paramInt)
      {
        if (paramList.get(i) == paramView)
          bool1 = true;
      }
      else
        return bool1;
      i += 1;
    }
  }

  public static void b(Object paramObject, ArrayList<View> paramArrayList)
  {
    int i = 0;
    paramObject = (Transition)paramObject;
    int j;
    if ((paramObject instanceof TransitionSet))
    {
      paramObject = (TransitionSet)paramObject;
      j = paramObject.getTransitionCount();
      while (i < j)
      {
        b(paramObject.getTransitionAt(i), paramArrayList);
        i += 1;
      }
    }
    if ((!a(paramObject)) && (a(paramObject.getTargets())))
    {
      j = paramArrayList.size();
      i = 0;
      while (i < j)
      {
        paramObject.addTarget((View)paramArrayList.get(i));
        i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ao
 * JD-Core Version:    0.6.2
 */