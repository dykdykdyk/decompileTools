.class final Lcom/nut/blehunter/ui/ay;
.super Ljava/lang/Object;
.source "GuidePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/GuidePagerActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/GuidePagerActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nut/blehunter/ui/ay;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/ay;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/GuidePagerActivity;->b(Lcom/nut/blehunter/ui/GuidePagerActivity;I)V

    .line 86
    iget-object v0, p0, Lcom/nut/blehunter/ui/ay;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/GuidePagerActivity;->c(Lcom/nut/blehunter/ui/GuidePagerActivity;I)I

    .line 87
    iget-object v0, p0, Lcom/nut/blehunter/ui/ay;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/GuidePagerActivity;->b(Lcom/nut/blehunter/ui/GuidePagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/nut/blehunter/ui/ay;->a:Lcom/nut/blehunter/ui/GuidePagerActivity;

    const v3, 0x7f0d00bf

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/GuidePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method
