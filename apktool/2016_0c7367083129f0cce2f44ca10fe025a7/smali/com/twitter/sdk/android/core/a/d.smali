.class public final Lcom/twitter/sdk/android/core/a/d;
.super Ljava/lang/Object;
.source "SafeMapAdapter.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/twitter/sdk/android/core/a/e;

    invoke-direct {v1, p0, v0, p2}, Lcom/twitter/sdk/android/core/a/e;-><init>(Lcom/twitter/sdk/android/core/a/d;Lcom/google/gson/TypeAdapter;Lcom/google/gson/reflect/TypeToken;)V

    return-object v1
.end method
