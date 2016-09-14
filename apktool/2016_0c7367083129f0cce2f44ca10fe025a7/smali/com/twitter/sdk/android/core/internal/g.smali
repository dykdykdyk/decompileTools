.class public final Lcom/twitter/sdk/android/core/internal/g;
.super Ljava/lang/Object;
.source "TwitterRequestHeaders.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field public final e:Lcom/twitter/sdk/android/core/l;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/l;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/g;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/g;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/g;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 28
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/l;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/g;->f:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/g;->c:Ljava/util/Map;

    .line 31
    return-void
.end method
