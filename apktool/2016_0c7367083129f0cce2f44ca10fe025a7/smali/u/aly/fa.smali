.class public final Lu/aly/fa;
.super Ljava/lang/Object;
.source "UMCCSystemBufferManager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ei;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/fa;->a:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lu/aly/fa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    return-void
.end method
