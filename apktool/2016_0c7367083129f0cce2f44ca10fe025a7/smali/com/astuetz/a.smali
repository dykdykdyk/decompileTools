.class final Lcom/astuetz/a;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    iput p2, p0, Lcom/astuetz/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/astuetz/a;->a:I

    if-eq v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->b(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/astuetz/a;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->c(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/astuetz/a;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->c(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/d;

    goto :goto_0
.end method
