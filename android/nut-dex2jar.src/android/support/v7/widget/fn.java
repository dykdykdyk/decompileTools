package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.b.a;
import android.support.v4.widget.ah;
import android.support.v4.widget.j;
import android.support.v7.b.b;
import android.support.v7.b.g;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

final class fn extends ah
  implements View.OnClickListener
{
  int j = 1;
  private final SearchManager k = (SearchManager)this.d.getSystemService("search");
  private final SearchView l;
  private final SearchableInfo m;
  private final Context n;
  private final WeakHashMap<String, Drawable.ConstantState> o;
  private final int p;
  private boolean q = false;
  private ColorStateList r;
  private int s = -1;
  private int t = -1;
  private int u = -1;
  private int v = -1;
  private int w = -1;
  private int x = -1;

  public fn(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.getSuggestionRowLayout());
    this.l = paramSearchView;
    this.m = paramSearchableInfo;
    this.p = paramSearchView.getSuggestionCommitIconResId();
    this.n = paramContext;
    this.o = paramWeakHashMap;
  }

  private Drawable a(ComponentName paramComponentName)
  {
    Object localObject = this.d.getPackageManager();
    ActivityInfo localActivityInfo;
    int i;
    try
    {
      localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      i = localActivityInfo.getIconResource();
      if (i == 0)
        return null;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
      return null;
    }
    localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, localActivityInfo.applicationInfo);
    if (localObject == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return localObject;
  }

  private Drawable a(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (bool)
        try
        {
          Drawable localDrawable1 = b(paramUri);
          return localDrawable1;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          throw new FileNotFoundException("Resource does not exist: " + paramUri);
        }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon not found: " + paramUri + ", " + localFileNotFoundException.getMessage());
      return null;
    }
    InputStream localInputStream = this.n.getContentResolver().openInputStream(paramUri);
    if (localInputStream == null)
      throw new FileNotFoundException("Failed to open " + paramUri);
    try
    {
      Drawable localDrawable2 = Drawable.createFromStream(localInputStream, null);
      try
      {
        localInputStream.close();
        return localDrawable2;
      }
      catch (IOException localIOException1)
      {
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException1);
        return localDrawable2;
      }
    }
    finally
    {
    }
    try
    {
      localIOException1.close();
      throw localObject;
    }
    catch (IOException localIOException2)
    {
      while (true)
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException2);
    }
  }

  private Drawable a(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.length() == 0) || ("0".equals(paramString)))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      try
      {
        int i = Integer.parseInt(paramString);
        String str = "android.resource://" + this.n.getPackageName() + "/" + i;
        localDrawable = b(str);
        localObject1 = localDrawable;
        if (localDrawable == null)
        {
          localObject1 = a.a(this.n, i);
          a(str, (Drawable)localObject1);
          return localObject1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Drawable localDrawable = b(paramString);
        Object localObject2 = localDrawable;
        if (localDrawable == null)
        {
          localObject2 = a(Uri.parse(paramString));
          a(paramString, (Drawable)localObject2);
          return localObject2;
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
      }
    }
    return null;
  }

  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1)
      return null;
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }

  private static String a(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }

  private static void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }

  private static void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }

  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null)
      this.o.put(paramString, paramDrawable.getConstantState());
  }

  private Drawable b(Uri paramUri)
    throws FileNotFoundException
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str))
      throw new FileNotFoundException("No authority: " + paramUri);
    Resources localResources;
    List localList;
    try
    {
      localResources = this.d.getPackageManager().getResourcesForApplication(str);
      localList = paramUri.getPathSegments();
      if (localList == null)
        throw new FileNotFoundException("No path: " + paramUri);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    int i = localList.size();
    if (i == 1);
    while (true)
    {
      try
      {
        i = Integer.parseInt((String)localList.get(0));
        if (i != 0)
          break;
        throw new FileNotFoundException("No resource found for: " + paramUri);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
      if (i == 2)
        i = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), localNumberFormatException);
      else
        throw new FileNotFoundException("More than two path segments: " + paramUri);
    }
    return localResources.getDrawable(i);
  }

  private Drawable b(String paramString)
  {
    paramString = (Drawable.ConstantState)this.o.get(paramString);
    if (paramString == null)
      return null;
    return paramString.newDrawable();
  }

  private static void c(Cursor paramCursor)
  {
    if (paramCursor != null);
    for (paramCursor = paramCursor.getExtras(); ; paramCursor = null)
    {
      if ((paramCursor != null) && (paramCursor.getBoolean("in_progress")));
      return;
    }
  }

  public final Cursor a(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    for (paramCharSequence = ""; (this.l.getVisibility() != 0) || (this.l.getWindowVisibility() != 0); paramCharSequence = paramCharSequence.toString())
      return null;
    Object localObject1;
    while (true)
    {
      try
      {
        localObject1 = this.m;
        if (localObject1 != null)
          break label77;
        paramCharSequence = null;
        if (paramCharSequence != null)
        {
          paramCharSequence.getCount();
          return paramCharSequence;
        }
      }
      catch (RuntimeException paramCharSequence)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
      }
      return null;
      label77: localObject2 = ((SearchableInfo)localObject1).getSuggestAuthority();
      if (localObject2 != null)
        break;
      paramCharSequence = null;
    }
    Object localObject2 = new Uri.Builder().scheme("content").authority((String)localObject2).query("").fragment("");
    String str = ((SearchableInfo)localObject1).getSuggestPath();
    if (str != null)
      ((Uri.Builder)localObject2).appendEncodedPath(str);
    ((Uri.Builder)localObject2).appendPath("search_suggest_query");
    str = ((SearchableInfo)localObject1).getSuggestSelection();
    if (str != null)
    {
      localObject1 = new String[1];
      localObject1[0] = paramCharSequence;
    }
    for (paramCharSequence = (CharSequence)localObject1; ; paramCharSequence = null)
    {
      ((Uri.Builder)localObject2).appendQueryParameter("limit", "50");
      localObject1 = ((Uri.Builder)localObject2).build();
      paramCharSequence = this.d.getContentResolver().query((Uri)localObject1, null, str, paramCharSequence, null);
      break;
      ((Uri.Builder)localObject2).appendPath(paramCharSequence);
    }
  }

  public final View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.a(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new fo(paramContext));
    ((ImageView)paramContext.findViewById(g.edit_query)).setImageResource(this.p);
    return paramContext;
  }

  public final void a(Cursor paramCursor)
  {
    if (this.q)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null)
        paramCursor.close();
    }
    while (true)
    {
      return;
      try
      {
        super.a(paramCursor);
        if (paramCursor != null)
        {
          this.s = paramCursor.getColumnIndex("suggest_text_1");
          this.t = paramCursor.getColumnIndex("suggest_text_2");
          this.u = paramCursor.getColumnIndex("suggest_text_2_url");
          this.v = paramCursor.getColumnIndex("suggest_icon_1");
          this.w = paramCursor.getColumnIndex("suggest_icon_2");
          this.x = paramCursor.getColumnIndex("suggest_flags");
          return;
        }
      }
      catch (Exception paramCursor)
      {
        Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
      }
    }
  }

  public final void a(View paramView, Cursor paramCursor)
  {
    Object localObject2 = null;
    fo localfo = (fo)paramView.getTag();
    if (this.x != -1);
    for (int i = paramCursor.getInt(this.x); ; i = 0)
    {
      if (localfo.a != null)
      {
        paramView = a(paramCursor, this.s);
        a(localfo.a, paramView);
      }
      Object localObject1;
      if (localfo.b != null)
      {
        localObject1 = a(paramCursor, this.u);
        if (localObject1 != null)
        {
          if (this.r == null)
          {
            paramView = new TypedValue();
            this.d.getTheme().resolveAttribute(b.textColorSearchUrl, paramView, true);
            this.r = this.d.getResources().getColorStateList(paramView.resourceId);
          }
          paramView = new SpannableString((CharSequence)localObject1);
          paramView.setSpan(new TextAppearanceSpan(null, 0, 0, this.r, null), 0, ((CharSequence)localObject1).length(), 33);
          if (!TextUtils.isEmpty(paramView))
            break label345;
          if (localfo.a != null)
          {
            localfo.a.setSingleLine(false);
            localfo.a.setMaxLines(2);
          }
          label201: a(localfo.b, paramView);
        }
      }
      else
      {
        if (localfo.c != null)
        {
          ImageView localImageView = localfo.c;
          if (this.v != -1)
            break label374;
          paramView = null;
          label235: a(localImageView, paramView, 4);
        }
        if (localfo.d != null)
        {
          localObject1 = localfo.d;
          if (this.w != -1)
            break label519;
        }
      }
      label519: for (paramView = localObject2; ; paramView = a(paramCursor.getString(this.w)))
      {
        a((ImageView)localObject1, paramView, 8);
        if ((this.j != 2) && ((this.j != 1) || ((i & 0x1) == 0)))
          break label537;
        localfo.e.setVisibility(0);
        localfo.e.setTag(localfo.a.getText());
        localfo.e.setOnClickListener(this);
        return;
        paramView = a(paramCursor, this.t);
        break;
        label345: if (localfo.a == null)
          break label201;
        localfo.a.setSingleLine(true);
        localfo.a.setMaxLines(1);
        break label201;
        label374: localObject1 = a(paramCursor.getString(this.v));
        paramView = (View)localObject1;
        if (localObject1 != null)
          break label235;
        paramView = this.m.getSearchActivity();
        String str = paramView.flattenToShortString();
        if (this.o.containsKey(str))
        {
          paramView = (Drawable.ConstantState)this.o.get(str);
          if (paramView == null);
          for (localObject1 = null; ; localObject1 = paramView.newDrawable(this.n.getResources()))
          {
            paramView = (View)localObject1;
            if (localObject1 != null)
              break;
            paramView = this.d.getPackageManager().getDefaultActivityIcon();
            break;
          }
        }
        localObject1 = a(paramView);
        if (localObject1 == null);
        for (paramView = null; ; paramView = ((Drawable)localObject1).getConstantState())
        {
          this.o.put(str, paramView);
          break;
        }
      }
      label537: localfo.e.setVisibility(8);
      return;
    }
  }

  public final CharSequence b(Cursor paramCursor)
  {
    if (paramCursor == null);
    do
    {
      do
      {
        return null;
        String str = a(paramCursor, "suggest_intent_query");
        if (str != null)
          return str;
        if (this.m.shouldRewriteQueryFromData())
        {
          str = a(paramCursor, "suggest_intent_data");
          if (str != null)
            return str;
        }
      }
      while (!this.m.shouldRewriteQueryFromText());
      paramCursor = a(paramCursor, "suggest_text_1");
    }
    while (paramCursor == null);
    return paramCursor;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = a(this.d, this.c, paramViewGroup);
      if (paramViewGroup != null)
        ((fo)paramViewGroup.getTag()).a.setText(paramView.toString());
    }
    return paramViewGroup;
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    c(this.c);
  }

  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    c(this.c);
  }

  public final void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence))
      this.l.setQuery((CharSequence)paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.fn
 * JD-Core Version:    0.6.2
 */