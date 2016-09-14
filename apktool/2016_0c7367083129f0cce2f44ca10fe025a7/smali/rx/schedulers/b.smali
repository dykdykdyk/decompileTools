.class final Lrx/schedulers/b;
.super Lrx/n;
.source "TestScheduler.java"


# instance fields
.field final synthetic a:Lrx/schedulers/TestScheduler;

.field private final b:Lrx/f/a;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lrx/schedulers/b;->a:Lrx/schedulers/TestScheduler;

    invoke-direct {p0}, Lrx/n;-><init>()V

    .line 136
    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    iput-object v0, p0, Lrx/schedulers/b;->b:Lrx/f/a;

    .line 139
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lrx/schedulers/b;->a:Lrx/schedulers/TestScheduler;

    invoke-virtual {v0}, Lrx/schedulers/TestScheduler;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lrx/b/a;)Lrx/u;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lrx/schedulers/d;

    invoke-direct {v0, p0, p1}, Lrx/schedulers/d;-><init>(Lrx/n;Lrx/b/a;)V

    .line 168
    iget-object v1, p0, Lrx/schedulers/b;->a:Lrx/schedulers/TestScheduler;

    iget-object v1, v1, Lrx/schedulers/TestScheduler;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lrx/schedulers/c;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/c;-><init>(Lrx/schedulers/b;Lrx/schedulers/d;)V

    invoke-static {v1}, Lrx/f/f;->a(Lrx/b/a;)Lrx/u;

    move-result-object v0

    return-object v0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lrx/schedulers/b;->b:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lrx/schedulers/b;->b:Lrx/f/a;

    invoke-virtual {v0}, Lrx/f/a;->unsubscribe()V

    .line 144
    return-void
.end method
