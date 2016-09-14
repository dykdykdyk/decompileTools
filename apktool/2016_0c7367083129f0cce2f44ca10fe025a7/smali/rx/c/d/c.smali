.class final Lrx/c/d/c;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lrx/c/d/b;


# direct methods
.method constructor <init>(Lrx/c/d/b;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget-object v1, v1, Lrx/c/d/b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    .line 117
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget v2, v2, Lrx/c/d/b;->b:I

    if-ge v1, v2, :cond_0

    .line 118
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget v2, v2, Lrx/c/d/b;->c:I

    sub-int v1, v2, v1

    .line 119
    :goto_0
    if-ge v0, v1, :cond_1

    .line 120
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget-object v2, v2, Lrx/c/d/b;->a:Ljava/util/Queue;

    iget-object v3, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    invoke-virtual {v3}, Lrx/c/d/b;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget v2, v2, Lrx/c/d/b;->c:I

    if-le v1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget v2, v2, Lrx/c/d/b;->c:I

    sub-int/2addr v1, v2

    .line 124
    :goto_1
    if-ge v0, v1, :cond_1

    .line 126
    iget-object v2, p0, Lrx/c/d/c;->a:Lrx/c/d/b;

    iget-object v2, v2, Lrx/c/d/b;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_1
    return-void
.end method
