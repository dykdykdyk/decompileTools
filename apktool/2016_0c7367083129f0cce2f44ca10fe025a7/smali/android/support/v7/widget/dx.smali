.class public abstract Landroid/support/v7/widget/dx;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ex;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/dy;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5744
    new-instance v0, Landroid/support/v7/widget/dy;

    invoke-direct {v0}, Landroid/support/v7/widget/dy;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    .line 5745
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/dx;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 5877
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 5889
    .line 11015
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->a()Z

    move-result v0

    .line 5889
    if-eqz v0, :cond_0

    .line 5890
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5893
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/dx;->b:Z

    .line 5894
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6061
    return-void
.end method

.method public a(Landroid/support/v7/widget/ex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5995
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ex;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 5905
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    .line 11450
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dy;->a(I)V

    .line 6119
    return-void
.end method
