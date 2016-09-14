.class final Landroid/support/v7/widget/a/f;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/ea;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    .line 2076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 1268
    if-nez v0, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return p2

    .line 1271
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    .line 3076
    iget v0, v0, Landroid/support/v7/widget/a/a;->t:I

    .line 1272
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1273
    iget-object v0, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    .line 4076
    iget-object v0, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 1273
    iget-object v1, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    .line 5076
    iget-object v1, v1, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 1273
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1274
    iget-object v1, p0, Landroid/support/v7/widget/a/f;->a:Landroid/support/v7/widget/a/a;

    .line 6076
    iput v0, v1, Landroid/support/v7/widget/a/a;->t:I

    .line 1276
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    .line 1277
    goto :goto_0

    .line 1279
    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
