.class final Lcom/nut/blehunter/ui/b/ad;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->getCurrentItem()I

    move-result v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/ac;->a(Lcom/nut/blehunter/ui/b/ac;)Lcom/nut/blehunter/ui/widget/LoopViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ad;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->b(Lcom/nut/blehunter/ui/b/ac;)V

    .line 107
    :cond_1
    return-void
.end method
