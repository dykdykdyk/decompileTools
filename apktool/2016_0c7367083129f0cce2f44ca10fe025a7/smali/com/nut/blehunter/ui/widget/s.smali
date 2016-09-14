.class final Lcom/nut/blehunter/ui/widget/s;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/s;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;B)V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/s;-><init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/s;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/s;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/s;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    .line 1718
    iget-boolean v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v0, :cond_2

    .line 1785
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a()V

    .line 1790
    iget-boolean v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b(I)V

    .line 1792
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1790
    :cond_1
    iget-object v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 2763
    :cond_2
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a()V

    .line 2768
    iget-boolean v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/s;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    .line 3699
    iget-boolean v1, v0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v1, :cond_5

    .line 3700
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c()V

    .line 3704
    :goto_3
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate()V

    .line 3705
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->requestLayout()V

    goto :goto_0

    .line 3702
    :cond_5
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b()V

    goto :goto_3
.end method
