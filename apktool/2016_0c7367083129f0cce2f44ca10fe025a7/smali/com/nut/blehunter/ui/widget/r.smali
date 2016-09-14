.class public final Lcom/nut/blehunter/ui/widget/r;
.super Landroid/support/v7/widget/a/g;
.source "SimpleItemTouchHelperCallback.java"


# instance fields
.field private final a:Lcom/nut/blehunter/ui/widget/d;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/widget/d;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/a/g;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/r;->a:Lcom/nut/blehunter/ui/widget/d;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x30

    .line 58
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 61
    instance-of v4, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_0

    .line 62
    const/16 v2, 0xf

    move v0, v1

    .line 10489
    :goto_0
    or-int v1, v0, v2

    .line 10505
    shl-int/lit8 v1, v1, 0x0

    .line 11505
    shl-int/lit8 v0, v0, 0x8

    .line 10490
    or-int/2addr v0, v1

    .line 12505
    shl-int/lit8 v1, v2, 0x10

    .line 10490
    or-int/2addr v0, v1

    .line 76
    return v0

    .line 64
    :cond_0
    instance-of v4, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_2

    .line 65
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 10318
    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 65
    if-nez v0, :cond_1

    move v0, v1

    .line 67
    goto :goto_0

    :cond_1
    move v0, v2

    move v2, v3

    .line 70
    goto :goto_0

    :cond_2
    move v0, v2

    move v2, v3

    .line 74
    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFIZ)V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 101
    iget-object v1, p3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object v0, p3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFIZ)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V

    .line 126
    iget-object v0, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    instance-of v0, p2, Lcom/nut/blehunter/ui/widget/e;

    if-eqz v0, :cond_0

    .line 130
    check-cast p2, Lcom/nut/blehunter/ui/widget/e;

    .line 131
    invoke-interface {p2}, Lcom/nut/blehunter/ui/widget/e;->u()V

    .line 133
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/r;->a:Lcom/nut/blehunter/ui/widget/d;

    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/widget/d;->d(I)V

    .line 94
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 1

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    instance-of v0, p1, Lcom/nut/blehunter/ui/widget/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/nut/blehunter/ui/widget/e;

    .line 115
    invoke-interface {v0}, Lcom/nut/blehunter/ui/widget/e;->t()V

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ex;I)V

    .line 120
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;)Z
    .locals 3

    .prologue
    .line 81
    .line 12575
    iget v0, p1, Landroid/support/v7/widget/ex;->e:I

    .line 13575
    iget v1, p2, Landroid/support/v7/widget/ex;->e:I

    .line 81
    if-eq v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/r;->a:Lcom/nut/blehunter/ui/widget/d;

    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->d()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/ex;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/ui/widget/d;->a(II)Z

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
