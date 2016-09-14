.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/ct;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/ag;
.implements Landroid/support/v7/view/menu/q;


# instance fields
.field a:Landroid/support/v7/view/menu/o;

.field b:Z

.field c:Landroid/support/v7/widget/k;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Landroid/support/v7/view/menu/af;

.field private g:Landroid/support/v7/view/menu/p;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/support/v7/widget/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ct;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->j:I

    .line 81
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->k:I

    .line 82
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    .line 83
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    .line 84
    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/u;

    .line 402
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 404
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 405
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 407
    instance-of v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 409
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 412
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 413
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 415
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 418
    div-int v1, v7, p1

    .line 419
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 420
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 423
    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/widget/u;->a:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 424
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/u;->d:Z

    .line 426
    iput v1, v0, Landroid/support/v7/widget/u;->b:I

    .line 427
    mul-int v0, v1, p1

    .line 428
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 430
    return v1

    .line 407
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 409
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public static a()Landroid/support/v7/widget/u;
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/widget/u;

    move-result-object v0

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/u;->a:Z

    .line 611
    return-object v0
.end method

.method protected static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/u;
    .locals 2

    .prologue
    .line 590
    if-eqz p0, :cond_2

    .line 591
    instance-of v0, p0, Landroid/support/v7/widget/u;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/u;

    check-cast p0, Landroid/support/v7/widget/u;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/u;)V

    .line 594
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/u;->h:I

    if-gtz v1, :cond_0

    .line 595
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/u;->h:I

    .line 599
    :cond_0
    :goto_1
    return-object v0

    .line 591
    :cond_1
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/u;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/widget/u;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/w;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->l:Landroid/support/v7/widget/w;

    return-object v0
.end method

.method private a(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 716
    if-nez p1, :cond_0

    move v0, v2

    .line 728
    :goto_0
    return v0

    .line 719
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 722
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/s;

    if-eqz v3, :cond_1

    .line 723
    check-cast v0, Landroid/support/v7/widget/s;

    invoke-interface {v0}, Landroid/support/v7/widget/s;->d()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    .line 725
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroid/support/v7/widget/s;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 726
    check-cast v0, Landroid/support/v7/widget/s;

    invoke-interface {v0}, Landroid/support/v7/widget/s;->c()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/p;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/view/menu/p;

    return-object v0
.end method

.method private b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/u;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private static d()Landroid/support/v7/widget/u;
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0}, Landroid/support/v7/widget/u;-><init>()V

    .line 579
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/u;->h:I

    .line 580
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/cu;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v7/view/menu/af;Landroid/support/v7/view/menu/p;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/view/menu/af;

    .line 659
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/view/menu/p;

    .line 660
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    .line 627
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/s;)Z
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    .line 2947
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/ae;I)Z

    move-result v0

    .line 616
    return v0
.end method

.method protected final synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/cu;
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->e()Z

    .line 710
    :cond_0
    return-void
.end method

.method protected final synthetic c()Landroid/support/v7/widget/cu;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 604
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/u;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/support/v7/view/menu/o;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    .line 641
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    new-instance v2, Landroid/support/v7/widget/v;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/ActionMenuView;B)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p;)V

    .line 642
    new-instance v1, Landroid/support/v7/widget/k;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->b()V

    .line 644
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/view/menu/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/view/menu/af;

    .line 3148
    :goto_0
    iput-object v0, v1, Landroid/support/v7/view/menu/d;->f:Landroid/support/v7/view/menu/af;

    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;Landroid/content/Context;)V

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/ActionMenuView;)V

    .line 650
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    return-object v0

    .line 644
    :cond_1
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/t;-><init>(Landroid/support/v7/widget/ActionMenuView;B)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 2175
    iget-object v1, v0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-eqz v1, :cond_0

    .line 2176
    iget-object v0, v0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2178
    :goto_0
    return-object v0

    .line 2177
    :cond_0
    iget-boolean v1, v0, Landroid/support/v7/widget/k;->k:Z

    if-eqz v1, :cond_1

    .line 2178
    iget-object v0, v0, Landroid/support/v7/widget/k;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2180
    :cond_1
    const/4 v0, 0x0

    .line 562
    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/widget/ct;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/k;->a(Z)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->d()Z

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/k;->c()Z

    .line 134
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Landroid/support/v7/widget/ct;->onDetachedFromWindow()V

    .line 541
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->b()V

    .line 542
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    if-nez v0, :cond_1

    .line 436
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/ct;->onLayout(ZIIII)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 441
    sub-int v0, p5, p3

    div-int/lit8 v7, v0, 0x2

    .line 442
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v8

    .line 445
    const/4 v4, 0x0

    .line 446
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    .line 447
    const/4 v2, 0x0

    .line 448
    invoke-static {p0}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;)Z

    move-result v9

    .line 449
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_5

    .line 450
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 451
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    .line 455
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/u;

    .line 456
    iget-boolean v1, v0, Landroid/support/v7/widget/u;->a:Z

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 458
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    add-int/2addr v1, v8

    .line 461
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 464
    if-eqz v9, :cond_3

    .line 465
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/u;->leftMargin:I

    add-int/2addr v0, v2

    .line 466
    add-int v2, v0, v1

    .line 471
    :goto_2
    div-int/lit8 v12, v11, 0x2

    sub-int v12, v7, v12

    .line 472
    add-int/2addr v11, v12

    .line 473
    invoke-virtual {v10, v0, v12, v2, v11}, Landroid/view/View;->layout(IIII)V

    .line 475
    sub-int v0, v3, v1

    .line 476
    const/4 v1, 0x1

    move v2, v1

    move v1, v4

    .line 449
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v1

    move v3, v0

    goto :goto_1

    .line 468
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    iget v0, v0, Landroid/support/v7/widget/u;->rightMargin:I

    sub-int/2addr v2, v0

    .line 469
    sub-int v0, v2, v1

    goto :goto_2

    .line 478
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v10, v0, Landroid/support/v7/widget/u;->leftMargin:I

    add-int/2addr v1, v10

    iget v0, v0, Landroid/support/v7/widget/u;->rightMargin:I

    add-int/2addr v0, v1

    .line 480
    sub-int v0, v3, v0

    .line 481
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->a(I)Z

    .line 484
    add-int/lit8 v1, v4, 0x1

    goto :goto_3

    .line 488
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    if-nez v2, :cond_6

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 493
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    .line 494
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 495
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    .line 496
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 500
    :cond_6
    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :goto_4
    sub-int v0, v4, v0

    .line 501
    const/4 v1, 0x0

    if-lez v0, :cond_8

    div-int v0, v3, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 503
    if-eqz v9, :cond_9

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 505
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v6, :cond_0

    .line 506
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 507
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/u;

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/u;->a:Z

    if-nez v5, :cond_b

    .line 512
    iget v5, v0, Landroid/support/v7/widget/u;->rightMargin:I

    sub-int/2addr v1, v5

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 514
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 515
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    .line 516
    sub-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v10, v9, v1, v8}, Landroid/view/View;->layout(IIII)V

    .line 517
    iget v0, v0, Landroid/support/v7/widget/u;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    .line 505
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 500
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 501
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 520
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 521
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v6, :cond_0

    .line 522
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/u;

    .line 524
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_a

    iget-boolean v5, v0, Landroid/support/v7/widget/u;->a:Z

    if-nez v5, :cond_a

    .line 528
    iget v5, v0, Landroid/support/v7/widget/u;->leftMargin:I

    add-int/2addr v1, v5

    .line 529
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 531
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    .line 532
    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 533
    iget v0, v0, Landroid/support/v7/widget/u;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 521
    :goto_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v3

    move v1, v4

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 34

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    .line 144
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    .line 146
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    if-eq v7, v6, :cond_0

    .line 147
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->i:I

    .line 152
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 153
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->i:I

    if-eq v6, v7, :cond_1

    .line 154
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->i:I

    .line 155
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/o;->b(Z)V

    .line 158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v8

    .line 159
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->h:Z

    if-eqz v6, :cond_1c

    if-lez v8, :cond_1c

    .line 1174
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 1175
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1176
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 1178
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    .line 1181
    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    .line 1184
    sub-int v25, v6, v7

    .line 1187
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    div-int v9, v25, v6

    .line 1188
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    rem-int v6, v25, v6

    .line 1190
    if-nez v9, :cond_3

    .line 1192
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 1193
    :goto_1
    return-void

    .line 144
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1196
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    .line 1199
    const/16 v16, 0x0

    .line 1200
    const/4 v15, 0x0

    .line 1201
    const/4 v10, 0x0

    .line 1202
    const/4 v7, 0x0

    .line 1203
    const/4 v11, 0x0

    .line 1206
    const-wide/16 v12, 0x0

    .line 1208
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v27

    .line 1209
    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 1210
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1211
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-eq v6, v14, :cond_25

    .line 1213
    instance-of v0, v8, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    .line 1214
    add-int/lit8 v14, v7, 0x1

    .line 1216
    if-eqz v20, :cond_4

    .line 1219
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1222
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1223
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/u;->f:Z

    .line 1224
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/u;->c:I

    .line 1225
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/u;->b:I

    .line 1226
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/u;->d:Z

    .line 1227
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/u;->leftMargin:I

    .line 1228
    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/u;->rightMargin:I

    .line 1229
    if-eqz v20, :cond_5

    move-object v7, v8

    check-cast v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/widget/u;->e:Z

    .line 1232
    iget-boolean v7, v6, Landroid/support/v7/widget/u;->a:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    .line 1234
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v20

    .line 1237
    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1238
    iget-boolean v7, v6, Landroid/support/v7/widget/u;->d:Z

    if-eqz v7, :cond_24

    add-int/lit8 v7, v10, 0x1

    .line 1239
    :goto_5
    iget-boolean v6, v6, Landroid/support/v7/widget/u;->a:Z

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    .line 1241
    :goto_6
    sub-int v11, v9, v20

    .line 1242
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1243
    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_22

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move v12, v10

    move v13, v11

    move v10, v7

    move v11, v6

    move-wide v6, v8

    move v9, v15

    move v8, v14

    .line 1209
    :goto_7
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v6

    move v7, v8

    goto/16 :goto_2

    .line 1229
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move v7, v9

    .line 1232
    goto :goto_4

    .line 1248
    :cond_7
    if-eqz v11, :cond_8

    const/4 v6, 0x2

    if-ne v7, v6, :cond_8

    const/4 v6, 0x1

    move v8, v6

    .line 1253
    :goto_8
    const/16 v18, 0x0

    move-wide/from16 v20, v12

    move/from16 v19, v9

    .line 1254
    :goto_9
    if-lez v10, :cond_e

    if-lez v19, :cond_e

    .line 1255
    const v14, 0x7fffffff

    .line 1256
    const-wide/16 v12, 0x0

    .line 1257
    const/4 v9, 0x0

    .line 1258
    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 1259
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1260
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1263
    iget-boolean v0, v6, Landroid/support/v7/widget/u;->d:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .line 1266
    iget v0, v6, Landroid/support/v7/widget/u;->b:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_9

    .line 1267
    iget v9, v6, Landroid/support/v7/widget/u;->b:I

    .line 1268
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v12, v6

    .line 1269
    const/4 v6, 0x1

    .line 1258
    :goto_b
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v6

    goto :goto_a

    .line 1248
    :cond_8
    const/4 v6, 0x0

    move v8, v6

    goto :goto_8

    .line 1270
    :cond_9
    iget v6, v6, Landroid/support/v7/widget/u;->b:I

    if-ne v6, v14, :cond_21

    .line 1271
    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v12, v12, v28

    .line 1272
    add-int/lit8 v6, v9, 0x1

    move v9, v14

    goto :goto_b

    .line 1277
    :cond_a
    or-long v20, v20, v12

    .line 1279
    move/from16 v0, v19

    if-gt v9, v0, :cond_e

    .line 1282
    add-int/lit8 v22, v14, 0x1

    .line 1284
    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v19

    move-wide/from16 v18, v20

    :goto_c
    move/from16 v0, v27

    if-ge v14, v0, :cond_d

    .line 1285
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1286
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1287
    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-nez v21, :cond_b

    .line 1289
    iget v6, v6, Landroid/support/v7/widget/u;->b:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_20

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v20, v0

    or-long v18, v18, v20

    move v6, v9

    .line 1284
    :goto_d
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v6

    goto :goto_c

    .line 1293
    :cond_b
    if-eqz v8, :cond_c

    iget-boolean v0, v6, Landroid/support/v7/widget/u;->e:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    .line 1295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    move/from16 v21, v0

    add-int v21, v21, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1297
    :cond_c
    iget v0, v6, Landroid/support/v7/widget/u;->b:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/support/v7/widget/u;->b:I

    .line 1298
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Landroid/support/v7/widget/u;->f:Z

    .line 1299
    add-int/lit8 v6, v9, -0x1

    goto :goto_d

    .line 1302
    :cond_d
    const/4 v6, 0x1

    move-wide/from16 v20, v18

    move/from16 v18, v6

    move/from16 v19, v9

    .line 1303
    goto/16 :goto_9

    :cond_e
    move-wide/from16 v12, v20

    .line 1308
    if-nez v11, :cond_12

    const/4 v6, 0x1

    if-ne v7, v6, :cond_12

    const/4 v6, 0x1

    .line 1309
    :goto_e
    if-lez v19, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v19

    if-lt v0, v7, :cond_f

    if-nez v6, :cond_f

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    .line 1311
    :cond_f
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    .line 1313
    if-nez v6, :cond_1f

    .line 1315
    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_10

    .line 1316
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1317
    iget-boolean v6, v6, Landroid/support/v7/widget/u;->e:Z

    if-nez v6, :cond_10

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    .line 1319
    :cond_10
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1f

    .line 1320
    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1321
    iget-boolean v6, v6, Landroid/support/v7/widget/u;->e:Z

    if-nez v6, :cond_1f

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    .line 1325
    :goto_f
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_13

    mul-int v7, v19, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    .line 1328
    :goto_10
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v18

    :goto_11
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    .line 1329
    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-eqz v6, :cond_17

    .line 1331
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1332
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1333
    instance-of v10, v10, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    .line 1335
    iput v7, v6, Landroid/support/v7/widget/u;->c:I

    .line 1336
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/u;->f:Z

    .line 1337
    if-nez v9, :cond_11

    iget-boolean v8, v6, Landroid/support/v7/widget/u;->e:Z

    if-nez v8, :cond_11

    .line 1340
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/u;->leftMargin:I

    .line 1342
    :cond_11
    const/4 v6, 0x1

    .line 1328
    :goto_12
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v6

    goto :goto_11

    .line 1308
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 1325
    :cond_13
    const/4 v6, 0x0

    move v7, v6

    goto :goto_10

    .line 1343
    :cond_14
    iget-boolean v10, v6, Landroid/support/v7/widget/u;->a:Z

    if-eqz v10, :cond_15

    .line 1344
    iput v7, v6, Landroid/support/v7/widget/u;->c:I

    .line 1345
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/u;->f:Z

    .line 1346
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/u;->rightMargin:I

    .line 1347
    const/4 v6, 0x1

    goto :goto_12

    .line 1352
    :cond_15
    if-eqz v9, :cond_16

    .line 1353
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/u;->leftMargin:I

    .line 1355
    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    .line 1356
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/u;->rightMargin:I

    :cond_17
    move v6, v8

    goto :goto_12

    :cond_18
    move/from16 v8, v18

    .line 1365
    :cond_19
    if-eqz v8, :cond_1b

    .line 1366
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    .line 1367
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1368
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 1370
    iget-boolean v9, v6, Landroid/support/v7/widget/u;->f:Z

    if-eqz v9, :cond_1a

    .line 1372
    iget v9, v6, Landroid/support/v7/widget/u;->b:I

    mul-int v9, v9, v26

    iget v6, v6, Landroid/support/v7/widget/u;->c:I

    add-int/2addr v6, v9

    .line 1373
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    .line 1366
    :cond_1a
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    .line 1378
    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1e

    .line 1382
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    .line 163
    :cond_1c
    const/4 v6, 0x0

    move v7, v6

    :goto_15
    if-ge v7, v8, :cond_1d

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/u;

    .line 166
    const/4 v9, 0x0

    iput v9, v6, Landroid/support/v7/widget/u;->rightMargin:I

    iput v9, v6, Landroid/support/v7/widget/u;->leftMargin:I

    .line 163
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_15

    .line 168
    :cond_1d
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/ct;->onMeasure(II)V

    goto/16 :goto_1

    :cond_1e
    move/from16 v16, v17

    goto :goto_14

    :cond_1f
    move v6, v7

    goto/16 :goto_f

    :cond_20
    move v6, v9

    goto/16 :goto_d

    :cond_21
    move v6, v9

    move v9, v14

    goto/16 :goto_b

    :cond_22
    move v8, v14

    move v9, v15

    move-wide/from16 v32, v12

    move v12, v10

    move v13, v11

    move v11, v6

    move v10, v7

    move-wide/from16 v6, v32

    goto/16 :goto_7

    :cond_23
    move v6, v11

    goto/16 :goto_6

    :cond_24
    move v7, v10

    goto/16 :goto_5

    :cond_25
    move v8, v7

    move-wide v6, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    goto/16 :goto_7
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 3162
    iput-boolean p1, v0, Landroid/support/v7/widget/k;->n:Z

    .line 738
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/w;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->l:Landroid/support/v7/widget/w;

    .line 138
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 2166
    iget-object v1, v0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-eqz v1, :cond_0

    .line 2167
    iget-object v0, v0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .line 2169
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/k;->k:Z

    .line 2170
    iput-object p1, v0, Landroid/support/v7/widget/k;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    .line 573
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->e:I

    .line 96
    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->d:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/k;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/k;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/ActionMenuView;)V

    .line 120
    return-void
.end method
