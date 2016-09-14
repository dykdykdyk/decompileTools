.class public final Landroid/support/v7/widget/ed;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11551
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/ed;
    .locals 2

    .prologue
    .line 11561
    .line 12576
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 12577
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ed;->a:I

    .line 12578
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ed;->b:I

    .line 12579
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ed;->c:I

    .line 12580
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ed;->d:I

    .line 11561
    return-object p0
.end method
