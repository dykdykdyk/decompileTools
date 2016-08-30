package rx.c.d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.aa;
import rx.exceptions.e;

public final class s
  implements aa
{
  public LinkedList<aa> a;
  public volatile boolean b;

  public s()
  {
  }

  public s(aa paramaa)
  {
    this.a = new LinkedList();
    this.a.add(paramaa);
  }

  public s(aa[] paramArrayOfaa)
  {
    this.a = new LinkedList(Arrays.asList(paramArrayOfaa));
  }

  public final void a(aa paramaa)
  {
    if (paramaa.b())
      return;
    if (!this.b)
      try
      {
        if (!this.b)
        {
          LinkedList localLinkedList2 = this.a;
          LinkedList localLinkedList1 = localLinkedList2;
          if (localLinkedList2 == null)
          {
            localLinkedList1 = new LinkedList();
            this.a = localLinkedList1;
          }
          localLinkedList1.add(paramaa);
          return;
        }
      }
      finally
      {
      }
    paramaa.n_();
  }

  public final boolean b()
  {
    return this.b;
  }

  public final void n_()
  {
    ArrayList localArrayList = null;
    if (!this.b)
      label111: 
      while (true)
      {
        try
        {
          if (this.b)
            return;
          this.b = true;
          Object localObject = this.a;
          this.a = null;
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
 * Qualified Name:     rx.c.d.s
 * JD-Core Version:    0.6.2
 */