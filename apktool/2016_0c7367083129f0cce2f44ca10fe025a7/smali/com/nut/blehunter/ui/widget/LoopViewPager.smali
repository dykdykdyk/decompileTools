.class public Lcom/nut/blehunter/ui/widget/LoopViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LoopViewPager.java"


# instance fields
.field a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private b:Lcom/nut/blehunter/ui/widget/f;

.field private c:Z

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->c:Z

    .line 131
    new-instance v0, Lcom/nut/blehunter/ui/widget/h;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/widget/h;-><init>(Lcom/nut/blehunter/ui/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 119
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->c:Z

    .line 131
    new-instance v0, Lcom/nut/blehunter/ui/widget/h;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/widget/h;-><init>(Lcom/nut/blehunter/ui/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 124
    invoke-direct {p0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a()V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/widget/LoopViewPager;)I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    .line 2089
    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/f;->a:Landroid/support/v4/view/PagerAdapter;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/f;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/nut/blehunter/ui/widget/f;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/ui/widget/f;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->c:Z

    .line 2042
    iput-boolean v1, v0, Lcom/nut/blehunter/ui/widget/f;->b:Z

    .line 86
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 87
    invoke-virtual {p0, v2, v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 88
    return-void
.end method

.method public setBoundaryCaching(Z)V
    .locals 1

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->c:Z

    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b:Lcom/nut/blehunter/ui/widget/f;

    .line 1042
    iput-boolean p1, v0, Lcom/nut/blehunter/ui/widget/f;->b:Z

    .line 80
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/nut/blehunter/ui/widget/f;->b(I)I

    move-result v0

    .line 102
    invoke-super {p0, v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 103
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 115
    return-void
.end method
