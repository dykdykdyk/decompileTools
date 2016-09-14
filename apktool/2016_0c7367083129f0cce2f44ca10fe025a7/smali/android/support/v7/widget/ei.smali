.class public Landroid/support/v7/widget/ei;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# instance fields
.field c:Landroid/support/v7/widget/ex;

.field final d:Landroid/graphics/Rect;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 9876
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 9864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 9865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->e:Z

    .line 9869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->f:Z

    .line 9877
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 9872
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 9865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->e:Z

    .line 9869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->f:Z

    .line 9873
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ei;)V
    .locals 1

    .prologue
    .line 9888
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 9865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->e:Z

    .line 9869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->f:Z

    .line 9889
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 9884
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 9865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->e:Z

    .line 9869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->f:Z

    .line 9885
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 9880
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 9864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ei;->d:Landroid/graphics/Rect;

    .line 9865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->e:Z

    .line 9869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ei;->f:Z

    .line 9881
    return-void
.end method
