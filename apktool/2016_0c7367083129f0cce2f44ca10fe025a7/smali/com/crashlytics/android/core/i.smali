.class final Lcom/crashlytics/android/core/i;
.super Lio/fabric/sdk/android/services/concurrency/s;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/s",
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
    .line 770
    iput-object p1, p0, Lcom/crashlytics/android/core/i;->a:Lcom/crashlytics/android/core/h;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 778
    sget v0, Lio/fabric/sdk/android/services/concurrency/o;->d:I

    return v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    .line 1773
    iget-object v0, p0, Lcom/crashlytics/android/core/i;->a:Lcom/crashlytics/android/core/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/h;->e()Ljava/lang/Void;

    move-result-object v0

    .line 770
    return-object v0
.end method
