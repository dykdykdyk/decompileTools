.class public final Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"


# instance fields
.field a:Landroid/support/v4/view/ActionProvider;

.field private final b:Landroid/support/v7/widget/ad;

.field private final c:Landroid/support/v7/widget/ae;

.field private final d:Landroid/support/v7/widget/ct;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/FrameLayout;

.field private final h:I

.field private final i:Landroid/database/DataSetObserver;

.field private final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private k:Landroid/support/v7/widget/cz;

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method static synthetic a(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ad;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 6815
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 348
    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    .line 355
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 357
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 7807
    iget-object v3, v3, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v3}, Landroid/support/v7/widget/x;->a()I

    move-result v4

    .line 358
    if-eqz v0, :cond_5

    move v3, v1

    .line 359
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    .line 361
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ad;->a(Z)V

    .line 362
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ad;->a(I)V

    .line 368
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v3

    .line 7823
    iget-object v4, v3, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    .line 369
    if-nez v4, :cond_3

    .line 370
    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    .line 371
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/ad;->a(ZZ)V

    .line 375
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->a()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/ActivityChooserView;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/cz;->b(I)V

    .line 377
    invoke-virtual {v3}, Landroid/support/v7/widget/cz;->b()V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 7909
    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 381
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 355
    goto :goto_0

    :cond_5
    move v3, v2

    .line 358
    goto :goto_1

    .line 364
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ad;->a(Z)V

    .line 365
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ad;->a(I)V

    goto :goto_2

    .line 373
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/widget/ad;->a(ZZ)V

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/widget/ActivityChooserView;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActivityChooserView;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Z

    return p1
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v0

    .line 9823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 408
    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActivityChooserView;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ActivityChooserView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:I

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method private getListPopupWindow()Landroid/support/v7/widget/cz;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/support/v7/widget/cz;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/cz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cz;->a(Landroid/widget/ListAdapter;)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    .line 13461
    iput-object p0, v0, Landroid/support/v7/widget/cz;->i:Landroid/view/View;

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->f()V

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/support/v7/widget/ae;

    .line 13591
    iput-object v1, v0, Landroid/support/v7/widget/cz;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->c:Landroid/support/v7/widget/ae;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cz;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->k:Landroid/support/v7/widget/cz;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 392
    .line 8408
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v0

    .line 8823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->c()V

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getDataModel()Landroid/support/v7/widget/x;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 12815
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 461
    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 10815
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/x;->registerObserver(Ljava/lang/Object;)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    .line 419
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 11815
    iget-object v0, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/x;->unregisterObserver(Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 432
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    .line 436
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v7/widget/ct;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/ct;->layout(IIII)V

    .line 455
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 458
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->d:Landroid/support/v7/widget/ct;

    .line 444
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 448
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method

.method public final setActivityChooserModel(Landroid/support/v7/widget/x;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 1665
    iget-object v1, v0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    .line 2067
    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->b:Landroid/support/v7/widget/ad;

    .line 2815
    iget-object v1, v1, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 1666
    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    iget-object v2, v0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    .line 3067
    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/database/DataSetObserver;

    .line 1667
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/x;->unregisterObserver(Ljava/lang/Object;)V

    .line 1669
    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    .line 1670
    if-eqz p1, :cond_1

    iget-object v1, v0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1671
    iget-object v1, v0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    .line 4067
    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->i:Landroid/database/DataSetObserver;

    .line 1671
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/x;->registerObserver(Ljava/lang/Object;)V

    .line 1673
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->notifyDataSetChanged()V

    .line 4408
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v0

    .line 4823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->a()Z

    .line 5408
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/cz;

    move-result-object v0

    .line 5823
    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 5334
    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->o:Z

    if-nez v0, :cond_3

    .line 5335
    :cond_2
    :goto_0
    return-void

    .line 5337
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->m:Z

    .line 5338
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->n:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActivityChooserView;->a(I)V

    goto :goto_0
.end method

.method public final setDefaultActionButtonContentDescription(I)V
    .locals 0

    .prologue
    .line 496
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->p:I

    .line 497
    return-void
.end method

.method public final setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public final setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public final setInitialActivityCount(I)V
    .locals 0

    .prologue
    .line 482
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->n:I

    .line 483
    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 471
    return-void
.end method

.method public final setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;

    .line 326
    return-void
.end method
