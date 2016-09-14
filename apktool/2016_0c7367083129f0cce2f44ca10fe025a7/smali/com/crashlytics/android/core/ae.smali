.class final Lcom/crashlytics/android/core/ae;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 443
    .line 1446
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 1452
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->d(Lcom/crashlytics/android/core/ab;)Lcom/crashlytics/android/core/h;

    move-result-object v1

    .line 1862
    const/4 v0, 0x0

    .line 1863
    iget-object v2, v1, Lcom/crashlytics/android/core/h;->o:Lcom/crashlytics/android/core/a/a;

    if-eqz v2, :cond_1

    .line 1864
    iget-object v0, v1, Lcom/crashlytics/android/core/h;->o:Lcom/crashlytics/android/core/a/a;

    invoke-interface {v0}, Lcom/crashlytics/android/core/a/a;->a()Lcom/crashlytics/android/core/a/a/d;

    move-result-object v0

    .line 1454
    :cond_1
    if-eqz v0, :cond_2

    .line 1455
    iget-object v1, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Lcom/crashlytics/android/core/a/a/d;)V

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->e(Lcom/crashlytics/android/core/ab;)V

    .line 1458
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method
