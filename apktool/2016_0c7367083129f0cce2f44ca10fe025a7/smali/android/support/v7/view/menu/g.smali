.class final Landroid/support/v7/view/menu/g;
.super Landroid/support/v7/view/menu/ab;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/ae;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/o;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final k:Landroid/support/v7/widget/dj;

.field private l:I

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/support/v7/view/menu/af;

.field private x:Landroid/view/ViewTreeObserver;

.field private y:Landroid/widget/PopupWindow$OnDismissListener;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/support/v7/view/menu/ab;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->h:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/support/v7/view/menu/h;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/support/v7/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 115
    new-instance v0, Landroid/support/v7/view/menu/i;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/i;-><init>(Landroid/support/v7/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->k:Landroid/support/v7/widget/dj;

    .line 175
    iput v1, p0, Landroid/support/v7/view/menu/g;->l:I

    .line 176
    iput v1, p0, Landroid/support/v7/view/menu/g;->m:I

    .line 200
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    .line 202
    iput p3, p0, Landroid/support/v7/view/menu/g;->d:I

    .line 203
    iput p4, p0, Landroid/support/v7/view/menu/g;->e:I

    .line 204
    iput-boolean p5, p0, Landroid/support/v7/view/menu/g;->f:Z

    .line 206
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->u:Z

    .line 207
    invoke-direct {p0}, Landroid/support/v7/view/menu/g;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/g;->p:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 210
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/g;->c:I

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->g:Landroid/os/Handler;

    .line 214
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/g;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->z:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/view/menu/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/support/v7/view/menu/o;)V
    .locals 13

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 345
    new-instance v0, Landroid/support/v7/view/menu/n;

    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->f:Z

    invoke-direct {v0, p1, v6, v1}, Landroid/support/v7/view/menu/n;-><init>(Landroid/support/v7/view/menu/o;Landroid/view/LayoutInflater;Z)V

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->u:Z

    if-eqz v1, :cond_4

    .line 2052
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/view/menu/n;->c:Z

    .line 360
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/Context;

    iget v3, p0, Landroid/support/v7/view/menu/g;->c:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/view/menu/g;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    .line 3222
    new-instance v8, Landroid/support/v7/widget/dk;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/g;->d:I

    iget v3, p0, Landroid/support/v7/view/menu/g;->e:I

    invoke-direct {v8, v1, v2, v3}, Landroid/support/v7/widget/dk;-><init>(Landroid/content/Context;II)V

    .line 3224
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->k:Landroid/support/v7/widget/dj;

    .line 4091
    iput-object v1, v8, Landroid/support/v7/widget/dk;->b:Landroid/support/v7/widget/dj;

    .line 4591
    iput-object p0, v8, Landroid/support/v7/widget/cz;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3226
    invoke-virtual {v8, p0}, Landroid/support/v7/widget/dk;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3227
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    .line 5461
    iput-object v1, v8, Landroid/support/v7/widget/cz;->i:Landroid/view/View;

    .line 3228
    iget v1, p0, Landroid/support/v7/view/menu/g;->m:I

    .line 5518
    iput v1, v8, Landroid/support/v7/widget/cz;->f:I

    .line 3229
    invoke-virtual {v8}, Landroid/support/v7/widget/dk;->f()V

    .line 362
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/dk;->a(Landroid/widget/ListAdapter;)V

    .line 363
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/dk;->b(I)V

    .line 364
    iget v0, p0, Landroid/support/v7/view/menu/g;->m:I

    .line 6518
    iput v0, v8, Landroid/support/v7/widget/cz;->f:I

    .line 368
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 369
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 7477
    iget-object v3, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    .line 8456
    const/4 v1, 0x0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/o;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    .line 8457
    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 8458
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    if-ne p1, v5, :cond_5

    move-object v5, v1

    .line 7478
    :goto_2
    if-nez v5, :cond_7

    .line 7480
    const/4 v1, 0x0

    :goto_3
    move-object v2, v1

    move-object v3, v0

    .line 376
    :goto_4
    if-eqz v2, :cond_14

    .line 9099
    sget-object v0, Landroid/support/v7/widget/dk;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 9101
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/dk;->a:Ljava/lang/reflect/Method;

    iget-object v1, v8, Landroid/support/v7/widget/dk;->m:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10079
    :cond_1
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 10080
    iget-object v0, v8, Landroid/support/v7/widget/dk;->m:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 10304
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 10747
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 10909
    iget-object v0, v0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 10306
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 10307
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 10309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 10310
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10312
    iget v5, p0, Landroid/support/v7/view/menu/g;->p:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_e

    .line 10313
    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 10314
    iget v1, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_f

    .line 10317
    const/4 v0, 0x1

    move v1, v0

    .line 382
    :goto_6
    const/4 v0, 0x1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x1

    .line 383
    :goto_7
    iput v1, p0, Landroid/support/v7/view/menu/g;->p:I

    .line 385
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 389
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 390
    iget-object v4, v3, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 11468
    iget v4, v4, Landroid/support/v7/widget/cz;->e:I

    .line 390
    const/4 v5, 0x0

    aget v5, v1, v5

    add-int/2addr v4, v5

    .line 391
    iget-object v5, v3, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    invoke-virtual {v5}, Landroid/support/v7/widget/dk;->g()I

    move-result v5

    const/4 v9, 0x1

    aget v1, v1, v9

    add-int/2addr v1, v5

    .line 396
    iget v5, p0, Landroid/support/v7/view/menu/g;->m:I

    and-int/lit8 v5, v5, 0x5

    const/4 v9, 0x5

    if-ne v5, v9, :cond_12

    .line 397
    if-eqz v0, :cond_11

    .line 398
    add-int v0, v4, v7

    .line 11477
    :goto_8
    iput v0, v8, Landroid/support/v7/widget/cz;->e:I

    .line 413
    invoke-virtual {v8, v1}, Landroid/support/v7/widget/dk;->a(I)V

    .line 425
    :goto_9
    new-instance v0, Landroid/support/v7/view/menu/k;

    iget v1, p0, Landroid/support/v7/view/menu/g;->p:I

    invoke-direct {v0, v8, p1, v1}, Landroid/support/v7/view/menu/k;-><init>(Landroid/support/v7/widget/dk;Landroid/support/v7/view/menu/o;I)V

    .line 426
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v8}, Landroid/support/v7/widget/dk;->b()V

    .line 431
    if-nez v3, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->v:Z

    if-eqz v0, :cond_3

    .line 14280
    iget-object v0, p1, Landroid/support/v7/view/menu/o;->f:Ljava/lang/CharSequence;

    .line 431
    if-eqz v0, :cond_3

    .line 14909
    iget-object v2, v8, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 433
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 435
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 15280
    iget-object v3, p1, Landroid/support/v7/view/menu/o;->f:Ljava/lang/CharSequence;

    .line 437
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 441
    invoke-virtual {v8}, Landroid/support/v7/widget/dk;->b()V

    .line 443
    :cond_3
    return-void

    .line 354
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-static {p1}, Landroid/support/v7/view/menu/ab;->b(Landroid/support/v7/view/menu/o;)Z

    move-result v1

    .line 3052
    iput-boolean v1, v0, Landroid/support/v7/view/menu/n;->c:Z

    goto/16 :goto_0

    .line 8456
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 8463
    :cond_6
    const/4 v1, 0x0

    move-object v5, v1

    goto/16 :goto_2

    .line 8747
    :cond_7
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 8909
    iget-object v9, v1, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 7487
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 7488
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_8

    .line 7489
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 7490
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 7491
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/n;

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 7498
    :goto_a
    const/4 v4, -0x1

    .line 7499
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/n;->getCount()I

    move-result v10

    :goto_b
    if-ge v3, v10, :cond_17

    .line 7500
    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/n;->a(I)Landroid/support/v7/view/menu/s;

    move-result-object v11

    if-ne v5, v11, :cond_9

    move v2, v3

    .line 7505
    :goto_c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 7507
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 7493
    :cond_8
    const/4 v2, 0x0

    .line 7494
    check-cast v1, Landroid/support/v7/view/menu/n;

    move v12, v2

    move-object v2, v1

    move v1, v12

    goto :goto_a

    .line 7499
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 7511
    :cond_a
    add-int/2addr v1, v2

    .line 7514
    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 7515
    if-ltz v1, :cond_b

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_c

    .line 7517
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 7520
    :cond_c
    invoke-virtual {v9, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_3

    .line 372
    :cond_d
    const/4 v0, 0x0

    .line 373
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_4

    .line 9103
    :catch_0
    move-exception v0

    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 10319
    :cond_e
    const/4 v0, 0x0

    aget v0, v1, v0

    sub-int/2addr v0, v7

    .line 10320
    if-gez v0, :cond_f

    .line 10321
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_6

    .line 10323
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6

    .line 382
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 400
    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    goto/16 :goto_8

    .line 403
    :cond_12
    if-eqz v0, :cond_13

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    goto/16 :goto_8

    .line 406
    :cond_13
    sub-int v0, v4, v7

    goto/16 :goto_8

    .line 415
    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->q:Z

    if-eqz v0, :cond_15

    .line 416
    iget v0, p0, Landroid/support/v7/view/menu/g;->s:I

    .line 12477
    iput v0, v8, Landroid/support/v7/widget/cz;->e:I

    .line 418
    :cond_15
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->r:Z

    if-eqz v0, :cond_16

    .line 419
    iget v0, p0, Landroid/support/v7/view/menu/g;->t:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/dk;->a(I)V

    .line 13077
    :cond_16
    iget-object v0, p0, Landroid/support/v7/view/menu/ab;->a:Landroid/graphics/Rect;

    .line 13508
    iput-object v0, v8, Landroid/support/v7/widget/cz;->k:Landroid/graphics/Rect;

    goto/16 :goto_9

    :cond_17
    move v2, v4

    goto :goto_c
.end method

.method private g()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 291
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Landroid/support/v7/view/menu/g;->l:I

    if-eq v0, p1, :cond_0

    .line 681
    iput p1, p0, Landroid/support/v7/view/menu/g;->l:I

    .line 682
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    .line 683
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 682
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/g;->m:I

    .line 685
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/af;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/af;

    .line 564
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/g;->c(Landroid/support/v7/view/menu/o;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 607
    .line 19595
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 19596
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 19597
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 608
    :goto_1
    if-gez v1, :cond_3

    .line 662
    :cond_0
    :goto_2
    return-void

    .line 19595
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19602
    :cond_2
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    .line 613
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 614
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 615
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 616
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 620
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 621
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/ae;)V

    .line 622
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->z:Z

    if-eqz v1, :cond_6

    .line 624
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 20085
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    .line 20086
    iget-object v1, v1, Landroid/support/v7/widget/dk;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 625
    :cond_5
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 20432
    iget-object v1, v1, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 627
    :cond_6
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    invoke-virtual {v0}, Landroid/support/v7/widget/dk;->c()V

    .line 629
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 630
    if-lez v1, :cond_a

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    iget v0, v0, Landroid/support/v7/view/menu/k;->c:I

    iput v0, p0, Landroid/support/v7/view/menu/g;->p:I

    .line 636
    :goto_3
    if-nez v1, :cond_b

    .line 638
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->c()V

    .line 640
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_7

    .line 641
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/af;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 644
    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_9

    .line 645
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 646
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 648
    :cond_8
    iput-object v5, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    .line 654
    :cond_9
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->y:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto/16 :goto_2

    .line 633
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/view/menu/g;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/g;->p:I

    goto :goto_3

    .line 655
    :cond_b
    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 660
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(Z)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 690
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    .line 693
    iget v0, p0, Landroid/support/v7/view/menu/g;->l:I

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    .line 694
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 693
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/g;->m:I

    .line 696
    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->y:Landroid/widget/PopupWindow$OnDismissListener;

    .line 701
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 17747
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 17909
    iget-object v0, v0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 557
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/g;->a(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->notifyDataSetChanged()V

    goto :goto_0

    .line 559
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/an;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 570
    iget-object v3, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    if-ne p1, v3, :cond_0

    .line 18747
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 18909
    iget-object v0, v0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 572
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    move v0, v1

    .line 585
    :goto_0
    return v0

    .line 577
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/an;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->a(Landroid/support/v7/view/menu/o;)V

    .line 580
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/af;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/af;->a(Landroid/support/v7/view/menu/o;)Z

    :cond_2
    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    .line 241
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/g;->c(Landroid/support/v7/view/menu/o;)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->n:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    .line 247
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 249
    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->x:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->q:Z

    .line 713
    iput p1, p0, Landroid/support/v7/view/menu/g;->s:I

    .line 714
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->u:Z

    .line 219
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    if-lez v1, :cond_1

    .line 264
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    new-array v2, v1, [Landroid/support/v7/view/menu/k;

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/k;

    .line 266
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 267
    aget-object v2, v0, v1

    .line 268
    iget-object v3, v2, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 1823
    iget-object v3, v3, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    .line 268
    if-eqz v3, :cond_0

    .line 269
    iget-object v2, v2, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    invoke-virtual {v2}, Landroid/support/v7/widget/dk;->c()V

    .line 266
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->r:Z

    .line 719
    iput p1, p0, Landroid/support/v7/view/menu/g;->t:I

    .line 720
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->v:Z

    .line 725
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 15823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 528
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final e()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 707
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    .line 707
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 20747
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 20909
    iget-object v0, v0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    goto :goto_0
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 538
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    .line 540
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 541
    iget-object v5, v0, Landroid/support/v7/view/menu/k;->a:Landroid/support/v7/widget/dk;

    .line 16823
    iget-object v5, v5, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    .line 541
    if-nez v5, :cond_1

    .line 549
    :goto_1
    if-eqz v0, :cond_0

    .line 550
    iget-object v0, v0, Landroid/support/v7/view/menu/k;->b:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 552
    :cond_0
    return-void

    .line 539
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->c()V

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
