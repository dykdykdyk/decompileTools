.class final Lcom/astuetz/e;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;B)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/astuetz/e;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;II)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 463
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 470
    :cond_3
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->d(Lcom/astuetz/PagerSlidingTabStrip;I)I

    .line 438
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;F)F

    .line 439
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->i(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;II)V

    .line 441
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 442
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPageSelected(I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->e(Lcom/astuetz/PagerSlidingTabStrip;I)V

    .line 475
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/astuetz/e;->a:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 478
    :cond_0
    return-void
.end method
