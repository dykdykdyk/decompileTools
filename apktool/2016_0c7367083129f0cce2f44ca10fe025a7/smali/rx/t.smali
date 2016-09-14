.class public abstract Lrx/t;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/k;
.implements Lrx/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/k",
        "<TT;>;",
        "Lrx/u;"
    }
.end annotation


# static fields
.field private static final NOT_SET:J = -0x8000000000000000L


# instance fields
.field private producer:Lrx/l;

.field private requested:J

.field private final subscriber:Lrx/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/t",
            "<*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lrx/c/d/v;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/t;-><init>(Lrx/t;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lrx/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/t;-><init>(Lrx/t;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lrx/t;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/t;->requested:J

    .line 80
    iput-object p1, p0, Lrx/t;->subscriber:Lrx/t;

    .line 81
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lrx/t;->subscriptions:Lrx/c/d/v;

    :goto_0
    iput-object v0, p0, Lrx/t;->subscriptions:Lrx/c/d/v;

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Lrx/c/d/v;

    invoke-direct {v0}, Lrx/c/d/v;-><init>()V

    goto :goto_0
.end method

.method private addToRequested(J)V
    .locals 5

    .prologue
    .line 161
    iget-wide v0, p0, Lrx/t;->requested:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 162
    iput-wide p1, p0, Lrx/t;->requested:J

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-wide v0, p0, Lrx/t;->requested:J

    add-long/2addr v0, p1

    .line 166
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 167
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/t;->requested:J

    goto :goto_0

    .line 169
    :cond_1
    iput-wide v0, p0, Lrx/t;->requested:J

    goto :goto_0
.end method


# virtual methods
.method public final add(Lrx/u;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lrx/t;->subscriptions:Lrx/c/d/v;

    invoke-virtual {v0, p1}, Lrx/c/d/v;->a(Lrx/u;)V

    .line 94
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lrx/t;->subscriptions:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final request(J)V
    .locals 3

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number requested cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lrx/t;->producer:Lrx/l;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lrx/t;->producer:Lrx/l;

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Lrx/l;->request(J)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lrx/t;->addToRequested(J)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setProducer(Lrx/l;)V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 191
    const/4 v0, 0x0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v2, p0, Lrx/t;->requested:J

    .line 194
    iput-object p1, p0, Lrx/t;->producer:Lrx/l;

    .line 195
    iget-object v1, p0, Lrx/t;->subscriber:Lrx/t;

    if-eqz v1, :cond_0

    .line 197
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lrx/t;->subscriber:Lrx/t;

    iget-object v1, p0, Lrx/t;->producer:Lrx/l;

    invoke-virtual {v0, v1}, Lrx/t;->setProducer(Lrx/l;)V

    .line 214
    :goto_0
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    :cond_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lrx/t;->producer:Lrx/l;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/l;->request(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lrx/t;->producer:Lrx/l;

    invoke-interface {v0, v2, v3}, Lrx/l;->request(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lrx/t;->subscriptions:Lrx/c/d/v;

    invoke-virtual {v0}, Lrx/c/d/v;->unsubscribe()V

    .line 99
    return-void
.end method
