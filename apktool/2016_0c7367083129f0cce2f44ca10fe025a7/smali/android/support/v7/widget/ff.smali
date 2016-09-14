.class final Landroid/support/v7/widget/ff;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/fd;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/fd;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Landroid/support/v7/widget/ff;->a:Landroid/support/v7/widget/fd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/fd;B)V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ff;-><init>(Landroid/support/v7/widget/fd;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/ff;->a:Landroid/support/v7/widget/fd;

    invoke-static {v0}, Landroid/support/v7/widget/fd;->a(Landroid/support/v7/widget/fd;)Landroid/support/v7/widget/ct;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ct;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/ff;->a:Landroid/support/v7/widget/fd;

    invoke-static {v0}, Landroid/support/v7/widget/fd;->a(Landroid/support/v7/widget/fd;)Landroid/support/v7/widget/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ct;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fg;

    .line 1541
    iget-object v0, v0, Landroid/support/v7/widget/fg;->a:Landroid/support/v7/a/c;

    .line 553
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 558
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 563
    if-nez p2, :cond_0

    .line 564
    iget-object v1, p0, Landroid/support/v7/widget/ff;->a:Landroid/support/v7/widget/fd;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/c;

    invoke-static {v1, v0}, Landroid/support/v7/widget/fd;->a(Landroid/support/v7/widget/fd;Landroid/support/v7/a/c;)Landroid/support/v7/widget/fg;

    move-result-object p2

    .line 568
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 566
    check-cast v0, Landroid/support/v7/widget/fg;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/a/c;

    .line 2405
    iput-object v1, v0, Landroid/support/v7/widget/fg;->a:Landroid/support/v7/a/c;

    .line 2406
    invoke-virtual {v0}, Landroid/support/v7/widget/fg;->a()V

    goto :goto_0
.end method
