.class public Lcom/nut/blehunter/ui/a/a/c;
.super Landroid/support/v7/widget/dx;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/a/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected h:Landroid/content/Context;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/nut/blehunter/ui/a/a/a/b;

.field protected k:Lcom/nut/blehunter/ui/a/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/c;->h:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/nut/blehunter/ui/a/a/c;->i:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/nut/blehunter/ui/a/a/a/b;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 33
    .line 1112
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    .line 2013
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 1112
    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/dx;->a(I)I

    move-result v0

    .line 2063
    :goto_1
    return v0

    .line 1112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2059
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 2060
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 2061
    iget-object v2, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 2063
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    goto :goto_1

    .line 2066
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ItemViewDelegate added that matches position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in data source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 17
    .line 5040
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    .line 5086
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/a/a/a/a;

    .line 5041
    invoke-interface {v0}, Lcom/nut/blehunter/ui/a/a/a/a;->a()I

    move-result v0

    .line 5042
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/c;->h:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/nut/blehunter/ui/a/a/a/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/nut/blehunter/ui/a/a/a/c;

    move-result-object v0

    .line 6067
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/a/a/c;->l:Landroid/view/View;

    .line 8067
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/a/a/c;->l:Landroid/view/View;

    .line 7063
    new-instance v2, Lcom/nut/blehunter/ui/a/a/d;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/a/a/d;-><init>(Lcom/nut/blehunter/ui/a/a/c;Lcom/nut/blehunter/ui/a/a/a/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9067
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/a/a/c;->l:Landroid/view/View;

    .line 7073
    new-instance v2, Lcom/nut/blehunter/ui/a/a/e;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/a/a/e;-><init>(Lcom/nut/blehunter/ui/a/a/c;Lcom/nut/blehunter/ui/a/a/a/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 17
    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/ui/a/a/a/a;)Lcom/nut/blehunter/ui/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/ui/a/a/a/a",
            "<TT;>;)",
            "Lcom/nut/blehunter/ui/a/a/c;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    .line 3017
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    .line 3019
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 103
    return-object p0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 4

    .prologue
    .line 17
    check-cast p1, Lcom/nut/blehunter/ui/a/a/a/c;

    .line 3087
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4053
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->j:Lcom/nut/blehunter/ui/a/a/a/b;

    invoke-virtual {p1}, Lcom/nut/blehunter/ui/a/a/a/c;->d()I

    move-result v2

    .line 4071
    iget-object v3, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    .line 4072
    if-lez v3, :cond_0

    .line 4073
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/a/b;->a:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/a/a/a/a;

    .line 4076
    invoke-interface {v0, p1, v1, v2}, Lcom/nut/blehunter/ui/a/a/a/a;->a(Lcom/nut/blehunter/ui/a/a/a/c;Ljava/lang/Object;I)V

    .line 4077
    return-void

    .line 4080
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No ItemViewDelegateManager added that matches position="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in data source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/nut/blehunter/ui/a/a/f;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/c;->k:Lcom/nut/blehunter/ui/a/a/f;

    .line 117
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    return v0
.end method
