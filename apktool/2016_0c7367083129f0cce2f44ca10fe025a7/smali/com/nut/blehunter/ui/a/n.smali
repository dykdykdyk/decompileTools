.class public final Lcom/nut/blehunter/ui/a/n;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuidePagerAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/n;->a:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/nut/blehunter/ui/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public final finishUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/nut/blehunter/ui/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final startUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
