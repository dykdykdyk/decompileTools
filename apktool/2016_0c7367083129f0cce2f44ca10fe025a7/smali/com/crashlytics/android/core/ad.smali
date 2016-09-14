.class final Lcom/crashlytics/android/core/ad;
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
.field final synthetic a:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/crashlytics/android/core/ad;->a:Lcom/crashlytics/android/core/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 376
    .line 1379
    iget-object v0, p0, Lcom/crashlytics/android/core/ad;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->c(Lcom/crashlytics/android/core/ab;)V

    .line 1380
    const/4 v0, 0x0

    .line 376
    return-object v0
.end method
