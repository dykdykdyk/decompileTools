.class public abstract Lio/fabric/sdk/android/o;
.super Ljava/lang/Object;
.source "Kit.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/o;",
        ">;"
    }
.end annotation


# instance fields
.field public p:Lio/fabric/sdk/android/f;

.field public q:Lio/fabric/sdk/android/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/n",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public r:Landroid/content/Context;

.field s:Lio/fabric/sdk/android/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/l",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public t:Lio/fabric/sdk/android/services/b/x;

.field final u:Lio/fabric/sdk/android/services/concurrency/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/fabric/sdk/android/n;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/n;-><init>(Lio/fabric/sdk/android/o;)V

    iput-object v0, p0, Lio/fabric/sdk/android/o;->q:Lio/fabric/sdk/android/n;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/n;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/n;

    iput-object v0, p0, Lio/fabric/sdk/android/o;->u:Lio/fabric/sdk/android/services/concurrency/n;

    .line 47
    return-void
.end method

.method private a(Lio/fabric/sdk/android/o;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Lio/fabric/sdk/android/o;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lio/fabric/sdk/android/o;->u:Lio/fabric/sdk/android/services/concurrency/n;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/concurrency/n;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 165
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0

    .line 165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lio/fabric/sdk/android/o;->u:Lio/fabric/sdk/android/services/concurrency/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final a(Landroid/content/Context;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/l;Lio/fabric/sdk/android/services/b/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/f;",
            "Lio/fabric/sdk/android/l",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/b/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p2, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/j;

    invoke-virtual {p0}, Lio/fabric/sdk/android/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lio/fabric/sdk/android/o;->s:Lio/fabric/sdk/android/l;

    .line 62
    iput-object p4, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 63
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b_()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 33
    check-cast p1, Lio/fabric/sdk/android/o;

    .line 3145
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/o;->a(Lio/fabric/sdk/android/o;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return v0

    .line 3147
    :cond_1
    invoke-direct {p1, p0}, Lio/fabric/sdk/android/o;->a(Lio/fabric/sdk/android/o;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3148
    goto :goto_0

    .line 3149
    :cond_2
    invoke-direct {p0}, Lio/fabric/sdk/android/o;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lio/fabric/sdk/android/o;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3151
    :cond_3
    invoke-direct {p0}, Lio/fabric/sdk/android/o;->e()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p1}, Lio/fabric/sdk/android/o;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 3152
    goto :goto_0

    .line 3154
    :cond_4
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method final i()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lio/fabric/sdk/android/o;->q:Lio/fabric/sdk/android/n;

    iget-object v1, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 1500
    iget-object v1, v1, Lio/fabric/sdk/android/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 69
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2042
    new-instance v3, Lio/fabric/sdk/android/services/concurrency/q;

    invoke-direct {v3, v1, v0}, Lio/fabric/sdk/android/services/concurrency/q;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/p;)V

    .line 2596
    iget v1, v0, Lio/fabric/sdk/android/services/concurrency/a;->f:I

    sget v4, Lio/fabric/sdk/android/services/concurrency/j;->a:I

    if-eq v1, v4, :cond_0

    .line 2597
    sget-object v1, Lio/fabric/sdk/android/services/concurrency/e;->a:[I

    iget v4, v0, Lio/fabric/sdk/android/services/concurrency/a;->f:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 2609
    :cond_0
    sget v1, Lio/fabric/sdk/android/services/concurrency/j;->b:I

    iput v1, v0, Lio/fabric/sdk/android/services/concurrency/a;->f:I

    .line 2611
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a;->b()V

    .line 2613
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/k;

    iput-object v2, v1, Lio/fabric/sdk/android/services/concurrency/k;->b:[Ljava/lang/Object;

    .line 2614
    iget-object v0, v0, Lio/fabric/sdk/android/services/concurrency/a;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void

    .line 2599
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2602
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".Fabric"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
