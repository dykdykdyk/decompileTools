.class public abstract Landroid/support/v7/widget/ef;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9075
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 0

    .prologue
    .line 9096
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9137
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 10948
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    .line 11113
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9139
    return-void
.end method
