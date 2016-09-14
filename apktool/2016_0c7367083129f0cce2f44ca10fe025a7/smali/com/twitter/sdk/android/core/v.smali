.class final Lcom/twitter/sdk/android/core/v;
.super Ljava/lang/Object;
.source "TwitterSession.java"

# interfaces
.implements Lio/fabric/sdk/android/services/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/d/f",
        "<",
        "Lcom/twitter/sdk/android/core/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->a:Lcom/google/gson/Gson;

    .line 76
    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/u;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 1022
    iget-object v0, p1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/c;

    .line 80
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/u;
    .locals 3

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/twitter/sdk/android/core/u;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/v;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/twitter/sdk/android/core/u;

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/v;->a(Lcom/twitter/sdk/android/core/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
