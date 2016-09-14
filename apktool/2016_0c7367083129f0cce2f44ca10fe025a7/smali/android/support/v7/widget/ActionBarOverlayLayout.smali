.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v7/widget/bu;


# static fields
.field static final b:[I


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Landroid/support/v4/view/NestedScrollingParentHelper;

.field public a:Z

.field private c:I

.field private d:I

.field private e:Landroid/support/v7/widget/ContentFrameLayout;

.field private f:Landroid/support/v7/widget/ActionBarContainer;

.field private g:Landroid/support/v7/widget/bv;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private u:Landroid/support/v7/widget/i;

.field private final v:I

.field private w:Landroid/support/v4/widget/ScrollerCompat;

.field private x:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private final y:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->d:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x258

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->v:I

    .line 90
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->y:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 105
    new-instance v0, Landroid/support/v7/widget/g;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/g;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Landroid/support/v7/widget/h;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/h;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 137
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->B:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 138
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->x:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->b:[I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->c:I

    .line 143
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 145
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->i:Z

    .line 150
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->w:Landroid/support/v4/widget/ScrollerCompat;

    .line 151
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionBarOverlayLayout;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->l:Z

    return v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 255
    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 257
    iget v3, v0, Landroid/support/v7/widget/j;->leftMargin:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_0

    .line 259
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/support/v7/widget/j;->leftMargin:I

    move v1, v2

    .line 261
    :cond_0
    iget v3, v0, Landroid/support/v7/widget/j;->topMargin:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_1

    .line 263
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/support/v7/widget/j;->topMargin:I

    move v1, v2

    .line 265
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/j;->rightMargin:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_2

    .line 267
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/support/v7/widget/j;->rightMargin:I

    move v1, v2

    .line 269
    :cond_2
    if-eqz p2, :cond_3

    iget v3, v0, Landroid/support/v7/widget/j;->bottomMargin:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_3

    .line 271
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/support/v7/widget/j;->bottomMargin:I

    .line 273
    :goto_0
    return v2

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->y:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 526
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    .line 527
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    .line 528
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4533
    instance-of v1, v0, Landroid/support/v7/widget/bv;

    if-eqz v1, :cond_1

    .line 4534
    check-cast v0, Landroid/support/v7/widget/bv;

    .line 528
    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    .line 530
    :cond_0
    return-void

    .line 4535
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 4536
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/bv;

    move-result-object v0

    goto :goto_0

    .line 4538
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private i()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->x:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->x:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 623
    sparse-switch p1, :sswitch_data_0

    .line 634
    :goto_0
    return-void

    .line 625
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->f()V

    goto :goto_0

    .line 628
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->g()V

    goto :goto_0

    .line 631
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 623
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/bv;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/af;)V

    .line 711
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->h()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->i()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 685
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->j()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 322
    instance-of v0, p1, Landroid/support/v7/widget/j;

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->k()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->i:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 445
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    .line 446
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 445
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->l()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 703
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 704
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->m()V

    .line 705
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 280
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 287
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 289
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 302
    :cond_1
    return v1
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->n()V

    .line 729
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 5307
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0}, Landroid/support/v7/widget/j;-><init>()V

    .line 50
    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 50
    .line 5312
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->B:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 617
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0}, Landroid/support/v7/widget/bv;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 217
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 156
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 157
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v2

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    .line 417
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    .line 419
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    .line 420
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    .line 422
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 423
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 424
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    .line 425
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 427
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 428
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 430
    iget v8, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v8, v3

    .line 431
    iget v0, v0, Landroid/support/v7/widget/j;->topMargin:I

    add-int/2addr v0, v4

    .line 433
    add-int/2addr v6, v8

    add-int/2addr v7, v0

    invoke-virtual {v5, v8, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 422
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 336
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 337
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 338
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    .line 339
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/j;->rightMargin:I

    add-int/2addr v1, v2

    .line 338
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 340
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    .line 341
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/j;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/j;->bottomMargin:I

    add-int/2addr v0, v1

    .line 340
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    .line 343
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 342
    invoke-static {v3, v0}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v9

    .line 345
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    .line 346
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move v1, v6

    .line 348
    :goto_0
    if-eqz v1, :cond_3

    .line 351
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->c:I

    .line 352
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->j:Z

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    .line 356
    iget v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->c:I

    add-int/2addr v0, v2

    .line 369
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 370
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->a:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 372
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 378
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 386
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->a(Landroid/graphics/Rect;)V

    .line 389
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 390
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 391
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    .line 392
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/j;->rightMargin:I

    add-int/2addr v1, v2

    .line 391
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 393
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    .line 394
    invoke-virtual {v2}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/j;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/j;->bottomMargin:I

    add-int/2addr v0, v2

    .line 393
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 395
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->e:Landroid/support/v7/widget/ContentFrameLayout;

    .line 396
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 395
    invoke-static {v9, v2}, Landroid/support/v7/widget/gq;->a(II)I

    move-result v2

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 403
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 407
    invoke-static {v1, p1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v2, 0x10

    .line 408
    invoke-static {v0, p2, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 406
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 410
    return-void

    :cond_2
    move v1, v3

    .line 346
    goto/16 :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    goto/16 :goto_1

    .line 375
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_5
    move v0, v3

    goto/16 :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 497
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->k:Z

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v1

    .line 1597
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->w:Landroid/support/v4/widget/ScrollerCompat;

    float-to-int v4, p3

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 1598
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->w:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    .line 1599
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_2

    move v1, v9

    .line 500
    :cond_2
    if-eqz v1, :cond_3

    .line 2592
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 2593
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    :goto_1
    iput-boolean v9, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->l:Z

    move v1, v9

    .line 506
    goto :goto_0

    .line 3587
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 3588
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->m:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->m:I

    .line 478
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->m:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 479
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->B:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 467
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->m:I

    .line 468
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 469
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    invoke-interface {v0}, Landroid/support/v7/widget/i;->l()V

    .line 472
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 458
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->k:Z

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x258

    .line 483
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->l:Z

    if-nez v0, :cond_0

    .line 484
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->m:I

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1577
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 1578
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 1583
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 222
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 224
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 225
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->n:I

    xor-int v4, v0, p1

    .line 226
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->n:I

    .line 227
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    move v3, v1

    .line 228
    :goto_0
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_5

    move v0, v1

    .line 229
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    if-eqz v5, :cond_2

    .line 233
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    if-nez v0, :cond_6

    :goto_2
    invoke-interface {v5, v1}, Landroid/support/v7/widget/i;->d(Z)V

    .line 234
    if-nez v3, :cond_1

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    invoke-interface {v0}, Landroid/support/v7/widget/i;->j()V

    .line 237
    :cond_2
    :goto_3
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_3

    .line 239
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 242
    :cond_3
    return-void

    :cond_4
    move v3, v2

    .line 227
    goto :goto_0

    :cond_5
    move v0, v2

    .line 228
    goto :goto_1

    :cond_6
    move v1, v2

    .line 233
    goto :goto_2

    .line 235
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    invoke-interface {v0}, Landroid/support/v7/widget/i;->k()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 247
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->d:I

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/i;->a(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 564
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->f:Landroid/support/v7/widget/ActionBarContainer;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 566
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroid/support/v7/widget/i;)V
    .locals 2

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->u:Landroid/support/v7/widget/i;

    iget v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->d:I

    invoke-interface {v0, v1}, Landroid/support/v7/widget/i;->a(I)V

    .line 165
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->n:I

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->n:I

    .line 167
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 168
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->j:Z

    .line 191
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->k:Z

    if-eq p1, v0, :cond_0

    .line 545
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->k:Z

    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()V

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(I)V

    .line 657
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(Landroid/graphics/drawable/Drawable;)V

    .line 663
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 668
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->b(I)V

    .line 669
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2

    .prologue
    .line 174
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->a:Z

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->i:Z

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 605
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(Landroid/view/Window$Callback;)V

    .line 606
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->h()V

    .line 611
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->g:Landroid/support/v7/widget/bv;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bv;->a(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method
