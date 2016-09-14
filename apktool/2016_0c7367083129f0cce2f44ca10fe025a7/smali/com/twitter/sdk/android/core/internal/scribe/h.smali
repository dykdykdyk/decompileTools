.class public final Lcom/twitter/sdk/android/core/internal/scribe/h;
.super Ljava/lang/Object;
.source "ScribeEvent.java"

# interfaces
.implements Lio/fabric/sdk/android/services/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/c/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Lcom/google/gson/Gson;

    .line 97
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/g;

    .line 1101
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    return-object v0
.end method
