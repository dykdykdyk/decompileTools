.class public final Landroid/support/v7/widget/fq;
.super Landroid/support/v7/widget/ei;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:Landroid/support/v7/widget/ft;

.field public b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2304
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ei;-><init>(II)V

    .line 2305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ei;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2301
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2312
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ei;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2313
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 2308
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ei;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2309
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    if-nez v0, :cond_0

    .line 2349
    const/4 v0, -0x1

    .line 2351
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v0, v0, Landroid/support/v7/widget/ft;->e:I

    goto :goto_0
.end method
