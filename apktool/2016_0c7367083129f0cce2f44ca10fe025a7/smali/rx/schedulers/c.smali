.class final Lrx/schedulers/c;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/b/a;


# instance fields
.field final synthetic a:Lrx/schedulers/d;

.field final synthetic b:Lrx/schedulers/b;


# direct methods
.method constructor <init>(Lrx/schedulers/b;Lrx/schedulers/d;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lrx/schedulers/c;->b:Lrx/schedulers/b;

    iput-object p2, p0, Lrx/schedulers/c;->a:Lrx/schedulers/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lrx/schedulers/c;->b:Lrx/schedulers/b;

    iget-object v0, v0, Lrx/schedulers/b;->a:Lrx/schedulers/TestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler;->b:Ljava/util/Queue;

    iget-object v1, p0, Lrx/schedulers/c;->a:Lrx/schedulers/d;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
