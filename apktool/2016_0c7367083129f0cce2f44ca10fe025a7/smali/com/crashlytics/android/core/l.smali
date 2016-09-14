.class final Lcom/crashlytics/android/core/l;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/h;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/crashlytics/android/core/l;->a:Lcom/crashlytics/android/core/h;

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
    .line 841
    .line 1844
    iget-object v0, p0, Lcom/crashlytics/android/core/l;->a:Lcom/crashlytics/android/core/h;

    invoke-static {v0}, Lcom/crashlytics/android/core/h;->a(Lcom/crashlytics/android/core/h;)Lcom/crashlytics/android/core/y;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Lcom/crashlytics/android/core/y;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1844
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 841
    return-object v0
.end method
