.class public final Landroid/support/v7/widget/en;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseIntArray;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4673
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/en;->a:Landroid/util/SparseArray;

    .line 4675
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/en;->b:Landroid/util/SparseIntArray;

    .line 4676
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/en;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 4730
    iget v0, p0, Landroid/support/v7/widget/en;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/en;->c:I

    .line 4731
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 4734
    iget v0, p0, Landroid/support/v7/widget/en;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/en;->c:I

    .line 4735
    return-void
.end method
