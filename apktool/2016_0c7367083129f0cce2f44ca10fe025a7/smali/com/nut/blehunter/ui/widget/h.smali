.class final Lcom/nut/blehunter/ui/widget/h;
.super Ljava/lang/Object;
.source "LoopViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/LoopViewPager;)V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 131
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/nut/blehunter/ui/widget/h;->b:F

    .line 133
    iput v0, p0, Lcom/nut/blehunter/ui/widget/h;->c:F

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->b(Lcom/nut/blehunter/ui/widget/LoopViewPager;)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v1}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/widget/f;->a(I)I

    move-result v1

    .line 182
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/ui/widget/f;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 190
    :cond_2
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 150
    .line 151
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/widget/f;->a(I)I

    move-result v0

    .line 154
    cmpl-float v1, p2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/nut/blehunter/ui/widget/h;->b:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v1}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/f;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-virtual {v1, v0, v5}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setCurrentItem(IZ)V

    :cond_1
    move p1, v0

    .line 161
    :cond_2
    iput p2, p0, Lcom/nut/blehunter/ui/widget/h;->b:F

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v0

    .line 1085
    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/f;->a:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 163
    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 175
    :cond_3
    :goto_0
    return-void

    .line 167
    :cond_4
    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, v5, v4, v5}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v0, v0, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, v4, v5}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public final onPageSelected(I)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a(Lcom/nut/blehunter/ui/widget/LoopViewPager;)Lcom/nut/blehunter/ui/widget/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/ui/widget/f;->a(I)I

    move-result v0

    .line 139
    iget v1, p0, Lcom/nut/blehunter/ui/widget/h;->c:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 140
    int-to-float v1, v0

    iput v1, p0, Lcom/nut/blehunter/ui/widget/h;->c:F

    .line 141
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v1, v1, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/h;->a:Lcom/nut/blehunter/ui/widget/LoopViewPager;

    iget-object v1, v1, Lcom/nut/blehunter/ui/widget/LoopViewPager;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 145
    :cond_0
    return-void
.end method
