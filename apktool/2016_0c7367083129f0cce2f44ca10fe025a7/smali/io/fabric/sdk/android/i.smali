.class public final Lio/fabric/sdk/android/i;
.super Ljava/lang/Object;
.source "Fabric.java"


# instance fields
.field final a:Landroid/content/Context;

.field b:[Lio/fabric/sdk/android/o;

.field c:Lio/fabric/sdk/android/services/concurrency/w;

.field d:Landroid/os/Handler;

.field e:Lio/fabric/sdk/android/r;

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lio/fabric/sdk/android/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/l",
            "<",
            "Lio/fabric/sdk/android/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lio/fabric/sdk/android/i;->a:Landroid/content/Context;

    .line 96
    return-void
.end method
