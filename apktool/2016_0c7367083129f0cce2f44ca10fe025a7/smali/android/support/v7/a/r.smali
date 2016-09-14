.class public final Landroid/support/v7/a/r;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field public final a:Landroid/support/v7/a/j;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/a/q;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/a/r;-><init>(Landroid/content/Context;I)V

    .line 292
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/support/v7/a/j;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 322
    invoke-static {p1, p2}, Landroid/support/v7/a/q;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    .line 323
    iput p2, p0, Landroid/support/v7/a/r;->b:I

    .line 324
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/q;
    .locals 20

    .prologue
    .line 927
    new-instance v19, Landroid/support/v7/a/q;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v1, v1, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/a/r;->b:I

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/q;-><init>(Landroid/content/Context;I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    invoke-static/range {v19 .. v19}, Landroid/support/v7/a/q;->a(Landroid/support/v7/a/q;)Landroid/support/v7/a/d;

    move-result-object v12

    .line 1823
    iget-object v1, v2, Landroid/support/v7/a/j;->g:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 1824
    iget-object v1, v2, Landroid/support/v7/a/j;->g:Landroid/view/View;

    .line 2239
    iput-object v1, v12, Landroid/support/v7/a/d;->C:Landroid/view/View;

    .line 1839
    :cond_0
    :goto_0
    iget-object v1, v2, Landroid/support/v7/a/j;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1840
    iget-object v1, v2, Landroid/support/v7/a/j;->h:Ljava/lang/CharSequence;

    .line 3243
    iput-object v1, v12, Landroid/support/v7/a/d;->e:Ljava/lang/CharSequence;

    .line 3244
    iget-object v3, v12, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3245
    iget-object v3, v12, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    :cond_1
    iget-object v1, v2, Landroid/support/v7/a/j;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1843
    const/4 v1, -0x1

    iget-object v3, v2, Landroid/support/v7/a/j;->i:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/support/v7/a/j;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    invoke-virtual {v12, v1, v3, v4, v5}, Landroid/support/v7/a/d;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1846
    :cond_2
    iget-object v1, v2, Landroid/support/v7/a/j;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1847
    const/4 v1, -0x2

    iget-object v3, v2, Landroid/support/v7/a/j;->k:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/support/v7/a/j;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    invoke-virtual {v12, v1, v3, v4, v5}, Landroid/support/v7/a/d;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1850
    :cond_3
    iget-object v1, v2, Landroid/support/v7/a/j;->m:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1851
    const/4 v1, -0x3

    iget-object v3, v2, Landroid/support/v7/a/j;->m:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/support/v7/a/j;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    invoke-virtual {v12, v1, v3, v4, v5}, Landroid/support/v7/a/d;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1856
    :cond_4
    iget-object v1, v2, Landroid/support/v7/a/j;->s:[Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    iget-object v1, v2, Landroid/support/v7/a/j;->H:Landroid/database/Cursor;

    if-nez v1, :cond_5

    iget-object v1, v2, Landroid/support/v7/a/j;->t:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_9

    .line 3880
    :cond_5
    iget-object v1, v2, Landroid/support/v7/a/j;->b:Landroid/view/LayoutInflater;

    .line 4061
    iget v3, v12, Landroid/support/v7/a/d;->H:I

    .line 3880
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 3883
    iget-boolean v1, v2, Landroid/support/v7/a/j;->D:Z

    if-eqz v1, :cond_13

    .line 3884
    iget-object v1, v2, Landroid/support/v7/a/j;->H:Landroid/database/Cursor;

    if-nez v1, :cond_12

    .line 3885
    new-instance v1, Landroid/support/v7/a/k;

    iget-object v3, v2, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    .line 5061
    iget v4, v12, Landroid/support/v7/a/d;->I:I

    .line 3886
    iget-object v5, v2, Landroid/support/v7/a/j;->s:[Ljava/lang/CharSequence;

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/a/k;-><init>(Landroid/support/v7/a/j;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 8061
    :goto_1
    iput-object v1, v12, Landroid/support/v7/a/d;->D:Landroid/widget/ListAdapter;

    .line 3953
    iget v1, v2, Landroid/support/v7/a/j;->F:I

    .line 9061
    iput v1, v12, Landroid/support/v7/a/d;->E:I

    .line 3955
    iget-object v1, v2, Landroid/support/v7/a/j;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_17

    .line 3956
    new-instance v1, Landroid/support/v7/a/m;

    invoke-direct {v1, v2, v12}, Landroid/support/v7/a/m;-><init>(Landroid/support/v7/a/j;Landroid/support/v7/a/d;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3979
    :cond_6
    :goto_2
    iget-object v1, v2, Landroid/support/v7/a/j;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_7

    .line 3980
    iget-object v1, v2, Landroid/support/v7/a/j;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3983
    :cond_7
    iget-boolean v1, v2, Landroid/support/v7/a/j;->E:Z

    if-eqz v1, :cond_18

    .line 3984
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 10061
    :cond_8
    :goto_3
    iput-object v6, v12, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    .line 1859
    :cond_9
    iget-object v1, v2, Landroid/support/v7/a/j;->w:Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 1860
    iget-boolean v1, v2, Landroid/support/v7/a/j;->B:Z

    if-eqz v1, :cond_19

    .line 1861
    iget-object v1, v2, Landroid/support/v7/a/j;->w:Landroid/view/View;

    iget v3, v2, Landroid/support/v7/a/j;->x:I

    iget v4, v2, Landroid/support/v7/a/j;->y:I

    iget v5, v2, Landroid/support/v7/a/j;->z:I

    iget v2, v2, Landroid/support/v7/a/j;->A:I

    .line 10272
    iput-object v1, v12, Landroid/support/v7/a/d;->g:Landroid/view/View;

    .line 10273
    const/4 v1, 0x0

    iput v1, v12, Landroid/support/v7/a/d;->h:I

    .line 10274
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/support/v7/a/d;->m:Z

    .line 10275
    iput v3, v12, Landroid/support/v7/a/d;->i:I

    .line 10276
    iput v4, v12, Landroid/support/v7/a/d;->j:I

    .line 10277
    iput v5, v12, Landroid/support/v7/a/d;->k:I

    .line 10278
    iput v2, v12, Landroid/support/v7/a/d;->l:I

    .line 929
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-boolean v1, v1, Landroid/support/v7/a/j;->o:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/a/q;->setCancelable(Z)V

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-boolean v1, v1, Landroid/support/v7/a/j;->o:Z

    if-eqz v1, :cond_b

    .line 931
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/a/q;->setCanceledOnTouchOutside(Z)V

    .line 933
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v1, v1, Landroid/support/v7/a/j;->p:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/a/q;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v1, v1, Landroid/support/v7/a/j;->q:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/a/q;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v1, v1, Landroid/support/v7/a/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_c

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/a/r;->a:Landroid/support/v7/a/j;

    iget-object v1, v1, Landroid/support/v7/a/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/a/q;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 938
    :cond_c
    return-object v19

    .line 1826
    :cond_d
    iget-object v1, v2, Landroid/support/v7/a/j;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 1827
    iget-object v1, v2, Landroid/support/v7/a/j;->f:Ljava/lang/CharSequence;

    invoke-virtual {v12, v1}, Landroid/support/v7/a/d;->a(Ljava/lang/CharSequence;)V

    .line 1829
    :cond_e
    iget-object v1, v2, Landroid/support/v7/a/j;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 1830
    iget-object v1, v2, Landroid/support/v7/a/j;->d:Landroid/graphics/drawable/Drawable;

    .line 2355
    iput-object v1, v12, Landroid/support/v7/a/d;->y:Landroid/graphics/drawable/Drawable;

    .line 2356
    const/4 v3, 0x0

    iput v3, v12, Landroid/support/v7/a/d;->x:I

    .line 2358
    iget-object v3, v12, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    .line 2359
    if-eqz v1, :cond_11

    .line 2360
    iget-object v3, v12, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2361
    iget-object v3, v12, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1832
    :cond_f
    :goto_5
    iget v1, v2, Landroid/support/v7/a/j;->c:I

    if-eqz v1, :cond_10

    .line 1833
    iget v1, v2, Landroid/support/v7/a/j;->c:I

    invoke-virtual {v12, v1}, Landroid/support/v7/a/d;->a(I)V

    .line 1835
    :cond_10
    iget v1, v2, Landroid/support/v7/a/j;->e:I

    if-eqz v1, :cond_0

    .line 1836
    iget v1, v2, Landroid/support/v7/a/j;->e:I

    .line 2375
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2376
    iget-object v4, v12, Landroid/support/v7/a/d;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2377
    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    .line 1836
    invoke-virtual {v12, v1}, Landroid/support/v7/a/d;->a(I)V

    goto/16 :goto_0

    .line 2363
    :cond_11
    iget-object v1, v12, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 3900
    :cond_12
    new-instance v7, Landroid/support/v7/a/l;

    iget-object v9, v2, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    iget-object v10, v2, Landroid/support/v7/a/j;->H:Landroid/database/Cursor;

    move-object v8, v2

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/a/l;-><init>(Landroid/support/v7/a/j;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;Landroid/support/v7/a/d;)V

    move-object v1, v7

    goto/16 :goto_1

    .line 3929
    :cond_13
    iget-boolean v1, v2, Landroid/support/v7/a/j;->E:Z

    if-eqz v1, :cond_14

    .line 6061
    iget v15, v12, Landroid/support/v7/a/d;->J:I

    .line 3935
    :goto_6
    iget-object v1, v2, Landroid/support/v7/a/j;->H:Landroid/database/Cursor;

    if-eqz v1, :cond_15

    .line 3936
    new-instance v13, Landroid/widget/SimpleCursorAdapter;

    iget-object v14, v2, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    iget-object v0, v2, Landroid/support/v7/a/j;->H:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    iget-object v3, v2, Landroid/support/v7/a/j;->I:Ljava/lang/String;

    aput-object v3, v17, v1

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v18, v0

    const/4 v1, 0x0

    const v3, 0x1020014

    aput v3, v18, v1

    invoke-direct/range {v13 .. v18}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v13

    goto/16 :goto_1

    .line 7061
    :cond_14
    iget v15, v12, Landroid/support/v7/a/d;->K:I

    goto :goto_6

    .line 3938
    :cond_15
    iget-object v1, v2, Landroid/support/v7/a/j;->t:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_16

    .line 3939
    iget-object v1, v2, Landroid/support/v7/a/j;->t:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    .line 3941
    :cond_16
    new-instance v1, Landroid/support/v7/a/p;

    iget-object v3, v2, Landroid/support/v7/a/j;->a:Landroid/content/Context;

    iget-object v4, v2, Landroid/support/v7/a/j;->s:[Ljava/lang/CharSequence;

    invoke-direct {v1, v3, v15, v4}, Landroid/support/v7/a/p;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3965
    :cond_17
    iget-object v1, v2, Landroid/support/v7/a/j;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_6

    .line 3966
    new-instance v1, Landroid/support/v7/a/n;

    invoke-direct {v1, v2, v6, v12}, Landroid/support/v7/a/n;-><init>(Landroid/support/v7/a/j;Landroid/widget/ListView;Landroid/support/v7/a/d;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 3985
    :cond_18
    iget-boolean v1, v2, Landroid/support/v7/a/j;->D:Z

    if-eqz v1, :cond_8

    .line 3986
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_3

    .line 1864
    :cond_19
    iget-object v1, v2, Landroid/support/v7/a/j;->w:Landroid/view/View;

    .line 11262
    iput-object v1, v12, Landroid/support/v7/a/d;->g:Landroid/view/View;

    .line 11263
    const/4 v1, 0x0

    iput v1, v12, Landroid/support/v7/a/d;->h:I

    .line 11264
    const/4 v1, 0x0

    iput-boolean v1, v12, Landroid/support/v7/a/d;->m:Z

    goto/16 :goto_4

    .line 1866
    :cond_1a
    iget v1, v2, Landroid/support/v7/a/j;->v:I

    if-eqz v1, :cond_a

    .line 1867
    iget v1, v2, Landroid/support/v7/a/j;->v:I

    .line 12253
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/support/v7/a/d;->g:Landroid/view/View;

    .line 12254
    iput v1, v12, Landroid/support/v7/a/d;->h:I

    .line 12255
    const/4 v1, 0x0

    iput-boolean v1, v12, Landroid/support/v7/a/d;->m:Z

    goto/16 :goto_4
.end method
