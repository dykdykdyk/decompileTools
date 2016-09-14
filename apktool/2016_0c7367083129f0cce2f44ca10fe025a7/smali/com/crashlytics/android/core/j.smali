.class final Lcom/crashlytics/android/core/j;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

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
.field final synthetic a:Lcom/crashlytics/android/core/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/h;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/crashlytics/android/core/j;->a:Lcom/crashlytics/android/core/h;

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
    .line 807
    .line 1812
    iget-object v0, p0, Lcom/crashlytics/android/core/j;->a:Lcom/crashlytics/android/core/h;

    invoke-static {v0}, Lcom/crashlytics/android/core/h;->a(Lcom/crashlytics/android/core/h;)Lcom/crashlytics/android/core/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/y;->a()Z

    .line 1813
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const/4 v0, 0x0

    .line 807
    return-object v0
.end method
