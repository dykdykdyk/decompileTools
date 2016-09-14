.class public final Lrx/c/d/v;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/u;


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lrx/u;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lrx/u;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 42
    iget-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lrx/u;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lrx/u;)V
    .locals 1

    .prologue
    .line 59
    invoke-interface {p1}, Lrx/u;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-boolean v0, p0, Lrx/c/d/v;->b:Z

    if-nez v0, :cond_3

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lrx/c/d/v;->b:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    iput-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 70
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit p0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_3
    invoke-interface {p1}, Lrx/u;->unsubscribe()V

    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lrx/c/d/v;->b:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lrx/c/d/v;->b:Z

    if-nez v0, :cond_0

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lrx/c/d/v;->b:Z

    if-eqz v0, :cond_1

    .line 106
    monitor-exit p0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/d/v;->b:Z

    .line 109
    iget-object v0, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/c/d/v;->a:Ljava/util/LinkedList;

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    if-eqz v0, :cond_0

    .line 1122
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/u;

    .line 1124
    :try_start_1
    invoke-interface {v0}, Lrx/u;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1125
    :catch_0
    move-exception v3

    .line 1126
    if-nez v1, :cond_3

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1131
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1132
    :cond_2
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
