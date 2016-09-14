.class final Lcom/crashlytics/android/a/m;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/a/o;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/m;->b:Ljava/util/List;

    .line 23
    iput-boolean v1, p0, Lcom/crashlytics/android/a/m;->c:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    iput-boolean v1, p0, Lcom/crashlytics/android/a/m;->e:Z

    .line 31
    iput-object p1, p0, Lcom/crashlytics/android/a/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    return-void
.end method
