.class final Lcom/crashlytics/android/core/ak;
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/crashlytics/android/core/ak;->d:Lcom/crashlytics/android/core/ab;

    iput-object p2, p0, Lcom/crashlytics/android/core/ak;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/ak;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/ak;->c:Ljava/lang/Throwable;

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
    .line 244
    .line 1247
    iget-object v0, p0, Lcom/crashlytics/android/core/ak;->d:Lcom/crashlytics/android/core/ab;

    iget-object v1, p0, Lcom/crashlytics/android/core/ak;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/ak;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/ak;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1248
    const/4 v0, 0x0

    .line 244
    return-object v0
.end method
