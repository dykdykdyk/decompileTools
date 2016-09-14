.class final Lcom/twitter/sdk/android/core/a/c;
.super Lcom/google/gson/TypeAdapter;
.source "SafeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/TypeAdapter;

.field final synthetic b:Lcom/google/gson/reflect/TypeToken;

.field final synthetic c:Lcom/twitter/sdk/android/core/a/b;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/a/b;Lcom/google/gson/TypeAdapter;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/twitter/sdk/android/core/a/c;->c:Lcom/twitter/sdk/android/core/a/b;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/a/c;->a:Lcom/google/gson/TypeAdapter;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/a/c;->b:Lcom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/c;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    const-class v1, Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/a/c;->b:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    if-nez v0, :cond_1

    .line 31
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/c;->a:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
