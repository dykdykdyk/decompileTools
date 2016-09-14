.class public final Lcom/crashlytics/android/core/al;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/crashlytics/android/core/ab;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/ab;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/crashlytics/android/core/al;->c:Lcom/crashlytics/android/core/ab;

    iput-wide p2, p0, Lcom/crashlytics/android/core/al;->a:J

    iput-object p4, p0, Lcom/crashlytics/android/core/al;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    .line 1302
    iget-object v0, p0, Lcom/crashlytics/android/core/al;->c:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/crashlytics/android/core/al;->c:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->b(Lcom/crashlytics/android/core/ab;)Lcom/crashlytics/android/core/az;

    move-result-object v0

    iget-wide v2, p0, Lcom/crashlytics/android/core/al;->a:J

    iget-object v1, p0, Lcom/crashlytics/android/core/al;->b:Ljava/lang/String;

    .line 2066
    iget-object v0, v0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    invoke-interface {v0, v2, v3, v1}, Lcom/crashlytics/android/core/ax;->a(JLjava/lang/String;)V

    .line 1305
    :cond_0
    const/4 v0, 0x0

    .line 299
    return-object v0
.end method
