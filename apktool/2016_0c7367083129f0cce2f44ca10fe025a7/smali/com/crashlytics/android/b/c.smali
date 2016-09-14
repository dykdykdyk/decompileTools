.class final Lcom/crashlytics/android/b/c;
.super Lio/fabric/sdk/android/d;
.source "ActivityLifecycleCheckForUpdatesController.java"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/b/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/b/b;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/crashlytics/android/b/c;->a:Lcom/crashlytics/android/b/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/crashlytics/android/b/c;->a:Lcom/crashlytics/android/b/b;

    .line 1100
    iget-object v1, v0, Lcom/crashlytics/android/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1101
    iget-object v0, v0, Lcom/crashlytics/android/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/crashlytics/android/b/c;->a:Lcom/crashlytics/android/b/b;

    .line 2016
    iget-object v0, v0, Lcom/crashlytics/android/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 24
    new-instance v1, Lcom/crashlytics/android/b/d;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/b/d;-><init>(Lcom/crashlytics/android/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 31
    :cond_0
    return-void
.end method
