package rx.f;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import rx.aa;
import rx.exceptions.e;

public final class c
  implements aa
{
  public volatile boolean a;
  private Set<aa> b;

  public final void a(aa paramaa)
  {
    if (paramaa.b())
      return;
    if (!this.a)
      try
      {
        if (!this.a)
        {
          if (this.b == null)
            this.b = new HashSet(4);
          this.b.add(paramaa);
          return;
        }
      }
      finally
      {
      }
    paramaa.n_();
  }

  public final void b(aa paramaa)
  {
    if (!this.a)
      try
      {
        if ((this.a) || (this.b == null))
          return;
        boolean bool = this.b.remove(paramaa);
        if (bool)
        {
          paramaa.n_();
          return;
        }
      }
      finally
      {
      }
  }

  public final boolean b()
  {
    return this.a;
  }

  public final void n_()
  {
    ArrayList localArrayList = null;
    if (!this.a)
      label111: 
      while (true)
      {
        try
        {
          if (this.a)
            return;
          this.a = true;
          Object localObject = this.b;
          this.b = null;
          if (localObject == null)
            break;
          localObject = ((Collection)localObject).iterator();
          if (((Iterator)localObject).hasNext())
          {
            aa localaa = (aa)((Iterator)localObject).next();
            try
            {
              localaa.n_();
            }
            catch (Throwable localThrowable)
            {
              if (localArrayList != null)
                break label111;
            }
            localArrayList = new ArrayList();
            localArrayList.add(localThrowable);
            continue;
          }
        }
        finally
        {
        }
        e.a(localList);
        return;
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.f.c
 * JD-Core Version:    0.6.2
 */